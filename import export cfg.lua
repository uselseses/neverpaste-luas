---@diagnostic disable: undefined-global

local clipboard = { } do
    local char_array = ffi.typeof 'char[?]'

    local native_GetClipboardTextCount = utils.get_vfunc('vgui2.dll', 'VGUI_System010', 7, 'int(__thiscall*)(void*)')
    local native_SetClipboardText = utils.get_vfunc('vgui2.dll', 'VGUI_System010', 9, 'void(__thiscall*)(void*, const char*, int)')
    local native_GetClipboardText = utils.get_vfunc('vgui2.dll', 'VGUI_System010', 11, 'int(__thiscall*)(void*, int, const char*, int)')

    local function get()
    	local len = native_GetClipboardTextCount()

    	if len > 0 then
    		local char_arr = char_array(len)

    		native_GetClipboardText(0, char_arr, len)
    		return ffi.string(char_arr, len - 1)
    	end
    end

    local function set(...)
    	local text = tostring(table.concat({ ... }))

    	native_SetClipboardText(text, string.len(text))
    end

    clipboard.get = get
    clipboard.set = set
end

local base64 = { } do
    local shl, shr, band = bit.lshift, bit.rshift, bit.band
    local char, byte, gsub, sub, format, concat, tostring, error, pairs = string.char, string.byte, string.gsub, string.sub, string.format, table.concat, tostring, error, pairs

    local extract = function(v, from, width)
    	return band(shr(v, from), shl(1, width) - 1)
    end

    local function makeencoder(alphabet)
    	local encoder, decoder = {}, {}
    	for i=1, 65 do
    		local chr = byte(sub(alphabet, i, i)) or 32 -- or ' '
    		if decoder[chr] ~= nil then
    			error('invalid alphabet: duplicate character ' .. tostring(chr), 3)
    		end
    		encoder[i-1] = chr
    		decoder[chr] = i-1
    	end
    	return encoder, decoder
    end

    local encoders, decoders = {}, {}

    encoders['base64'], decoders['base64'] = makeencoder('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=')
    encoders['base64url'], decoders['base64url'] = makeencoder('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_')

    local alphabet_mt = {
    	__index = function(tbl, key)
    		if type(key) == 'string' and key:len() == 64 or key:len() == 65 then
    			-- if key is a valid looking base64 alphabet, try to make an encoder/decoder pair from it
    			encoders[key], decoders[key] = makeencoder(key)
    			return tbl[key]
    		end
    	end
    }

    setmetatable(encoders, alphabet_mt)
    setmetatable(decoders, alphabet_mt)

    local function encode(str, encoder)
    	encoder = encoders[encoder or 'base64'] or error('invalid alphabet specified', 2)

    	str = tostring(str)

    	local t, k, n = {}, 1, #str
    	local lastn = n % 3
    	local cache = {}

    	for i = 1, n-lastn, 3 do
    		local a, b, c = byte(str, i, i+2)
    		local v = a*0x10000 + b*0x100 + c
    		local s = cache[v]

    		if not s then
    			s = char(encoder[extract(v,18,6)], encoder[extract(v,12,6)], encoder[extract(v,6,6)], encoder[extract(v,0,6)])
    			cache[v] = s
    		end

    		t[k] = s
    		k = k + 1
    	end

    	if lastn == 2 then
    		local a, b = byte(str, n-1, n)
    		local v = a*0x10000 + b*0x100
    		t[k] = char(encoder[extract(v,18,6)], encoder[extract(v,12,6)], encoder[extract(v,6,6)], encoder[64])
    	elseif lastn == 1 then
    		local v = byte(str, n)*0x10000
    		t[k] = char(encoder[extract(v,18,6)], encoder[extract(v,12,6)], encoder[64], encoder[64])
    	end

    	return concat(t)
    end

    local function decode(b64, decoder)
    	decoder = decoders[decoder or 'base64'] or error('invalid alphabet specified', 2)

    	local pattern = '[^%w%+%/%=]'
    	if decoder then
    		local s62, s63
    		for charcode, b64code in pairs(decoder) do
    			if b64code == 62 then s62 = charcode
    			elseif b64code == 63 then s63 = charcode
    			end
    		end
    		pattern = format('[^%%w%%%s%%%s%%=]', char(s62), char(s63))
    	end

    	b64 = gsub(tostring(b64), pattern, '')

    	local cache = {}
    	local t, k = {}, 1
    	local n = #b64
    	local padding = sub(b64, -2) == '==' and 2 or sub(b64, -1) == '=' and 1 or 0

    	for i = 1, padding > 0 and n-4 or n, 4 do
    		local a, b, c, d = byte(b64, i, i+3)

    		local v0 = a*0x1000000 + b*0x10000 + c*0x100 + d
    		local s = cache[v0]
    		if not s then
    			local v = decoder[a]*0x40000 + decoder[b]*0x1000 + decoder[c]*0x40 + decoder[d]
    			s = char(extract(v,16,8), extract(v,8,8), extract(v,0,8))
    			cache[v0] = s
    		end

    		t[k] = s
    		k = k + 1
    	end

    	if padding == 1 then
    		local a, b, c = byte(b64, n-3, n-1)
    		local v = decoder[a]*0x40000 + decoder[b]*0x1000 + decoder[c]*0x40
    		t[k] = char(extract(v,16,8), extract(v,8,8))
    	elseif padding == 2 then
    		local a, b = byte(b64, n-3, n-2)
    		local v = decoder[a]*0x40000 + decoder[b]*0x1000
    		t[k] = char(extract(v,16,8))
    	end
    	return concat(t)
    end

    base64.encode = encode
    base64.decode = decode
end

local file = { } do
    ffi.cdef[[
        typedef unsigned long DWORD;
        typedef int BOOL;
        typedef const char* LPCSTR;
        typedef void* HANDLE;
    ]]

        pcall(function() -- for some reason this is gay
        ffi.cdef[[
            typedef struct _WIN32_FIND_DATAA {
                DWORD dwFileAttributes;
                unsigned long ftCreationTime[2];
                unsigned long ftLastAccessTime[2];
                unsigned long ftLastWriteTime[2];
                DWORD nFileSizeHigh;
                DWORD nFileSizeLow;
                DWORD dwReserved0;
                DWORD dwReserved1;
                char  cFileName[260];
                char  cAlternateFileName[14];
            } WIN32_FIND_DATAA;
        ]]
    end)

    local INVALID_HANDLE_VALUE = ffi.cast("void*", -1)
    local INVALID_FILE_ATTRIBUTES = 0xFFFFFFFF
    local GENERIC_READ  = 0x80000000
    local GENERIC_WRITE = 0x40000000
    local CREATE_ALWAYS = 2
    local OPEN_EXISTING = 3
    local FILE_ATTRIBUTE_DIRECTORY = 0x10
    local FILE_ATTRIBUTE_NORMAL = 0x80

    ffi.cdef[[
        HANDLE FindFirstFileA(LPCSTR lpFileName, struct _WIN32_FIND_DATAA* lpFindFileData);
        BOOL FindNextFileA(HANDLE hFindFile, struct _WIN32_FIND_DATAA* lpFindFileData);
        BOOL FindClose(HANDLE hFindFile);
        DWORD GetFileAttributesA(LPCSTR lpFileName);
        BOOL CreateDirectoryA(LPCSTR lpPathName, void* lpSecurityAttributes);
        HANDLE CreateFileA(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode,void* lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);
        BOOL WriteFile(HANDLE hFile, const void* lpBuffer, DWORD nNumberOfBytesToWrite, DWORD* lpNumberOfBytesWritten, void* lpOverlapped);
        BOOL ReadFile(HANDLE hFile, void* lpBuffer, DWORD nNumberOfBytesToRead, DWORD* lpNumberOfBytesRead, void* lpOverlapped);
        BOOL CloseHandle(HANDLE hObject);
        BOOL DeleteFileA(LPCSTR lpFileName);
    ]]

    local function write(path, data)
        local handle = ffi.C.CreateFileA(path, GENERIC_WRITE, 0, nil, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, nil)
        if handle == INVALID_HANDLE_VALUE then error(string.format('Failed to open file @ %s', path)) end

        local bytes_written = ffi.new("DWORD[1]")
        ffi.C.WriteFile(handle, data, #data, bytes_written, nil)
        ffi.C.CloseHandle(handle)
        return true
    end

    local function read(path)
        local handle = ffi.C.CreateFileA(path, GENERIC_READ, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nil)
        if handle == INVALID_HANDLE_VALUE then error(string.format('File not found @ %s', path)) end

        local attr = ffi.C.GetFileAttributesA(path)
        if attr == INVALID_FILE_ATTRIBUTES then
            ffi.C.CloseHandle(handle)
            error(string.format('Failed to get filesize of file @ %s', path))
        end

        local buffer = ffi.new("char[?]", 65536)
        local bytes_read = ffi.new("DWORD[1]")
        local content = {}

        while ffi.C.ReadFile(handle, buffer, 65536, bytes_read, nil) ~= 0 and bytes_read[0] > 0 do
            table.insert(content, ffi.string(buffer, bytes_read[0]))
        end

        ffi.C.CloseHandle(handle)
        return table.concat(content)
    end

    local function exists(path)
        local attr = ffi.C.GetFileAttributesA(path)
        if (attr == INVALID_FILE_ATTRIBUTES) then
            return false
        end

        return true
    end

    local function create_folder(path)
        local ok = ffi.C.CreateDirectoryA(path, nil)
        if ok == 0 then
            error(string.format('CreateDirectoryA @ %s', path))
        end
    end

    local function list(folder)
        local pattern = folder .. "\\*"
        local find_data = ffi.new("WIN32_FIND_DATAA[1]")
        local handle = ffi.C.FindFirstFileA(pattern, find_data)
        local files = {}

        if handle == INVALID_HANDLE_VALUE then
            error(string.format('file.list - INVALID_HANDLE_VALUE [folder not found: %s]', folder))
        end

        repeat
            local name = ffi.string(find_data[0].cFileName)
            local attr = find_data[0].dwFileAttributes

            if name ~= "." and name ~= ".." then
                if bit.band(attr, FILE_ATTRIBUTE_DIRECTORY) == 0 then
                    table.insert(files, name)
                end
            end
        until ffi.C.FindNextFileA(handle, find_data) == 0

        ffi.C.FindClose(handle)
        return files
    end

    local function delete(path)
        if not exists(path) then return end

        local attr = ffi.C.GetFileAttributesA(path)
        if attr == INVALID_FILE_ATTRIBUTES then
            error(string.format('file.delete - INVALID_FILE_ATTRIBUTES [file: %s]', path))
        end

        if bit.band(attr, FILE_ATTRIBUTE_DIRECTORY) ~= 0 then
            return
        end

        local ok
        ok = ffi.C.DeleteFileA(path)
        if ok == 0 then
            error(string.format('file.delete - DeleteFileA [file: %s]', path))
        end
    end

    file.write = write
    file.read = read
    file.exists = exists
    file.create_folder = create_folder
    file.list = list
    file.delete = delete

    file.MASTER_PATH = '.\\nl\\configs'

    if not exists(file.MASTER_PATH) then
        create_folder(file.MASTER_PATH)
    end
end

local tabs = {
    ['Ragebot'] = ui.find("Aimbot", "Ragebot"),
    ['Anti Aim'] = ui.find("Aimbot", "Anti Aim"),
    ['Legitbot'] = ui.find("Aimbot", "Legitbot"),
    ['Players'] = ui.find("Visuals", "Players"),
    ['World'] = ui.find("Visuals", "World"),
    ['Inventory'] = ui.find("Visuals", "Inventory"),
    ['Main'] = ui.find("Miscellaneous", "Main"),
}

local funny = {
    'Ragebot',
    'Anti Aim',
    'Legitbot',
    'Players',
    'World',
    'Inventory',
    'Main'
}

local helpers = { } do
    helpers.merge = function(...)
        local str = ''

        for i = 1, select('#', ...) do
            str = str .. select(i, ...)
        end

        return str
    end

    helpers.sanitize = function(str)
        if not str then return "" end
        str = str:gsub("[^%w_%-% ]", "")
        return str
    end
end

local decorations = { } do
    decorations.string = { }

    decorations.string.capital = function(str)
        return helpers.merge(str:sub(1,1):upper(), str:sub(2))
    end
end

local menu = new_class()

:struct 'groups' {
    main = (function ()
        return {
            config = ui.create('\n', '\nConfigs'),
            tab_selector = ui.create('\n', '\nTab Selector')
        }
    end)()
}

:struct 'elements' { }

menu.elements.create = (function (self)
    self.config = {
        name = self.groups.main.config:input('\nNAME'),
        configs_list = self.groups.main.config:list('##CONFIGS', file.list(file.MASTER_PATH)),
        actions = (function ()
            local actions = { }

            actions.delete = self.groups.main.config:button(helpers.merge('\aE74C3CFF', ui.get_icon 'trash-xmark'), function() end, true)
            actions.create = self.groups.main.config:button(helpers.merge('\a2ECC71FF', ui.get_icon 'circle-plus'), function() end, true)

            actions.load = self.groups.main.config:button(helpers.merge('\a2980B9FF', ui.get_icon 'file-check'), function() end, true)
            actions.save = self.groups.main.config:button(helpers.merge('\a8E44ADFF', ui.get_icon 'floppy-disk'), function() end, true)

            return actions
        end)()
    }

    self.tabs = {
        tab_list = self.groups.main.tab_selector:listable('\nTabs', {'Ragebot', 'Anti Aim', 'Legitbot', 'Players', 'World', 'Inventory', 'Main'}),

        actions = (function ()
            local actions = { }

            actions.import = self.groups.main.tab_selector:button(helpers.merge('\a2980B9FF', ui.get_icon 'file-import'), function() end, true)
            actions.export = self.groups.main.tab_selector:button(helpers.merge('\a2980B9FF', ui.get_icon 'file-export'), function() end, true)

            return actions
        end)()
    }

    for element_name, element in pairs(self.config.actions) do
        element:tooltip(string.format('%s Preset', decorations.string.capital(element_name)))
    end
end)(menu.elements)

local config_system do
    local empty_cfg = base64.encode(json.stringify({}))
    local cfg_list = menu.elements.config.configs_list

    cfg_list:set_callback(function (self)
        self:update(file.list(file.MASTER_PATH))
        menu.elements.config.name:set(self:list()[self:get()] or '')
    end, true)

    menu.elements.config.name:set_callback(function(self)
        menu.elements.config.name:set(helpers.sanitize(self:get()))
    end)

    menu.elements.config.actions.delete:set_callback(function ()
        if menu.elements.config.name:get() ~= '' then
            file.delete(string.format("%s\\%s", file.MASTER_PATH, helpers.sanitize(menu.elements.config.name:get())))
        end

        cfg_list:update(file.list(file.MASTER_PATH))
        menu.elements.config.name:set(cfg_list:list()[cfg_list:get()] or '')
    end)

    menu.elements.config.actions.create:set_callback(function ()
        if menu.elements.config.name:get() ~= '' and not file.exists(string.format("%s\\%s", file.MASTER_PATH, helpers.sanitize(menu.elements.config.name:get()))) then
            file.write(string.format("%s\\%s", file.MASTER_PATH, helpers.sanitize(menu.elements.config.name:get())), empty_cfg)
        end

        cfg_list:update(file.list(file.MASTER_PATH))
        menu.elements.config.name:set(cfg_list:list()[cfg_list:get()] or '')
    end)

    menu.elements.config.actions.load:set_callback(function ()
        local cfg
        if menu.elements.config.name:get() ~= '' then
            cfg = file.read(string.format("%s\\%s", file.MASTER_PATH, helpers.sanitize(menu.elements.config.name:get())))
        end

        local data = json.parse(base64.decode(cfg))
        for k, v in pairs(data) do
            local tab = tabs[k]
            tab:import(v)
        end
    end)

    menu.elements.config.actions.save:set_callback(function ()
        local data = {}

        for _, v in pairs(funny) do
            data[v] = tabs[v]:export()
        end

        if menu.elements.config.name:get() ~= '' then
            file.write(string.format("%s\\%s", file.MASTER_PATH, helpers.sanitize(menu.elements.config.name:get())), base64.encode(json.stringify(data)))
        end
    end)

    menu.elements.tabs.actions.import:set_callback(function ()
        local cfg
        if menu.elements.config.name:get() ~= '' then
            cfg = clipboard.get()
        end

        local data = json.parse(base64.decode(cfg))

        for k, v in pairs(data) do
            local elements = tabs[k]
            for i = 1, #funny do
                if funny[menu.elements.tabs.tab_list:get()[i]] == k then
                    elements:import(v)
                end
            end
        end
    end)

    menu.elements.tabs.actions.export:set_callback(function ()
        local data = {}

        for i = 1, #funny do
            local selected_tabs = funny[menu.elements.tabs.tab_list:get()[i]]
            data[selected_tabs] = tabs[selected_tabs]:export()
        end

        clipboard.set(base64.encode(json.stringify(data)))
    end)
end

ui.sidebar('\a{Link Active}Configs', 'gear')