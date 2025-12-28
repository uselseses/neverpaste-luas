_DEBUG = true

local anonteam_0_0 = {
	jmp_ecx = utils.opcode_scan("engine.dll", "FF E1")
}

anonteam_0_0.fnGetModuleHandle = ffi.cast("uint32_t(__fastcall*)(unsigned int, unsigned int, const char*)", anonteam_0_0.jmp_ecx)
anonteam_0_0.fnGetProcAddress = ffi.cast("uint32_t(__fastcall*)(unsigned int, unsigned int, uint32_t, const char*)", anonteam_0_0.jmp_ecx)
anonteam_0_0.pGetProcAddress = ffi.cast("uint32_t**", ffi.cast("uint32_t", utils.opcode_scan("engine.dll", "FF 15 ? ? ? ? A3 ? ? ? ? EB 05")) + 2)[0][0]
anonteam_0_0.pGetModuleHandle = ffi.cast("uint32_t**", ffi.cast("uint32_t", utils.opcode_scan("engine.dll", "FF 15 ? ? ? ? 85 C0 74 0B")) + 2)[0][0]

function anonteam_0_0.BindExports(arg_1_0, arg_1_1, arg_1_2)
	local anonteam_1_0 = ffi.typeof(arg_1_2)

	return function(...)
		return ffi.cast(anonteam_1_0, anonteam_0_0.jmp_ecx)(anonteam_0_0.fnGetProcAddress(anonteam_0_0.pGetProcAddress, 0, anonteam_0_0.fnGetModuleHandle(anonteam_0_0.pGetModuleHandle, 0, arg_1_0), arg_1_1), 0, ...)
	end
end

anonteam_0_0.fnEnumDisplaySettingsA = anonteam_0_0.BindExports("user32.dll", "EnumDisplaySettingsA", "int(__fastcall*)(unsigned int, unsigned int, unsigned int, unsigned long, void*)")
anonteam_0_0.pLpDevMode = ffi.new("struct { char pad_0[120]; unsigned long dmDisplayFrequency; char pad_2[32]; }[1]")

anonteam_0_0.fnEnumDisplaySettingsA(0, 4294967295, anonteam_0_0.pLpDevMode[0])
ffi.cdef("    typedef struct {\n        float x;\n        float y;\n        float z;\n    } vec3_struct;\n\n    typedef void*(__thiscall* c_entity_list_get_client_entity_t)(void*, int);\n    typedef void*(__thiscall* c_entity_list_get_client_entity_from_handle_t)(void*, uintptr_t);\n\n    typedef int(__thiscall* c_weapon_get_muzzle_attachment_index_first_person_t)(void*, void*);\n    typedef bool(__thiscall* c_entity_get_attachment_t)(void*, int, vec3_struct*);\n")

local anonteam_0_1 = {
	data = {},
	names = {}
}
local anonteam_0_2 = {
	data = {}
}
local anonteam_0_3 = {
	data = {}
}
local anonteam_0_4 = {}
local anonteam_0_5 = {}
local anonteam_0_6 = {}
local anonteam_0_7 = {}
local anonteam_0_8 = {}
local anonteam_0_9 = {}
local anonteam_0_10 = {}
local anonteam_0_11 = {}
local anonteam_0_12 = {
	to_call = {
		"base64",
		"clipboard",
		"images",
		"gradient"
	},
	call = function(arg_3_0)
		for iter_3_0, iter_3_1 in ipairs(arg_3_0.to_call) do
			local anonteam_3_0, anonteam_3_1 = pcall(require, "neverlose/" .. iter_3_1)

			if not anonteam_3_0 then
				return error("error calling " .. iter_3_1 .. "lib")
			end

			arg_3_0[iter_3_1] = anonteam_3_1 or nil
		end
	end
}

anonteam_0_12:call()

local anonteam_0_13 = json.parse
local anonteam_0_14 = json.stringify
local anonteam_0_15 = {
	parse = function(arg_4_0)
		local anonteam_4_0, anonteam_4_1 = pcall(anonteam_0_13, arg_4_0)

		if anonteam_4_0 == false then
			print("error json.parse")

			return nil
		end

		return anonteam_4_1
	end,
	stringify = function(arg_5_0)
		return anonteam_0_14(arg_5_0)
	end
}
local anonteam_0_16 = {
	data = {}
}

function anonteam_0_16.update_data(arg_6_0, arg_6_1)
	if arg_6_0 and anonteam_0_16.data[arg_6_0] == nil then
		anonteam_0_16.data[arg_6_0] = {
			alpha = 0,
			weapon_names = {}
		}
	end

	if arg_6_0 and arg_6_1 then
		table.insert(anonteam_0_16.data[arg_6_0].weapon_names, arg_6_1)
	end

	if arg_6_0 == nil and arg_6_1 == nil then
		anonteam_0_16.data = {}
	end
end

events.round_end:set(function(arg_7_0)
	anonteam_0_16.update_data()
end)
events.round_start:set(function(arg_8_0)
	anonteam_0_16.update_data()
end)
events.player_death:set(function(arg_9_0)
	local anonteam_9_0 = entity.get(arg_9_0.userid, true)

	if entity.get_local_player() ~= anonteam_9_0 then
		return
	end

	anonteam_0_16.update_data()
end)
events.name_spawn:set(function(arg_10_0)
	local anonteam_10_0 = entity.get(arg_10_0.userid, true)

	if anonteam_10_0 == nil or anonteam_10_0:is_enemy() == false then
		return
	end

	local anonteam_10_1 = anonteam_10_0:get_name()

	anonteam_0_16.update_data(anonteam_10_1)
end)
events.item_purchase:set(function(arg_11_0)
	local anonteam_11_0 = entity.get(arg_11_0.userid, true)

	if anonteam_11_0 == nil or anonteam_11_0:is_enemy() == false then
		return
	end

	local anonteam_11_1 = anonteam_11_0:get_name()

	anonteam_0_16.update_data(anonteam_11_1, arg_11_0.weapon)
end)

local anonteam_0_17 = {
	hand_pos = cvar.cl_righthand,
	anim_pos = vector(),
	bind_argument = function(arg_12_0, arg_12_1)
		return function(...)
			return arg_12_0(arg_12_1, ...)
		end
	end,
	interface_type = ffi.typeof("uintptr_t**")
}

anonteam_0_17.i_client_entity_list = ffi.cast(anonteam_0_17.interface_type, utils.create_interface("client.dll", "VClientEntityList003"))
anonteam_0_17.get_client_entity = anonteam_0_17.bind_argument(ffi.cast("c_entity_list_get_client_entity_t", anonteam_0_17.i_client_entity_list[0][3]), anonteam_0_17.i_client_entity_list)

function anonteam_0_17.get_muzzle_pos()
	local anonteam_14_0 = entity.get_local_player()

	if not anonteam_14_0 or not anonteam_14_0:is_alive() then
		return
	end

	if not anonteam_0_17.get_client_entity(anonteam_14_0:get_index()) then
		return
	end

	local anonteam_14_1 = anonteam_14_0:get_player_weapon()

	if not anonteam_14_1 then
		return
	end

	local anonteam_14_2 = anonteam_0_17.get_client_entity(anonteam_14_1:get_index())

	if not anonteam_14_2 then
		return
	end

	local anonteam_14_3 = anonteam_14_0.m_hViewModel[0]

	if not anonteam_14_3 then
		return
	end

	local anonteam_14_4 = anonteam_0_17.get_client_entity(anonteam_14_3:get_index())

	if not anonteam_14_4 then
		return
	end

	local anonteam_14_5 = ffi.cast(anonteam_0_17.interface_type, anonteam_14_4)[0]
	local anonteam_14_6 = ffi.cast(anonteam_0_17.interface_type, anonteam_14_2)[0]
	local anonteam_14_7 = ffi.cast("c_entity_get_attachment_t", anonteam_14_5[84])
	local anonteam_14_8 = ffi.cast("c_weapon_get_muzzle_attachment_index_first_person_t", anonteam_14_6[468])(anonteam_14_2, anonteam_14_4)
	local anonteam_14_9 = ffi.new("vec3_struct[1]")
	local anonteam_14_10 = anonteam_14_7(anonteam_14_4, anonteam_14_8, anonteam_14_9)
	local anonteam_14_11 = vector(anonteam_14_9[0].x, anonteam_14_9[0].y, anonteam_14_9[0].z)

	return {
		state = anonteam_14_10,
		pos = anonteam_14_11
	}
end

local anonteam_0_18 = {
	cvar_timer = cvar.mp_c4timer
}

function anonteam_0_18.init()
	local anonteam_15_0 = entity.get_entities("CPlantedC4")[1]

	return {
		get_site = function(arg_16_0)
			local anonteam_16_0 = "?"

			if anonteam_15_0 ~= nil and anonteam_15_0.m_nBombSite ~= nil then
				anonteam_16_0 = anonteam_15_0.m_nBombSite == 0 and "A" or "B"
			end

			return anonteam_16_0
		end,
		get_timer = function(arg_17_0)
			local anonteam_17_0 = 0
			local anonteam_17_1 = 1

			if anonteam_15_0 ~= nil and anonteam_15_0.m_flC4Blow ~= nil then
				local anonteam_17_2 = anonteam_0_18.cvar_timer:float()
				local anonteam_17_3 = anonteam_15_0.m_flC4Blow - globals.curtime

				if anonteam_17_3 > 0 then
					anonteam_17_0 = anonteam_17_3
					anonteam_17_1 = 1 / anonteam_15_0.m_flTimerLength * anonteam_17_3
				end
			end

			return anonteam_17_0, anonteam_17_1
		end,
		get_damage = function(arg_18_0)
			local anonteam_18_0 = false
			local anonteam_18_1 = 0
			local anonteam_18_2 = entity.get_local_player()

			if anonteam_18_2 ~= nil and anonteam_15_0 ~= nil then
				local anonteam_18_3 = anonteam_18_2:get_origin()
				local anonteam_18_4 = anonteam_15_0:get_origin()
				local anonteam_18_5 = anonteam_18_3:dist(anonteam_18_4)
				local anonteam_18_6 = 450.7
				local anonteam_18_7 = 75.68
				local anonteam_18_8 = 789.2
				local anonteam_18_9 = (anonteam_18_5 - anonteam_18_7) / anonteam_18_8
				local anonteam_18_10 = anonteam_18_6 * math.exp(-anonteam_18_9 * anonteam_18_9)
				local anonteam_18_11 = anonteam_18_2.m_ArmorValue

				if anonteam_18_11 > 0 then
					local anonteam_18_12 = anonteam_18_10 * 0.5
					local anonteam_18_13 = (anonteam_18_10 - anonteam_18_12) * 0.5

					if anonteam_18_11 < anonteam_18_13 then
						local anonteam_18_14 = anonteam_18_11 * 2

						anonteam_18_12 = anonteam_18_10 - anonteam_18_13
					end

					anonteam_18_10 = anonteam_18_12
				end

				anonteam_18_1 = math.floor(anonteam_18_10)
				anonteam_18_0 = anonteam_18_1 >= anonteam_18_2.m_iHealth
			end

			return anonteam_18_0, anonteam_18_1
		end,
		get_defuse_time = function(arg_19_0)
			local anonteam_19_0 = false
			local anonteam_19_1 = 0
			local anonteam_19_2 = false
			local anonteam_19_3 = 1
			local anonteam_19_4 = arg_19_0:get_timer()

			if anonteam_15_0 ~= nil then
				local anonteam_19_5 = anonteam_15_0.m_bBombDefused
				local anonteam_19_6 = anonteam_15_0.m_hBombDefuser
				local anonteam_19_7 = anonteam_15_0.m_flDefuseLength

				anonteam_19_1 = anonteam_19_6 and anonteam_15_0.m_flDefuseCountDown - globals.curtime or -1
				anonteam_19_0 = anonteam_19_1 > 0
				anonteam_19_2 = anonteam_19_1 < anonteam_19_4
				anonteam_19_3 = 1 / anonteam_19_7 * anonteam_19_1
			end

			return anonteam_19_0, anonteam_19_1, anonteam_19_2, anonteam_19_3
		end,
		get_state = function(arg_20_0)
			local anonteam_20_0 = false
			local anonteam_20_1 = false

			if anonteam_15_0 ~= nil then
				anonteam_20_0 = anonteam_15_0.m_bBombTicking
				anonteam_20_1 = anonteam_15_0.m_bBombDefused
			end

			return anonteam_20_0, anonteam_20_1
		end
	}
end

local anonteam_0_19 = panorama.loadstring("    let requests = {};\n\n    return {\n        requestInternal: function(timestamp, url, options)\n        {\n            requests[timestamp] = {\n                complete: false,\n                value: null\n            };\n\n            options.complete = function(response) { \n                requests[timestamp].complete = true;\n                requests[timestamp].value = response;\n            };\n\n            $.AsyncWebRequest(url, options);\n        },\n        getRequest: function(timestamp)\n        {\n            return requests[timestamp];\n        },\n        removeRequest: function(timestamp)\n        {\n            delete requests[timestamp];\n        }\n    };\n")()

anonteam_0_19.requestTable = {}

local function anonteam_0_20(arg_21_0, arg_21_1, arg_21_2, arg_21_3)
	if type(arg_21_2) == "function" then
		arg_21_3 = arg_21_2
		arg_21_2 = {}
	end

	arg_21_2 = arg_21_2 or {}
	arg_21_2.type = arg_21_0
	arg_21_2.timeout = arg_21_2.timeout or 5000

	local anonteam_21_0 = common.get_timestamp()

	table.insert(anonteam_0_19.requestTable, {
		complete = arg_21_3,
		timestamp = anonteam_21_0
	})
	anonteam_0_19.requestInternal(anonteam_21_0, arg_21_1, arg_21_2)
end

function anonteam_0_19.request(arg_22_0, arg_22_1, arg_22_2, arg_22_3)
	anonteam_0_20(arg_22_0, arg_22_1, arg_22_2, arg_22_3)
end

function anonteam_0_19.updateRequests()
	for iter_23_0 = #anonteam_0_19.requestTable, 1, -1 do
		local anonteam_23_0 = anonteam_0_19.requestTable[iter_23_0]
		local anonteam_23_1 = anonteam_0_19.getRequest(anonteam_23_0.timestamp)

		if anonteam_23_1 and anonteam_23_1.complete then
			anonteam_23_0.complete(anonteam_23_1.value)
			table.remove(anonteam_0_19.requestTable, iter_23_0)
			anonteam_0_19.removeRequest(anonteam_23_0.timestamp)
		end
	end
end

local function anonteam_0_21(arg_24_0, arg_24_1, arg_24_2)
	table.insert(arg_24_0, setmetatable(arg_24_1, {
		__index = arg_24_2
	}))
end

local function anonteam_0_22(arg_25_0, arg_25_1)
	local anonteam_25_0 = arg_25_0 and arg_25_0 or {}

	for iter_25_0, iter_25_1 in ipairs(anonteam_25_0) do
		if arg_25_1 == iter_25_1 then
			return true
		end
	end

	return false
end

local function anonteam_0_23(arg_26_0)
	local anonteam_26_0 = {}

	for iter_26_0, iter_26_1 in pairs(arg_26_0) do
		table.insert(anonteam_26_0, iter_26_0)
	end

	return anonteam_26_0
end

local function anonteam_0_24()
	return math.floor(math.sin(math.abs(-math.pi + globals.curtime % (math.pi * 2))) * 100) / 100
end

function string.multi_color(arg_28_0, arg_28_1)
	local anonteam_28_0 = ""

	for iter_28_0, iter_28_1 in ipairs(arg_28_0) do
		local anonteam_28_1 = iter_28_1[1]
		local anonteam_28_2 = iter_28_1[2]
		local anonteam_28_3 = ""

		if anonteam_28_2 ~= nil then
			anonteam_28_3 = arg_28_1 and anonteam_28_2:to_hex() or anonteam_28_2:to_hex():sub(1, 6)
		end

		anonteam_28_0 = anonteam_28_0 .. "\a" .. anonteam_28_3 .. anonteam_28_1
	end

	return anonteam_28_0
end

local function anonteam_0_25(arg_29_0, arg_29_1, arg_29_2, arg_29_3)
	if arg_29_1 == nil or arg_29_2 == nil then
		local anonteam_29_0 = ui.get_style()["Link Active"]

		arg_29_1 = anonteam_29_0
		arg_29_2 = anonteam_29_0 / 1.4
	end

	local anonteam_29_1 = #arg_29_0
	local anonteam_29_2 = (arg_29_2.r - arg_29_1.r) / anonteam_29_1
	local anonteam_29_3 = (arg_29_2.g - arg_29_1.g) / anonteam_29_1
	local anonteam_29_4 = (arg_29_2.b - arg_29_1.b) / anonteam_29_1
	local anonteam_29_5 = (arg_29_2.a - arg_29_1.a) / anonteam_29_1
	local anonteam_29_6 = ""

	for iter_29_0 = 1, anonteam_29_1 do
		local anonteam_29_7 = arg_29_3 and arg_29_1:to_hex() or arg_29_1:to_hex():sub(1, 6)

		anonteam_29_6 = anonteam_29_6 .. "\a" .. anonteam_29_7 .. arg_29_0:sub(iter_29_0, iter_29_0)
		arg_29_1.r = arg_29_1.r + anonteam_29_2
		arg_29_1.g = arg_29_1.g + anonteam_29_3
		arg_29_1.b = arg_29_1.b + anonteam_29_4
		arg_29_1.a = arg_29_1.a + anonteam_29_5
	end

	return anonteam_29_6
end

function anonteam_0_3.lerp(arg_30_0, arg_30_1, arg_30_2)
	if arg_30_2 == nil then
		arg_30_2 = 0.09
	end

	if type(arg_30_0) == "userdata" then
		local anonteam_30_0 = {
			0,
			0,
			0,
			0
		}

		for iter_30_0, iter_30_1 in ipairs({
			"r",
			"g",
			"b",
			"a"
		}) do
			anonteam_30_0[iter_30_0] = anonteam_0_3.lerp(arg_30_0[iter_30_1], arg_30_1[iter_30_1], arg_30_2)
		end

		return color(unpack(anonteam_30_0))
	end

	return (arg_30_1 - arg_30_0) * (globals.frametime * arg_30_2 * 175) + arg_30_0
end

function anonteam_0_3.new(arg_31_0, arg_31_1, arg_31_2)
	if anonteam_0_3.data[arg_31_0] == nil then
		anonteam_0_3.data[arg_31_0] = arg_31_1
	end

	anonteam_0_3.data[arg_31_0] = anonteam_0_3.lerp(anonteam_0_3.data[arg_31_0], arg_31_1, arg_31_2)

	return anonteam_0_3.data[arg_31_0]
end

anonteam_0_10.elements = {}
anonteam_0_10.refs = {}

function anonteam_0_10.run_update()
	for iter_32_0, iter_32_1 in pairs(anonteam_0_10.refs) do
		if iter_32_1.condition ~= nil then
			iter_32_1.ref:visibility(iter_32_1.condition())
		end
	end
end

function anonteam_0_10.new(arg_33_0, arg_33_1, arg_33_2)
	anonteam_0_10.refs[arg_33_0] = {
		ref = arg_33_1,
		name = arg_33_0,
		condition = arg_33_2
	}

	local function anonteam_33_0()
		anonteam_0_10.elements[arg_33_0] = arg_33_1

		anonteam_0_10.run_update()
	end

	anonteam_33_0()
	arg_33_1:set_callback(anonteam_33_0)

	return arg_33_1
end

local anonteam_0_26 = {}
local anonteam_0_27 = {
	create_draggable = function(arg_35_0, arg_35_1, arg_35_2, arg_35_3, arg_35_4, arg_35_5)
		local anonteam_35_0 = ui.create("Drag items")

		anonteam_0_10.new(arg_35_4 .. "_x", anonteam_35_0:slider(arg_35_4 .. "_x", 0, anonteam_0_9.screen.x, arg_35_0), function()
			return false
		end)
		anonteam_0_10.new(arg_35_4 .. "_y", anonteam_35_0:slider(arg_35_4 .. "_y", 0, anonteam_0_9.screen.y, arg_35_1), function()
			return false
		end)

		return {
			started_dragging = false,
			position_x = anonteam_0_10.elements[arg_35_4 .. "_x"]:get(),
			position_y = anonteam_0_10.elements[arg_35_4 .. "_y"]:get(),
			size_x = arg_35_2,
			size_y = arg_35_3,
			initial_drag_pos = vector(0, 0),
			drag_pos = vector(0, 0),
			callback_function = arg_35_5,
			update = function(arg_38_0)
				if ui.get_alpha() > 0 then
					local anonteam_38_0 = ui.get_mouse_position()

					if (anonteam_38_0.x >= arg_38_0.position_x and anonteam_38_0.y >= arg_38_0.position_y and anonteam_38_0.x <= arg_38_0.position_x + arg_38_0.size_x and anonteam_38_0.y <= arg_38_0.position_y + arg_38_0.size_y or arg_38_0.started_dragging) and common.is_button_down(1) and (anonteam_0_26.mouse_target == 0 or anonteam_0_26.mouse_target == arg_35_4) then
						anonteam_0_26.mouse_target = arg_35_4

						if not arg_38_0.started_dragging then
							arg_38_0.started_dragging = true
							arg_38_0.initial_drag_pos = vector(anonteam_38_0.x - arg_38_0.position_x, anonteam_38_0.y - arg_38_0.position_y)
						else
							arg_38_0.position_x = anonteam_38_0.x - arg_38_0.initial_drag_pos.x
							arg_38_0.position_y = anonteam_38_0.y - arg_38_0.initial_drag_pos.y

							anonteam_0_10.elements[arg_35_4 .. "_x"]:set(math.floor(tonumber(arg_38_0.position_x)))
							anonteam_0_10.elements[arg_35_4 .. "_y"]:set(math.floor(tonumber(arg_38_0.position_y)))
						end
					elseif not common.is_button_down(1) then
						anonteam_0_26.mouse_target = 0
						arg_38_0.started_dragging = false
						arg_38_0.initial_drag_pos = arg_38_0.drag_pos
					end
				end

				arg_38_0.callback_function(arg_38_0)
			end
		}
	end
}
local anonteam_0_28 = {
	data = {}
}

anonteam_0_28.link_api = "https://625c894695cd5855d6139e9b.mockapi.io/api/v1/config_system_solus/" --wtf
anonteam_0_28.whitelist_elements = {
	"config_list",
	"tab",
	"config_name",
	"config_manage"
}

function anonteam_0_28.update_configs_and_list(arg_39_0, arg_39_1)
	local anonteam_39_0 = {}

	anonteam_0_19.request("GET", anonteam_0_28.link_api, function(arg_40_0)
		if arg_40_0.statusText ~= "success" then
			return common.add_notify("Config", "Failed request, Status: [" .. tostring(arg_40_0.statusText) .. ", " .. tostring(arg_40_0.status) .. "]")
		end

		if arg_40_0.responseText == nil then
			return
		end

		anonteam_0_28.data = {}

		local anonteam_40_0 = anonteam_0_15.parse(arg_40_0.responseText)

		if anonteam_40_0 == nil then
			return common.add_notify("Config", "There was an error updating configs, try again.")
		end

		for iter_40_0, iter_40_1 in ipairs(anonteam_40_0) do
			if iter_40_1 == nil then
				common.add_notify("Config", "There are no configs in database.")

				break
			end

			anonteam_0_28.data[iter_40_1.config_name] = {
				id = iter_40_1.id,
				data = iter_40_1.config_data,
				creator = iter_40_1.config_creator
			}

			table.insert(anonteam_39_0, iter_40_1.config_name)
		end

		arg_39_0:update(#anonteam_39_0 < 1 and {
			"reload me!"
		} or anonteam_39_0)
		common.add_notify("Config", "List of configs successfully updated!")

		if arg_39_1 then
			arg_39_1()
		end
	end)
end

function anonteam_0_28.get_my_config_data()
	local anonteam_41_0 = {}

	for iter_41_0, iter_41_1 in pairs(anonteam_0_10.elements) do
		local anonteam_41_1 = iter_41_1:get()

		if iter_41_0:find("color") then
			anonteam_41_1 = anonteam_41_1:to_hex()
		end

		anonteam_41_0[iter_41_0] = anonteam_41_1
	end

	return anonteam_41_0
end

anonteam_0_28.anti_pidor = false

function anonteam_0_28.post_my_config(arg_42_0)
	if anonteam_0_28.data[arg_42_0] then
		common.add_notify("Config", "Thats name of config already exists.")

		return
	end

	if arg_42_0 == nil or #arg_42_0 < 1 then
		common.add_notify("Config", "Enter name of the config!")

		return
	end

	for iter_42_0, iter_42_1 in pairs(anonteam_0_28.data) do
		if anonteam_0_12.base64.decode(iter_42_1.creator) == anonteam_0_9.user and anonteam_0_9.user ~= "prince1337" then
			common.add_notify("Config", "You can`t create more than 1 config.")

			return
		end
	end

	if anonteam_0_28.anti_pidor then
		common.add_notify("Config", "Don`t spam, just wait.")

		return
	end

	anonteam_0_28.anti_pidor = true

	local anonteam_42_0 = anonteam_0_28.get_my_config_data()
	local anonteam_42_1 = anonteam_0_15.stringify(anonteam_42_0)
	local anonteam_42_2 = anonteam_0_12.base64.encode(anonteam_42_1)
	local anonteam_42_3 = anonteam_0_12.base64.encode(anonteam_0_9.user)
	local anonteam_42_4 = {
		data = {
			config_creator = anonteam_42_3,
			config_name = arg_42_0,
			config_data = anonteam_42_2
		}
	}

	anonteam_0_19.request("POST", anonteam_0_28.link_api, anonteam_42_4, function(arg_43_0)
		anonteam_0_28.anti_pidor = false

		if arg_43_0.status ~= 201 and arg_43_0.status ~= 200 then
			return common.add_notify("Config", "Failed request, Status: [" .. tostring(arg_43_0.statusText) .. ", " .. tostring(arg_43_0.status) .. "]")
		end

		common.add_notify("Config", "Config successfully uploaded!")
		anonteam_0_28.update_configs_and_list(anonteam_0_10.elements.config_list)
	end)
end

function anonteam_0_28.delete_config(arg_44_0)
	local anonteam_44_0 = anonteam_0_28.data[arg_44_0]

	if arg_44_0 == nil or anonteam_44_0 == nil then
		common.add_notify("Config", "Config does not exist. Reload and try again.")

		return
	end

	if anonteam_0_9.user ~= "prince1337" and anonteam_0_12.base64.decode(anonteam_44_0.creator) ~= anonteam_0_9.user then
		common.add_notify("Config", "You are not creator of this config.")

		return
	end

	local anonteam_44_1 = anonteam_44_0.id

	anonteam_0_19.request("DELETE", anonteam_0_28.link_api .. anonteam_44_1, function(arg_45_0)
		if arg_45_0.statusText ~= "success" then
			return common.add_notify("Config", "Failed request, Status: [" .. tostring(arg_45_0.statusText) .. ", " .. tostring(arg_45_0.status) .. "]")
		end

		common.add_notify("Config", "Config successfully deleted!")
		anonteam_0_28.update_configs_and_list(anonteam_0_10.elements.config_list)
	end)
end

function anonteam_0_28.load_config(arg_46_0)
	local anonteam_46_0 = anonteam_0_28.data[arg_46_0]

	if arg_46_0 == nil or anonteam_46_0 == nil then
		common.add_notify("Config", "Config does not exist. Reload and try again.")

		return
	end

	local anonteam_46_1 = anonteam_0_12.base64.decode(anonteam_46_0.data)

	if anonteam_46_1 == nil then
		return common.add_notify("Config", "Undefinded config data.")
	end

	local anonteam_46_2 = anonteam_0_15.parse(anonteam_46_1)

	if not anonteam_46_2 then
		common.add_notify("Config", "Undefinded config data.")

		return
	end

	for iter_46_0, iter_46_1 in pairs(anonteam_46_2) do
		if iter_46_0:find("config") ~= nil then
			-- block empty
		else
			if iter_46_0:find("color") then
				iter_46_1 = type(iter_46_1) == "string" and color():init(iter_46_1) or color()
			end

			if anonteam_0_10.elements[iter_46_0] ~= nil and iter_46_1 ~= nil then
				anonteam_0_10.elements[iter_46_0]:set(iter_46_1)
			end
		end
	end

	anonteam_0_10.run_update()
	common.add_notify("Config", "Config successfully loaded!")
end

function anonteam_0_28.copy(arg_47_0)
	local anonteam_47_0 = anonteam_0_28.get_my_config_data()
	local anonteam_47_1 = anonteam_0_15.stringify(anonteam_47_0)

	anonteam_0_12.clipboard.set(anonteam_47_1)
	common.add_notify("Config", "Config successfully copied!")
end

function anonteam_0_28.paste()
	local anonteam_48_0 = anonteam_0_12.clipboard.get()

	if anonteam_48_0 == nil or #anonteam_48_0 < 1 then
		common.add_notify("Config", "Undefinded config. Copy it and try again.")

		return
	end

	local anonteam_48_1 = anonteam_48_0

	if anonteam_48_1 == nil then
		return
	end

	local anonteam_48_2 = anonteam_0_15.parse(anonteam_48_1)

	if not anonteam_48_2 or type(anonteam_48_2) ~= "table" then
		common.add_notify("Config", "Undefinded config. Copy it and try again.")

		return
	end

	for iter_48_0, iter_48_1 in pairs(anonteam_48_2) do
		if iter_48_0:find("config") ~= nil then
			-- block empty
		else
			if iter_48_0:find("color") then
				iter_48_1 = type(iter_48_1) == "string" and color():init(iter_48_1) or color()
			end

			if anonteam_0_10.elements[iter_48_0] ~= nil and iter_48_1 ~= nil then
				anonteam_0_10.elements[iter_48_0]:set(iter_48_1)
			end
		end
	end

	anonteam_0_10.run_update()
	common.add_notify("Config", "Copied config successfully loaded!")
end

function anonteam_0_5.get_desync_delta()
	local anonteam_49_0 = entity.get_local_player()

	if not anonteam_49_0 then
		return 0
	end

	local anonteam_49_1 = anonteam_49_0:get_anim_state()

	if not anonteam_49_1 then
		return 0
	end

	return (math.normalize_yaw(anonteam_49_1.eye_yaw - anonteam_49_1.abs_yaw))
end

function anonteam_0_5.get_inverter_state()
	return anonteam_0_5.get_desync_delta() <= 0 and true or false
end

local function anonteam_0_29()
	local anonteam_51_0 = tonumber(math.floor(1 / globals.frametime))

	if anonteam_51_0 < 10 then
		return "  " .. anonteam_51_0
	end

	if anonteam_51_0 < 100 then
		return " " .. anonteam_51_0
	end

	return anonteam_51_0
end

local function anonteam_0_30()
	if globals.is_connected then
		return math.floor(utils.net_channel().latency[1] * 1000)
	end

	return 0
end

local function anonteam_0_31()
	if globals.is_connected then
		return tostring(utils.net_channel():get_server_info().address)
	end

	return "offline"
end

anonteam_0_8.exchange_name = {
	{
		name = "Peek Assist",
		new_name = "Quick peek assist"
	},
	{
		name = "Fake Duck",
		new_name = "Duck peek assist"
	},
	{
		name = "Fake Latency",
		new_name = "Ping spike"
	},
	{
		name = "Minimum Damage",
		new_name = "Damage override"
	},
	{
		name = "Slow Walk",
		new_name = "Slow motion"
	},
	{
		name = "Hide Shots",
		new_name = "On shot anti-aim"
	}
}

function anonteam_0_8.first_letter_to_upper(arg_54_0)
	arg_54_0 = string.lower(arg_54_0)
	arg_54_0 = string.gsub(arg_54_0, "^[A-z\xD0\x90-\xD1\x8F]", function(arg_55_0)
		for iter_55_0 = 224, 255 do
			arg_55_0 = string.gsub(arg_55_0, _G.string.char(iter_55_0), _G.string.char(iter_55_0 - 32))
		end

		arg_55_0 = string.gsub(arg_55_0, _G.string.char(184), _G.string.char(168))

		return string.upper(arg_55_0)
	end)

	return arg_54_0
end

anonteam_0_8.data = {}

function anonteam_0_8.get_active(arg_56_0)
	local anonteam_56_0 = ui.get_binds()
	local anonteam_56_1 = {}
	local anonteam_56_2 = false

	for iter_56_0 = 1, #anonteam_56_0 do
		local anonteam_56_3 = anonteam_56_0[iter_56_0]
		local anonteam_56_4 = anonteam_56_3.name

		for iter_56_1 = 1, #arg_56_0.exchange_name do
			if anonteam_56_4 == arg_56_0.exchange_name[iter_56_1].name then
				anonteam_56_4 = arg_56_0.exchange_name[iter_56_1].new_name
			end
		end

		local anonteam_56_5 = arg_56_0.first_letter_to_upper(anonteam_56_4)

		if arg_56_0.data[anonteam_56_5] == nil then
			arg_56_0.data[anonteam_56_5] = {
				alpha = 0,
				name = anonteam_56_5,
				value = anonteam_56_3.value,
				mode = anonteam_56_3.mode
			}
		else
			if arg_56_0.data[anonteam_56_5].value ~= anonteam_56_3.value then
				arg_56_0.data[anonteam_56_5].value = anonteam_56_3.value
			end

			if type(arg_56_0.data[anonteam_56_5].value) == "table" then
				arg_56_0.data[anonteam_56_5].value = string.lower(table.concat(arg_56_0.data[anonteam_56_5].value, ", "))
			end

			local anonteam_56_6 = anonteam_56_3.active

			arg_56_0.data[anonteam_56_5].alpha = anonteam_0_3.lerp(arg_56_0.data[anonteam_56_5].alpha, anonteam_56_6 and 255 or 0)

			if arg_56_0.data[anonteam_56_5].alpha > 1 then
				local anonteam_56_7 = arg_56_0.data[anonteam_56_5].name
				local anonteam_56_8 = tostring(arg_56_0.data[anonteam_56_5].value)

				if #anonteam_56_7 + #anonteam_56_8 > 28 then
					if #anonteam_56_7 >= #anonteam_56_8 then
						anonteam_56_7 = string.sub(anonteam_56_7, 1, 14) .. "..."
					else
						anonteam_56_8 = string.sub(anonteam_56_8, 1, 14) .. "..."
					end
				end

				table.insert(anonteam_56_1, 1, {
					name = anonteam_56_7,
					state = anonteam_56_8,
					mode = arg_56_0.data[anonteam_56_5].mode,
					alpha = arg_56_0.data[anonteam_56_5].alpha
				})
			end

			if anonteam_56_6 then
				anonteam_56_2 = true
			end
		end
	end

	return {
		active = anonteam_56_1,
		is_any_active = anonteam_56_2
	}
end

anonteam_0_2.defaut_avatar_bytes = "\xFF\xD8\xFF\xE0\x00\x10JFIF\x00\x01\x01\x00\x00\x01\x00\x01\x00\x00\xFF\xFE\x00;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 80\n\xFF\xDB\x00C\x00\x06\x04\x05\x06\x05\x04\x06\x06\x05\x06\a\a\x06\b\n\x10\n\n\t\t\n\x14\x0E\x0F\f\x10\x17\x14\x18\x18\x17\x14\x16\x16\x1A\x1D%\x1F\x1A\x1B#\x1C\x16\x16 , #&')*)\x19\x1F-0-(0%()(\xFF\xDB\x00C\x01\a\a\a\n\b\n\x13\n\n\x13(\x1A\x16\x1A((((((((((((((((((((((((((((((((((((((((((((((((((\xFF\xC0\x00\x11\b\x00\xB8\x00\xB8\x03\x01\"\x00\x02\x11\x01\x03\x11\x01\xFF\xC4\x00\x1F\x00\x00\x01\x05\x01\x01\x01\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x01\x02\x03\x04\x05\x06\a\b\t\n\v\xFF\xC4\x00\xB5\x10\x00\x02\x01\x03\x03\x02\x04\x03\x05\x05\x04\x04\x00\x00\x01}\x01\x02\x03\x00\x04\x11\x05\x12!1A\x06\x13Qa\a\"q\x142\x81\x91\xA1\b#B\xB1\xC1\x15R\xD1\xF0$3br\x82\t\n\x16\x17\x18\x19\x1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\x83\x84\x85\x86\x87\x88\x89\x8A\x92\x93\x94\x95\x96\x97\x98\x99\x9A\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xB2\xB3\xB4\xB5\xB6\xB7\xB8\xB9\xBA\xC2\xC3\xC4\xC5\xC6\xC7\xC8\xC9\xCA\xD2\xD3\xD4\xD5\xD6\xD7\xD8\xD9\xDA\xE1\xE2\xE3\xE4\xE5\xE6\xE7\xE8\xE9\xEA\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xFA\xFF\xC4\x00\x1F\x01\x00\x03\x01\x01\x01\x01\x01\x01\x01\x01\x01\x00\x00\x00\x00\x00\x00\x01\x02\x03\x04\x05\x06\a\b\t\n\v\xFF\xC4\x00\xB5\x11\x00\x02\x01\x02\x04\x04\x03\x04\a\x05\x04\x04\x00\x01\x02w\x00\x01\x02\x03\x11\x04\x05!1\x06\x12AQ\aaq\x13\"2\x81\b\x14B\x91\xA1\xB1\xC1\t#3R\xF0\x15br\xD1\n\x16$4\xE1%\xF1\x17\x18\x19\x1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\x82\x83\x84\x85\x86\x87\x88\x89\x8A\x92\x93\x94\x95\x96\x97\x98\x99\x9A\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xB2\xB3\xB4\xB5\xB6\xB7\xB8\xB9\xBA\xC2\xC3\xC4\xC5\xC6\xC7\xC8\xC9\xCA\xD2\xD3\xD4\xD5\xD6\xD7\xD8\xD9\xDA\xE2\xE3\xE4\xE5\xE6\xE7\xE8\xE9\xEA\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xFA\xFF\xDA\x00\f\x03\x01\x00\x02\x11\x03\x11\x00?\x00\xF1]F\xF6\xEE\x1DB\xE6(ng\x8E4\x95\x95Ud \x00\t\xF7\xAA\xDF\xDA7\xDF\xF3\xFBs\xFF\x00\x7F[\xFCh\xD5\xBF\xE4+{\xFF\x00]\x9F\xFF\x00B5V\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x80-\x7Fh\xDF\x7F\xCF\xED\xCF\xFD\xFDo\xF1\xA3\xFBF\xFB\xFE\x7Fn\x7F\xEF\xEB\x7F\x8DU\xA2\x804\xF4\xEB\xDB\xB9\xB5\vh\xA6\xB9\x9EH\xDEUVV\x90\x90A#\xDE\x8A\xAD\xA4\xFF\x00\xC8V\xCB\xFE\xBB'\xFE\x84(\xA0\x03V\xFF\x00\x90\xAD\xEF\xFDv\x7F\xFD\b\xD5Z\xB5\xAB\x7F\xC8V\xF7\xFE\xBB?\xFE\x84j\xAD\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14QE\x00Z\xD2\x7F\xE4+e\xFF\x00]\x93\xFF\x00B\x14Q\xA4\xFF\x00\xC8V\xCB\xFE\xBB'\xFE\x84(\xA0\x03V\xFF\x00\x90\xAD\xEF\xFDv\x7F\xFD\b\xD5Z\xB5\xAB\x7F\xC8V\xF7\xFE\xBB?\xFE\x84j\xAD\x00\x14QE\x00\x14QE\x00\x14QE\x00\x14Q[^\x14\xF0\xBE\xAF\xE2\xADDYh\x96\x8F;\x8C\x19\x1C\xF0\x91\x0FVn\xC3\xF5=\xB3@\x18\xB4W\xD2\x1E\x19\xF8\x01\xA6A\x12I\xE2=Fk\xBB\x8Cd\xC5k\x88\xE3\a\xB8\xDCAf\xFA\xF1]j\xFC\x1C\xF0*\xA8\aD,GRn\xE7\xC9\xFF\x00\xC7\xE8\x03\xE4*+\xEA\rs\xE0/\x86\xEF#'J\xB9\xBD\xD3\xA6\xC7\xCB\xF3\t\x93\xF1V\xE4\xFE\x04W\x89\xF8\xF7\xE1\xBE\xBB\xE0\xC6\xF3ob\x17:q8[\xC82S=\x83\feO\xD7\x8FBh\x03\x8B\xA2\x8A(\x00\xA2\x8A(\x00\xA2\x8A(\x00\xA2\x8A(\x02\xD6\x93\xFF\x00![/\xFA\xEC\x9F\xFA\x10\xA2\x8D'\xFEB\xB6_\xF5\xD9?\xF4!E\x00\x1A\xB7\xFC\x85o\x7F\xEB\xB3\xFF\x00\xE8F\xAA\xD5\xAD[\xFEB\xB7\xBF\xF5\xD9\xFF\x00\xF4#Uh\x00\xA2\x8A(\x00\xA2\x8A(\x00\xA2\x8A(\x03o\xC1\x9E\x1C\xBB\xF1_\x88\xED4\x9B\x1F\x95\xE6l\xBC\x84dD\x83\x96c\xF4\xFDO\x15\xF6W\x84\xBC7\xA7xWE\x87M\xD2a\t\x12\x00]\xC8\x1B\xE5|`\xB3\x1E\xE4\xE3\xFA\x0E+\xCA\xFF\x00f\x1D\x05-\xF4\x1DG\\\x91?\x7Fw/\xD9\xE3'\xB4h\x018\xFA\xB1\xFF\x00\xC7k\xDBh\x00\xA2\xBCS\xE3\x7F\xC5+\xBF\x0F\xDE\x9D\x03\xC3\x8E\x91\xDF\x84\rsr@c\b#!T\x7F{\a9#\x80x\xE7\xA7\x80\xDCx\x93\\\xB8\x9C\xCF>\xB1\xA8\xBC\xC4\xE7{\\\xB99\xFA\xE6\x80>\xE9\xA8\xEE`\x8A\xEA\xDEK{\x98\xA3\x9A\tT\xAB\xC7\"\x82\xAC\b\xC1\x04w\x15\xF3/\xC3\x0F\x8Cz\x9E\x95\x7F\r\x8F\x8A.d\xBF\xD2\xA4!L\xF2\x92\xD2\xC0zn-\xD5\x97\xD4\x1C\x9FOC\xF4\xEA:\xBA+\xA3\x06R\x03\x02\xA7 \x8E\xB9\x06\x80>K\xF8\xD7\xF0\xFF\x00\xFE\x10\xEDe.\xB4\xE5'E\xBDc\xE5\x03\x92a~\xF1\x93\xE9\xDC\x13\xDB\xE9\x9A\xF3j\xFBK\xE2\xAE\x82\x9E\"\xF0\x1E\xADdWt\xC9\x11\x9E\x03\xDCH\x83r\xE3\xD38#\xE8k\xE2\xDA\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00\xB5\xA4\xFF\x00\xC8V\xCB\xFE\xBB'\xFE\x84(\xA3I\xFF\x00\x90\xAD\x97\xFDvO\xFD\bQ@\x06\xAD\xFF\x00![\xDF\xFA\xEC\xFF\x00\xFA\x11\xAA\xB5kV\xFF\x00\x90\xAD\xEF\xFDv\x7F\xFD\b\xD5Z\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00\xFA\xE3\xE0=\xC5\xB4_\n\xB4Uy\xA1G&r\xC0\xB0\a>{\xF5\xE7\xD3\x15\xDF}\xB6\xD7\xFE~a\xFF\x00\xBE\xC7\xF8\xD7\xC14P\x06\xBF\x8C/\x9BR\xF1^\xB1z\xED\xBC\xCFw+\x83\x9C\x8C\x168\x00\xFAc\x8A\xC8\xA2\x8A\x00+\xED?\x853O?\xC3\x8F\x0F=\xCE|\xCF\xB1\xA2\xE4\xF5*\x06\x14\xFE@W\xCA\x1F\x0F\xFC)w\xE3\x1F\x12\xDB\xE9\x96\xA0\xACD\xEF\xB8\x98\x0E!\x8C\x11\xB9\xBE\xBD\x80\xEEk\xEDK\x1BXll\xAD\xED-P$\x10F\xB1F\x83\xA2\xA2\x80\x00\xFD(\x02VP\xCAU\x80ea\x82\x0F \x8A\xF8\n\xBE\xE4\xF1\xAE\xAE\x9A\x17\x84\xB5}I\xD8)\xB7\xB6vRx\xCB\xE3\b?\x16*+\xE1\xBA\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00\xB5\xA4\xFF\x00\xC8V\xCB\xFE\xBB'\xFE\x84(\xA3I\xFF\x00\x90\xAD\x97\xFDvO\xFD\bQ@\x06\xAD\xFF\x00![\xDF\xFA\xEC\xFF\x00\xFA\x11\xAA\xB5kV\xFF\x00\x90\xAD\xEF\xFDv\x7F\xFD\b\xD5Z\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00*[[y\xAE\xEE\xA1\xB7\xB5\x8D\xE5\xB8\x95\xC4q\xC6\x83%\xD8\x9E\x00\x1D\xCEME_C\xFE\xCE\xDE\x01\xF2\"_\x15\xEA\xD0\xFE\xF6E\"\xC27\x1C\xAA\xF7\x97\x1E\xA7\xA0\xF6\xC9\xEE(\x03\xD0\xBE\x14x&\x1F\x05xm p\x8F\xA9\xDCbK\xB9W\x9C\xBE8P\x7F\xBA\xB9\xC7\xBF'\xBDv\xB4W\x9A\xFCm\xF1\xF0\xF0\x8E\x87\xF6=>O\xF8\x9D_!X\xB1\xD6\x14\xE8d>\xFD\x87\xBF=\x8D\x00y\xCF\xED\x15\xE3\xA4\xD4\xAF\a\x864\xC97[Z\xC9\xBA\xEEE<<\xA38A\xEC\xB9\xE7\xDF\xFD\xDA\xF1\x1AVb\xCCY\x89fc\x92O$\x9FSI@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x16\xB4\x9F\xF9\n\xD9\x7F\xD7d\xFF\x00\xD0\x85\x14i?\xF2\x15\xB2\xFF\x00\xAE\xC9\xFF\x00\xA1\n(\x00\xD5\xBF\xE4+{\xFF\x00]\x9F\xFF\x00B5V\xADj\xDF\xF2\x15\xBD\xFF\x00\xAE\xCF\xFF\x00\xA1\x1A\xAB@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x1D\x0F\xC3\xED\r|I\xE3M#I\x93>M\xC4\xC3\xCD\x03\xA9\x8DAg\x00\xFA\xEDS_m\xC5\x1AC\x12G\x12\x04\x8D\x14*\xAA\x8C\x05\x00`\x00;\fW\xC9_\xB3\xD8\xFF\x00\x8B\xA5\xA6\xFF\x00\xD7)\xBF\xF4[W\xD6\xF4\x01\x8D\xE3\x0F\x11Y\xF8W\xC3\xD7Z\xB6\xA0s\x14+\xF2\xA082\xB9\xE1T{\x93\xF9\x0E{W\xC5\xDE'\xD7o|I\xAE]j\xBA\x94\x9B\xEE.\x1Fq\x038A\xD0*\x8E\xC0\x0E+\xDD\x7Fj\x9B\xB7M/\xC3\xD6a\x88If\x9Ab\xBD\x89EP\t\xFF\x00\xBE\xCD|\xED@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x16\xB4\x9F\xF9\n\xD9\x7F\xD7d\xFF\x00\xD0\x85\x14i?\xF2\x15\xB2\xFF\x00\xAE\xC9\xFF\x00\xA1\n(\x00\xD5\xBF\xE4+{\xFF\x00]\x9F\xFF\x00B5V\xADj\xDF\xF2\x15\xBD\xFF\x00\xAE\xCF\xFF\x00\xA1\x1A\xAB@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x05\x14Q@\x1D\xD7\xC1MZ\xC7E\xF8\x85c{\xAA\xDC\xC7mh\x91\xCC\x1AY8\x00\x98\xC8\x1F\xA9\xAF\xA5\x7F\xE1e\xF87\xFE\x86\x1B\x1F\xFB\xE8\xFF\x00\x85|aE\x00{?\xED\x1B\xE2m\x1B\xC4_\xF0\x8F\x7Fbj0\xDE\xF9\x1Fh\xF3|\xB2N\xCD\xDEV\xDC\xF1\xFE\xC9\xAF\x18\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00\xB5\xA4\xFF\x00\xC8V\xCB\xFE\xBB'\xFE\x84(\xA3I\xFF\x00\x90\xAD\x97\xFDvO\xFD\bQ@\x06\xAD\xFF\x00![\xDF\xFA\xEC\xFF\x00\xFA\x11\xAA\xB5kV\xFF\x00\x90\xAD\xEF\xFDv\x7F\xFD\b\xD5Z\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00(\xA2\x8A\x00\xF4?\x80pCs\xF17O\x8A\xE6(\xE5\x8C\xC71)\"\x86\a\xF7d\x8E+\xEA\xBF\xEC]+\xFE\x81\x96?\xF8\x0E\xBF\xE1_'\xFC\f\xBF\xB3\xD3~$X\\\xEA7v\xF6\x96\xCB\x1C\xC1\xA5\x9EA\x1A\x02c \x02\xC4\x809\xAF\xA8?\xE15\xF0\xB7\xFD\f\xBA'\xFE\f\"\xFF\x00\xE2\xA8\x03\xC6?j++K?\xF8F~\xC9m\f\x1B\xBE\xD5\xBB\xCB@\xBB\xBF\xD5c8\x1C\xF5\xAF\b\xAFo\xFD\xA5\xF5\xAD+X\xFF\x00\x84s\xFB#S\xB1\xBF\xF2\xBE\xD3\xE6}\x96\xE1e\xD9\x9F+\x1B\xB6\x93\x8C\xE0\xF5\xF4\xAF\x10\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\vZO\xFC\x85l\xBF\xEB\xB2\x7F\xE8B\x8A4\x9F\xF9\n\xD9\x7F\xD7d\xFF\x00\xD0\x85\x14\x00j\xDF\xF2\x15\xBD\xFF\x00\xAE\xCF\xFF\x00\xA1\x1A\xABV\xB5o\xF9\n\xDE\xFF\x00\xD7g\xFF\x00\xD0\x8DU\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\vZO\xFC\x85l\xBF\xEB\xB2\x7F\xE8B\x8A4\x9F\xF9\n\xD9\x7F\xD7d\xFF\x00\xD0\x85\x14\x00j\xDF\xF2\x15\xBD\xFF\x00\xAE\xCF\xFF\x00\xA1\x1A\xABV\xB5o\xF9\n\xDE\xFF\x00\xD7g\xFF\x00\xD0\x8DU\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\x02\x8A(\xA0\vZO\xFC\x85l\xBF\xEB\xB2\x7F\xE8B\x8A4\x9F\xF9\n\xD9\x7F\xD7d\xFF\x00\xD0\x85\x14\x01gQ\xB2\xBB\x9BP\xB9\x96\x1Bi\xE4\x8D\xE5fVX\xC9\x04\x12}\xAA\xB7\xF6u\xF7\xFC\xF9\\\xFF\x00\xDF\xA6\xFF\x00\n(\xA0\x03\xFB:\xFB\xFE|\xAE\x7F\xEF\xD3\x7F\x85\x1F\xD9\xD7\xDF\xF3\xE5s\xFF\x00~\x9B\xFC(\xA2\x80\x0F\xEC\xEB\xEF\xF9\xF2\xB9\xFF\x00\xBFM\xFE\x14\x7Fg_\x7F\xCF\x95\xCF\xFD\xFAo\xF0\xA2\x8A\x00?\xB3\xAF\xBF\xE7\xCA\xE7\xFE\xFD7\xF8Q\xFD\x9D}\xFF\x00>W?\xF7\xE9\xBF\xC2\x8A(\x00\xFE\xCE\xBE\xFF\x00\x9F+\x9F\xFB\xF4\xDF\xE1G\xF6u\xF7\xFC\xF9\\\xFF\x00\xDF\xA6\xFF\x00\n(\xA0\x03\xFB:\xFB\xFE|\xAE\x7F\xEF\xD3\x7F\x85\x1F\xD9\xD7\xDF\xF3\xE5s\xFF\x00~\x9B\xFC(\xA2\x80\x0F\xEC\xEB\xEF\xF9\xF2\xB9\xFF\x00\xBFM\xFE\x14\x7Fg_\x7F\xCF\x95\xCF\xFD\xFAo\xF0\xA2\x8A\x00?\xB3\xAF\xBF\xE7\xCA\xE7\xFE\xFD7\xF8Q\xFD\x9D}\xFF\x00>W?\xF7\xE9\xBF\xC2\x8A(\x00\xFE\xCE\xBE\xFF\x00\x9F+\x9F\xFB\xF4\xDF\xE1G\xF6u\xF7\xFC\xF9\\\xFF\x00\xDF\xA6\xFF\x00\n(\xA0\x03\xFB:\xFB\xFE|\xAE\x7F\xEF\xD3\x7F\x85\x1F\xD9\xD7\xDF\xF3\xE5s\xFF\x00~\x9B\xFC(\xA2\x80\x0F\xEC\xEB\xEF\xF9\xF2\xB9\xFF\x00\xBFM\xFE\x14\x7Fg_\x7F\xCF\x95\xCF\xFD\xFAo\xF0\xA2\x8A\x00\xB3\xA7Y]\xC3\xA8[K5\xB4\xF1\xC6\x92\xAB34d\x00\x01\x1E\xD4QE\x00\x7F\xFF\xD9"
anonteam_0_2.default_avatar = render.load_image(anonteam_0_2.defaut_avatar_bytes, vector(12, 12))

function anonteam_0_2.get()
	local anonteam_57_0 = {}
	local anonteam_57_1 = false
	local anonteam_57_2 = entity.get_local_player()
	local anonteam_57_3 = entity.get_players()

	for iter_57_0, iter_57_1 in ipairs(anonteam_57_3) do
		if iter_57_1:is_dormant() then
			-- block empty
		else
			local anonteam_57_4 = iter_57_1:get_name()
			local anonteam_57_5 = iter_57_1.m_hObserverTarget

			if anonteam_0_2.data[anonteam_57_4] == nil then
				anonteam_0_2.data[anonteam_57_4] = {
					alpha = 0,
					name = anonteam_57_4,
					player = iter_57_1
				}
			end

			local anonteam_57_6 = anonteam_57_5 == (anonteam_57_2:is_alive() and anonteam_57_2 or anonteam_57_2.m_hObserverTarget)

			anonteam_0_2.data[anonteam_57_4].alpha = anonteam_0_3.lerp(anonteam_0_2.data[anonteam_57_4].alpha, anonteam_57_6 and 255 or 0)

			if anonteam_57_6 then
				anonteam_57_1 = true
			end

			if anonteam_0_2.data[anonteam_57_4].alpha > 1 then
				table.insert(anonteam_57_0, {
					name = anonteam_57_4,
					alpha = anonteam_0_2.data[anonteam_57_4].alpha,
					player = iter_57_1
				})
			end
		end
	end

	return anonteam_57_0, anonteam_57_1
end

anonteam_0_7.fps_max = cvar.fps_max

local anonteam_0_32 = {
	input_lag = 0,
	lag = 0,
	delta = 0,
	cvar_fps_max = 0,
	fps_max = 0,
	fps = 0,
	last_realtime = 0,
	fps_info = {},
	update = function(arg_58_0)
		if globals.realtime > arg_58_0.last_realtime then
			arg_58_0.last_realtime = globals.realtime + 0.4
			arg_58_0.input_lag = globals.frametime * anonteam_0_9.hz * 10
			arg_58_0.lag = globals.choked_commands
			arg_58_0.delta = math.abs(anonteam_0_5.get_desync_delta())
			arg_58_0.fps = anonteam_0_29()

			table.insert(arg_58_0.fps_info, arg_58_0.fps * math.random(0.5, 1))

			arg_58_0.cvar_fps_max = anonteam_0_7.fps_max:int()

			if arg_58_0.cvar_fps_max < 200 and arg_58_0.cvar_fps_max ~= 0 then
				fps_max = arg_58_0.cvar_fps_max
			else
				arg_58_0.fps_max = math.max(100, arg_58_0.fps)
			end
		end

		if #arg_58_0.fps_info > 4 then
			table.remove(arg_58_0.fps_info, 1)
		end
	end
}

local function anonteam_0_33(arg_59_0, arg_59_1, arg_59_2, arg_59_3, arg_59_4)
	for iter_59_0 = 1, #anonteam_0_32.fps_info do
		local anonteam_59_0 = anonteam_0_32.fps_info[iter_59_0] / anonteam_0_32.fps_max * 9

		if arg_59_3 <= anonteam_59_0 then
			anonteam_59_0 = arg_59_3
		end

		render.gradient(vector(arg_59_0 + iter_59_0 * 5, arg_59_1), vector(arg_59_0 + iter_59_0 * 5, arg_59_1) + vector(arg_59_2, -anonteam_59_0), arg_59_4, arg_59_4, color(arg_59_4.r, arg_59_4.g, arg_59_4.b, 0), color(arg_59_4.r, arg_59_4.g, arg_59_4.b, 0))
	end
end

local function anonteam_0_34(arg_60_0, arg_60_1, arg_60_2)
	
	
	
	
	
	
	
	
	local anonteam_60_8 = math.floor(arg_60_0 * 6)
	local anonteam_60_9 = arg_60_0 * 6 - anonteam_60_8
	local anonteam_60_10 = arg_60_2 * (1 - arg_60_1)
	local anonteam_60_11 = arg_60_2 * (1 - anonteam_60_9 * arg_60_1)
	local anonteam_60_12 = arg_60_2 * (1 - (1 - anonteam_60_9) * arg_60_1)

	function switch(arg_61_0)
		if arg_61_0 == 0 then
			anonteam_60_0 = arg_60_2
			anonteam_60_1 = anonteam_60_12
			anonteam_60_2 = anonteam_60_10
		end

		if arg_61_0 == 1 then
			anonteam_60_0 = anonteam_60_11
			anonteam_60_1 = arg_60_2
			anonteam_60_2 = anonteam_60_10
		end

		if arg_61_0 == 2 then
			anonteam_60_0 = anonteam_60_10
			anonteam_60_1 = arg_60_2
			anonteam_60_2 = anonteam_60_12
		end

		if arg_61_0 == 3 then
			anonteam_60_0 = anonteam_60_10
			anonteam_60_1 = anonteam_60_11
			anonteam_60_2 = arg_60_2
		end

		if arg_61_0 == 4 then
			anonteam_60_0 = anonteam_60_12
			anonteam_60_1 = anonteam_60_10
			anonteam_60_2 = arg_60_2
		end

		if arg_61_0 == 5 then
			anonteam_60_0 = arg_60_2
			anonteam_60_1 = anonteam_60_10
			anonteam_60_2 = anonteam_60_11
		end
	end

	switch(anonteam_60_8 % 6)

	return {
		r = math.ceil(anonteam_60_0 * 255),
		g = math.ceil(anonteam_60_1 * 255),
		b = math.ceil(anonteam_60_2 * 255)
	}
end

local function anonteam_0_35(arg_62_0, arg_62_1, arg_62_2, arg_62_3, arg_62_4, arg_62_5, arg_62_6, arg_62_7, arg_62_8, arg_62_9)
	local anonteam_62_0 = arg_62_8 and arg_62_8 or 1
	local anonteam_62_1 = arg_62_9 and arg_62_6.a / 255 * arg_62_9 or arg_62_6.a / 255 * 45

	render.gradient(vector(arg_62_0 + arg_62_4, arg_62_1), vector(arg_62_0 + arg_62_4, arg_62_1) + vector(arg_62_2 / 2 - arg_62_4, anonteam_62_0), arg_62_5, arg_62_6, arg_62_5, arg_62_6)
	render.gradient(vector(arg_62_0 + arg_62_2 / 2, arg_62_1), vector(arg_62_0 + arg_62_4 + arg_62_2 / 2, arg_62_1) + vector(arg_62_2 / 2 - arg_62_4 * 2, anonteam_62_0), arg_62_6, arg_62_7, arg_62_6, arg_62_7)
	render.circle_outline(vector(arg_62_0 + arg_62_4, arg_62_1 + arg_62_4), arg_62_5, arg_62_4, 180, 0.25, anonteam_62_0)
	render.circle_outline(vector(arg_62_0 + arg_62_2 - arg_62_4, arg_62_1 + arg_62_4), arg_62_7, arg_62_4, 270, 0.25, anonteam_62_0)
	render.gradient(vector(arg_62_0, arg_62_1 + arg_62_4), vector(arg_62_0, arg_62_1 + arg_62_4) + vector(anonteam_62_0, arg_62_3 - arg_62_4 * 2), arg_62_5, arg_62_5, color(arg_62_5.r, arg_62_5.g, arg_62_5.b, anonteam_62_1), color(arg_62_5.r, arg_62_5.g, arg_62_5.b, anonteam_62_1))
	render.gradient(vector(arg_62_0 + arg_62_2 - anonteam_62_0, arg_62_1 + arg_62_4), vector(arg_62_0 + arg_62_2 - anonteam_62_0, arg_62_1 + arg_62_4) + vector(anonteam_62_0, arg_62_3 - arg_62_4 * 2), arg_62_7, arg_62_7, color(arg_62_7.r, arg_62_7.g, arg_62_7.b, anonteam_62_1), color(arg_62_7.r, arg_62_7.g, arg_62_7.b, anonteam_62_1))
	render.circle_outline(vector(arg_62_0 + arg_62_4, arg_62_1 + arg_62_3 - arg_62_4), color(arg_62_5.r, arg_62_5.g, arg_62_5.b, anonteam_62_1), arg_62_4, 90, 0.25, anonteam_62_0)
	render.circle_outline(vector(arg_62_0 + arg_62_2 - arg_62_4, arg_62_1 + arg_62_3 - arg_62_4), color(arg_62_7.r, arg_62_7.g, arg_62_7.b, anonteam_62_1), arg_62_4, 0, 0.25, anonteam_62_0)
	render.gradient(vector(arg_62_0 + arg_62_4, arg_62_1 + arg_62_3 - anonteam_62_0), vector(arg_62_0 + arg_62_4, arg_62_1 + arg_62_3 - anonteam_62_0) + vector(arg_62_2 / 2 - arg_62_4, anonteam_62_0), color(arg_62_5.r, arg_62_5.g, arg_62_5.b, anonteam_62_1), color(arg_62_6.r, arg_62_6.g, arg_62_6.b, anonteam_62_1), color(arg_62_5.r, arg_62_5.g, arg_62_5.b, anonteam_62_1), color(arg_62_6.r, arg_62_6.g, arg_62_6.b, anonteam_62_1))
	render.gradient(vector(arg_62_0 + arg_62_2 / 2, arg_62_1 + arg_62_3 - anonteam_62_0), vector(arg_62_0 + arg_62_2 / 2, arg_62_1 + arg_62_3 - anonteam_62_0) + vector(arg_62_2 / 2 - arg_62_4, anonteam_62_0), color(arg_62_6.r, arg_62_6.g, arg_62_6.b, anonteam_62_1), color(arg_62_7.r, arg_62_7.g, arg_62_7.b, anonteam_62_1), color(arg_62_6.r, arg_62_6.g, arg_62_6.b, anonteam_62_1), color(arg_62_7.r, arg_62_7.g, arg_62_7.b, anonteam_62_1))
end

local function anonteam_0_36(arg_63_0, arg_63_1, arg_63_2, arg_63_3, arg_63_4, arg_63_5, arg_63_6, arg_63_7)
	local anonteam_63_0 = arg_63_7 and arg_63_7 or 1

	render.gradient(vector(arg_63_0 + arg_63_4, arg_63_1), vector(arg_63_0 + arg_63_4, arg_63_1) + vector(arg_63_2 / 2 - arg_63_4, anonteam_63_0), arg_63_5, arg_63_6, arg_63_5, arg_63_6)
	render.gradient(vector(arg_63_0 + arg_63_2 / 2, arg_63_1), vector(arg_63_0 + arg_63_4 + arg_63_2 / 2, arg_63_1) + vector(arg_63_2 / 2 - arg_63_4 * 2, anonteam_63_0), arg_63_6, arg_63_6, arg_63_6, arg_63_6)
	render.circle_outline(vector(arg_63_0 + arg_63_4, arg_63_1 + arg_63_4), arg_63_5, arg_63_4, 180, 0.25, anonteam_63_0)
	render.circle_outline(vector(arg_63_0 + arg_63_2 - arg_63_4, arg_63_1 + arg_63_4), arg_63_6, arg_63_4, 270, 0.25, anonteam_63_0)
	render.gradient(vector(arg_63_0, arg_63_1 + arg_63_4), vector(arg_63_0, arg_63_1 + arg_63_4) + vector(anonteam_63_0, arg_63_3 - arg_63_4 * 2), arg_63_5, arg_63_5, arg_63_5, arg_63_5)
	render.gradient(vector(arg_63_0 + arg_63_2 - anonteam_63_0, arg_63_1 + arg_63_4), vector(arg_63_0 + arg_63_2 - anonteam_63_0, arg_63_1 + arg_63_4) + vector(anonteam_63_0, arg_63_3 - arg_63_4 * 2), arg_63_6, arg_63_6, arg_63_6, arg_63_6)
	render.circle_outline(vector(arg_63_0 + arg_63_4, arg_63_1 + arg_63_3 - arg_63_4), arg_63_5, arg_63_4, 90, 0.25, anonteam_63_0)
	render.circle_outline(vector(arg_63_0 + arg_63_2 - arg_63_4, arg_63_1 + arg_63_3 - arg_63_4), arg_63_6, arg_63_4, 0, 0.25, anonteam_63_0)
	render.gradient(vector(arg_63_0 + arg_63_4, arg_63_1 + arg_63_3 - anonteam_63_0), vector(arg_63_0 + arg_63_4, arg_63_1 + arg_63_3 - anonteam_63_0) + vector(arg_63_2 / 2 - arg_63_4, anonteam_63_0), arg_63_5, arg_63_6, arg_63_5, arg_63_6)
	render.gradient(vector(arg_63_0 + arg_63_2 / 2, arg_63_1 + arg_63_3 - anonteam_63_0), vector(arg_63_0 + arg_63_2 / 2, arg_63_1 + arg_63_3 - anonteam_63_0) + vector(arg_63_2 / 2 - arg_63_4, anonteam_63_0), arg_63_6, arg_63_6, arg_63_6, arg_63_6)
end

local function anonteam_0_37(arg_64_0, arg_64_1, arg_64_2, arg_64_3, arg_64_4, arg_64_5, arg_64_6, arg_64_7, arg_64_8)
	if arg_64_0 == "disable" then
		return
	end

	local anonteam_64_0 = (anonteam_0_10.elements.fade_offset and anonteam_0_10.elements.fade_offset:get() or 520) / 1000
	local anonteam_64_1 = anonteam_0_10.elements.fade_anim_speed and anonteam_0_10.elements.fade_anim_speed:get() or 3
	local anonteam_64_2 = arg_64_0 == "fade" and anonteam_64_0 or globals.realtime / anonteam_64_1
	local anonteam_64_3 = anonteam_0_34(anonteam_64_2, 1, 1)
	local anonteam_64_4 = color(arg_64_5.r, arg_64_5.g, arg_64_5.b, arg_64_5.a * 0)
	local anonteam_64_5 = arg_64_0 == "static" and arg_64_5 or arg_64_0 == "gradient" and anonteam_64_4 or color(anonteam_64_3.r, anonteam_64_3.g, anonteam_64_3.b, arg_64_5.a)
	local anonteam_64_6 = arg_64_0 == "static" and arg_64_5 or arg_64_0 == "gradient" and arg_64_5 or color(anonteam_64_3.b, anonteam_64_3.r, anonteam_64_3.g, arg_64_5.a)
	local anonteam_64_7 = arg_64_0 == "static" and arg_64_5 or arg_64_0 == "gradient" and anonteam_64_4 or color(anonteam_64_3.g, anonteam_64_3.b, anonteam_64_3.r, arg_64_5.a)

	if arg_64_6 and arg_64_6 > 0 then
		anonteam_0_35(arg_64_1, arg_64_2, arg_64_3, arg_64_4, arg_64_6, anonteam_64_5, anonteam_64_6, anonteam_64_7, arg_64_7, arg_64_8)

		return
	end

	render.gradient(vector(arg_64_1, arg_64_2), vector(arg_64_1 + arg_64_3 / 2, arg_64_2 + arg_64_4), anonteam_64_5, anonteam_64_6, anonteam_64_5, anonteam_64_6)
	render.gradient(vector(arg_64_1 + arg_64_3 / 2, arg_64_2), vector(arg_64_1 + arg_64_3, arg_64_2 + arg_64_4), anonteam_64_6, anonteam_64_7, anonteam_64_6, anonteam_64_7)
end

local function anonteam_0_38(arg_65_0, arg_65_1, arg_65_2, arg_65_3, arg_65_4, arg_65_5)
	if not (anonteam_0_10.elements.glow_enable and anonteam_0_10.elements.glow_enable:get() or false) then
		return
	end

	local anonteam_65_0 = arg_65_4 and arg_65_4 or 0
	local anonteam_65_1 = anonteam_0_10.elements.glow_color and anonteam_0_10.elements.glow_color:get() or color()
	local anonteam_65_2 = anonteam_0_10.elements.glow_size and anonteam_0_10.elements.glow_size:get() or 25
	local anonteam_65_3 = anonteam_0_10.elements.glow_pulse and anonteam_0_10.elements.glow_pulse:get() or false

	anonteam_65_1.a = anonteam_65_1.a * (arg_65_5 or 0)

	if anonteam_65_3 then
		anonteam_65_1.a = anonteam_65_1.a * anonteam_0_24()
	end

	render.shadow(vector(arg_65_0, arg_65_1), vector(arg_65_0 + arg_65_2, arg_65_1 + arg_65_3), anonteam_65_1, anonteam_65_2, nil, anonteam_65_0)
end

anonteam_0_9.hz = anonteam_0_0.pLpDevMode[0].dmDisplayFrequency
anonteam_0_9.user = common.get_username()
anonteam_0_9.screen = render.screen_size()
anonteam_0_9.steam_name = panorama.MyPersonaAPI.GetName()
anonteam_0_4.slow_wark = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk")
anonteam_0_4.double_tap = ui.find("Aimbot", "Ragebot", "Main", "Double Tap")
anonteam_0_4.hide_shots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots")
anonteam_0_4.fake_duck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck")
anonteam_0_4.roll = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles")
anonteam_0_4.body_aim = ui.find("Aimbot", "Ragebot", "Safety", "Body Aim")
anonteam_0_4.safe_points = ui.find("Aimbot", "Ragebot", "Safety", "Safe Points")
anonteam_0_4.thirdperson = ui.find("Visuals", "World", "Main", "Force Thirdperson")

local function anonteam_0_39()
	return ui.get_style()["Link Active"]
end

function string.color(arg_67_0, arg_67_1, arg_67_2)
	if arg_67_1 == nil then
		arg_67_1 = anonteam_0_39()
	end

	arg_67_1 = arg_67_2 == true and arg_67_1:to_hex() or arg_67_1:to_hex():sub(1, 6)

	return "\a" .. arg_67_1 .. arg_67_0 .. "\aDEFAULT"
end

local function anonteam_0_40(arg_68_0)
	panorama.SteamOverlayAPI.OpenExternalBrowserURL(arg_68_0)
end

local function anonteam_0_41(arg_69_0, arg_69_1)
	return (ui.get_icon(arg_69_0) or "") .. (arg_69_1 ~= nil and "  " .. arg_69_1 or "")
end

anonteam_0_11.home = anonteam_0_41("house", "Home")

local anonteam_0_42 = require("neverlose/pui")

local anonteam_0_44 = anonteam_0_42.create(anonteam_0_11.home, "products", 1)

anonteam_0_44:label("\v\f<flask>   \revalate \xE2\x80\xBA Beta")
anonteam_0_44:button("  \v\f<arrow-up-right-from-square>  \rTry for free  ", function()
	anonteam_0_40("http://market.neverlose.cc/")
end, true)
anonteam_0_44:label("\v\f<discord>  \revalate \xE2\x80\xBA Discord")
anonteam_0_44:button("  \v\f<arrow-up-right-from-square>  \rJoin  ", function()
	anonteam_0_40("https://discord.gg/")
end, true)


local anonteam_0_46 = anonteam_0_42.create(anonteam_0_11.home, "start earn with evalate", 1)

anonteam_0_46:label("\v\f<money-bill>  \rBring referrals and get a percentage for their purchases")
anonteam_0_46:button("      \v\f<arrow-up-right-from-square>  \rLearn more in \v#start-earn \rchannel      ", function()
	anonteam_0_40("https://discord.gg/")
end, true)

anonteam_0_11.config = ui.create(anonteam_0_11.home, anonteam_0_41("cloud", "Config"), 2)

anonteam_0_10.new("config_type", anonteam_0_11.config:combo("Config Type", {
	"Cloud",
	"Clipboard"
}))
anonteam_0_10.new("config_list", anonteam_0_11.config:combo("List", {
	"reload me!"
}), function()
	return anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.new("config_load", anonteam_0_11.config:button(anonteam_0_41("download", "Load"), nil, true), function()
	return anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.elements.config_load:set_callback(function()
	anonteam_0_28.load_config(anonteam_0_10.elements.config_list:get())
end)
anonteam_0_10.new("config_delete", anonteam_0_11.config:button(anonteam_0_41("trash", "Delete"), nil, true), function()
	return anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.elements.config_delete:set_callback(function()
	anonteam_0_28.delete_config(anonteam_0_10.elements.config_list:get())
end)
anonteam_0_10.new("config_reload", anonteam_0_11.config:button(anonteam_0_41("rotate", "Reload"), nil, true), function()
	return anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.elements.config_reload:set_callback(function()
	anonteam_0_28.update_configs_and_list(anonteam_0_10.elements.config_list)
end)
anonteam_0_10.new("config_manage", anonteam_0_11.config:switch("Manage"), function()
	return anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.new("config_name", anonteam_0_11.config:input("Name"), function()
	return anonteam_0_10.elements.config_manage:get() and anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.new("config_upload", anonteam_0_11.config:button(anonteam_0_41("upload", "Upload"), nil, true), function()
	return anonteam_0_10.elements.config_manage:get() and anonteam_0_10.elements.config_type:get() == "Cloud"
end)
anonteam_0_10.elements.config_upload:set_callback(function()
	anonteam_0_28.post_my_config(anonteam_0_10.elements.config_name:get())
end)
anonteam_0_10.new("config_copy", anonteam_0_11.config:button(anonteam_0_41("copy", "Copy Config"), nil, true), function()
	return anonteam_0_10.elements.config_type:get() == "Clipboard"
end)
anonteam_0_10.elements.config_copy:set_callback(function()
	anonteam_0_28.copy()
end)
anonteam_0_10.new("config_load_copied", anonteam_0_11.config:button(anonteam_0_41("download", "Load Copied Config"), nil, true), function()
	return anonteam_0_10.elements.config_type:get() == "Clipboard"
end)
anonteam_0_10.elements.config_load_copied:set_callback(function()
	anonteam_0_28.paste()
end)

anonteam_0_11.extra = ui.create(anonteam_0_11.home, anonteam_0_41("angles-right", "Extra"), 1)
anonteam_0_11.settings = anonteam_0_41("gear", "Settings")
anonteam_0_11.main = ui.create(anonteam_0_11.settings, anonteam_0_41("car", "Main"))

anonteam_0_10.new("tab", anonteam_0_11.main:combo("Tab", {
	"Watermark",
	"Exploiting",
	"Frequency",
	"Bomb",
	"Buylist",
	"Keybinds",
	"Spectators",
	"Holo Panel"
}))
anonteam_0_10.new("style", anonteam_0_11.main:combo("Style", {
	"loading..."
}))
anonteam_0_10.new("line_style", anonteam_0_11.main:combo("Line", {
	"Disable",
	"Static",
	"Gradient",
	"Fade",
	"Anim. Fade"
}))

anonteam_0_11.line_style = anonteam_0_10.elements.line_style:create()

anonteam_0_10.new("fade_anim_speed", anonteam_0_11.line_style:slider("Anim. Speed", 1, 10, 3), function()
	return anonteam_0_10.elements.line_style:get() == "Anim. Fade"
end)
anonteam_0_10.new("fade_offset", anonteam_0_11.line_style:slider("Offset", 1, 1000, 520), function()
	return anonteam_0_10.elements.line_style:get() == "Fade"
end)
anonteam_0_10.new("glow_enable", anonteam_0_11.main:switch("Glow"))

anonteam_0_11.glow = anonteam_0_10.elements.glow_enable:create()

anonteam_0_10.new("glow_pulse", anonteam_0_11.glow:switch("Pulse"))
anonteam_0_10.new("glow_color", anonteam_0_11.glow:color_picker("Color", color(116, 153, 249, 130)))
anonteam_0_10.new("glow_size", anonteam_0_11.glow:slider("Size", 0, 70, 50))
anonteam_0_10.new("global_color", anonteam_0_11.main:color_picker("Global", color(80, 165, 222)))
anonteam_0_10.new("background_color", anonteam_0_11.main:color_picker("Background", color(0, 0, 0, 100)))

function anonteam_0_1.new(arg_90_0, arg_90_1)
	table.insert(anonteam_0_1.data, {
		name = arg_90_0,
		callback = arg_90_1
	})
end

function anonteam_0_1.get_active()
	local anonteam_91_0 = {}

	for iter_91_0, iter_91_1 in ipairs(anonteam_0_1.data) do
		if anonteam_0_10.elements["watermark_" .. iter_91_1.name]:get() then
			table.insert(anonteam_91_0, iter_91_1.callback())
		end
	end

	return anonteam_91_0
end

anonteam_0_11.watermark = ui.create(anonteam_0_11.settings, anonteam_0_41("qrcode", "Watermark"))

anonteam_0_10.new("watermark_enable", anonteam_0_11.watermark:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark"
end)
anonteam_0_10.new("watermark_cheatname", anonteam_0_11.watermark:switch("Cheat Name"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark" and anonteam_0_10.elements.watermark_enable:get()
end)

anonteam_0_11.watermark_cheatname = anonteam_0_10.elements.watermark_cheatname:create()

anonteam_0_10.new("watermark_cheatname_style", anonteam_0_11.watermark_cheatname:combo("Style", {
	"Cheat",
	"Custom"
}))
anonteam_0_10.new("watermark_cheatname_custom", anonteam_0_11.watermark_cheatname:input("Custom One"), function()
	return anonteam_0_10.elements.watermark_cheatname_style:get() == "Custom"
end)
anonteam_0_10.new("watermark_cheatname_custom_two", anonteam_0_11.watermark_cheatname:input("Custom Two"), function()
	return anonteam_0_10.elements.watermark_cheatname_style:get() == "Custom" and (anonteam_0_10.elements.watermark_cheatname_style_col and anonteam_0_10.elements.watermark_cheatname_style_col:get() == "Simple" or false)
end)
anonteam_0_10.new("watermark_cheatname_style_col", anonteam_0_11.watermark_cheatname:combo("Style Color", {
	"Default",
	"Simple",
	"Gradient",
	"Anim. Gradient"
}))
anonteam_0_10.new("watermark_cheatname_color_one", anonteam_0_11.watermark_cheatname:color_picker("Color One", color(255, 107, 205)), function()
	return anonteam_0_10.elements.watermark_cheatname_style_col:get() ~= "Default"
end)
anonteam_0_10.new("watermark_cheatname_color_two", anonteam_0_11.watermark_cheatname:color_picker("Color Two", color(255, 230, 142)), function()
	return anonteam_0_10.elements.watermark_cheatname_style_col:get() ~= "Default"
end)

local function anonteam_0_47(arg_98_0)
	if arg_98_0 == nil or #arg_98_0 < 1 then
		return "", ""
	end

	local anonteam_98_0 = arg_98_0:sub(1, math.floor(#arg_98_0 / 2 + 0.5)) or ""
	local anonteam_98_1 = arg_98_0:sub(math.floor(#arg_98_0 / 2 + 0.5) + 1, #arg_98_0) or ""

	return anonteam_98_0, anonteam_98_1
end

anonteam_0_1.new("cheatname", function()
	local anonteam_99_0 = anonteam_0_10.elements.watermark_cheatname_style:get()
	local anonteam_99_1 = anonteam_0_10.elements.watermark_cheatname_style_col:get()
	local anonteam_99_2 = anonteam_0_10.elements.watermark_cheatname_color_one:get()
	local anonteam_99_3 = anonteam_0_10.elements.watermark_cheatname_color_two:get()
	local anonteam_99_4 = anonteam_99_0 == "Custom" and anonteam_0_10.elements.watermark_cheatname_custom:get() or "neverlose"

	if anonteam_99_1 == "Simple" then
		local anonteam_99_5, anonteam_99_6 = anonteam_0_47(anonteam_99_4)

		if anonteam_99_0 == "Custom" then
			anonteam_99_5, anonteam_99_6 = anonteam_0_10.elements.watermark_cheatname_custom:get(), anonteam_0_10.elements.watermark_cheatname_custom_two:get()
		end

		return string.multi_color({
			{
				anonteam_99_5,
				anonteam_99_2
			},
			{
				anonteam_99_6,
				anonteam_99_3
			}
		}, true) .. "\a" .. color():to_hex()
	end

	if anonteam_99_1 == "Gradient" or anonteam_99_1 == "Anim. Gradient" then
		local anonteam_99_7 = anonteam_0_12.gradient.text_animate(anonteam_99_4, -1, {
			anonteam_99_2,
			anonteam_99_3
		})

		if anonteam_99_1 == "Anim. Gradient" then
			anonteam_99_7:animate()
		end

		return anonteam_99_7:get_animated_text() .. "\a" .. color():to_hex()
	end

	return anonteam_99_4
end)
anonteam_0_10.new("watermark_username", anonteam_0_11.watermark:switch("Username"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark" and anonteam_0_10.elements.watermark_enable:get()
end)

anonteam_0_11.watermark_username = anonteam_0_10.elements.watermark_username:create()

anonteam_0_10.new("watermark_username_style", anonteam_0_11.watermark_username:combo("Style", {
	"Cheat",
	"Steam",
	"Custom"
}))
anonteam_0_10.new("watermark_username_custom", anonteam_0_11.watermark_username:input("Custom"), function()
	return anonteam_0_10.elements.watermark_username_style:get() == "Custom"
end)
anonteam_0_1.new("username", function()
	local anonteam_102_0 = anonteam_0_10.elements.watermark_username_style:get()

	if anonteam_102_0 == "Steam" then
		return anonteam_0_9.steam_name
	end

	if anonteam_102_0 == "Custom" then
		return anonteam_0_10.elements.watermark_username_custom:get()
	end

	return anonteam_0_9.user
end)
anonteam_0_10.new("watermark_fps", anonteam_0_11.watermark:switch("Fps"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark" and anonteam_0_10.elements.watermark_enable:get()
end)
anonteam_0_1.new("fps", function()
	return tostring(anonteam_0_32.fps) .. " fps"
end)
anonteam_0_10.new("watermark_ping", anonteam_0_11.watermark:switch("Ping"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark" and anonteam_0_10.elements.watermark_enable:get()
end)
anonteam_0_1.new("ping", function()
	return "delay: " .. tostring(anonteam_0_30()) .. "ms"
end)
anonteam_0_10.new("watermark_server", anonteam_0_11.watermark:switch("Server"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark" and anonteam_0_10.elements.watermark_enable:get()
end)
anonteam_0_1.new("server", function()
	return anonteam_0_31()
end)
anonteam_0_10.new("watermark_time", anonteam_0_11.watermark:switch("Time"), function()
	return anonteam_0_10.elements.tab:get() == "Watermark" and anonteam_0_10.elements.watermark_enable:get()
end)

anonteam_0_11.watermark_time = anonteam_0_10.elements.watermark_time:create()

anonteam_0_10.new("watermark_time_type", anonteam_0_11.watermark_time:combo("Type", {
	"24h",
	"12h"
}))
anonteam_0_10.new("watermark_time_select", anonteam_0_11.watermark_time:selectable("Select", {
	"Hours",
	"Minutes",
	"Seconds"
}))
anonteam_0_1.new("time", function()
	local anonteam_110_0 = anonteam_0_10.elements.watermark_time_type:get()
	local anonteam_110_1 = {
		{
			name = "Hours",
			string = anonteam_110_0 == "24h" and "%H" or "%I"
		},
		{
			name = "Minutes",
			string = "%M"
		},
		{
			name = "Seconds",
			string = "%S"
		}
	}
	local anonteam_110_2 = {}

	for iter_110_0, iter_110_1 in pairs(anonteam_110_1) do
		if anonteam_0_22(anonteam_0_10.elements.watermark_time_select:get(), iter_110_1.name) then
			table.insert(anonteam_110_2, iter_110_1.string)
		end
	end

	local anonteam_110_3 = table.concat(anonteam_110_2, ":")
	local anonteam_110_4 = string.lower(common.get_date("%p"))

	return common.get_date(anonteam_110_3) .. (anonteam_110_0 == "12h" and " " .. anonteam_110_4 or "")
end)

anonteam_0_11.holo_panel = ui.create(anonteam_0_11.settings, anonteam_0_41("solar-panel", "Holo Panel"))

anonteam_0_10.new("holo_panel_enable", anonteam_0_11.holo_panel:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Holo Panel"
end)
anonteam_0_10.new("holo_panel_in_thirdperson", anonteam_0_11.holo_panel:switch("In Thirdperson"), function()
	return anonteam_0_10.elements.tab:get() == "Holo Panel" and anonteam_0_10.elements.holo_panel_enable:get()
end)
anonteam_0_10.new("holo_panel_in_scope", anonteam_0_11.holo_panel:switch("In Scope"), function()
	return anonteam_0_10.elements.tab:get() == "Holo Panel" and anonteam_0_10.elements.holo_panel_enable:get()
end)
anonteam_0_10.new("holo_panel_pos", anonteam_0_11.holo_panel:combo("Position", {
	"Auto",
	"Right",
	"Left"
}), function()
	return anonteam_0_10.elements.tab:get() == "Holo Panel" and anonteam_0_10.elements.holo_panel_enable:get()
end)

anonteam_0_11.holo_panel_pos = anonteam_0_10.elements.holo_panel_pos:create()

anonteam_0_10.new("holo_panel_pos_x", anonteam_0_11.holo_panel_pos:slider("X", 0, 100))
anonteam_0_10.new("holo_panel_pos_y", anonteam_0_11.holo_panel_pos:slider("Y", 0, 100))

anonteam_0_11.exploiting = ui.create(anonteam_0_11.settings, anonteam_0_41("recycle", "Exploiting"))

anonteam_0_10.new("exploiting_enable", anonteam_0_11.exploiting:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Exploiting"
end)
anonteam_0_10.new("exploiting_charged_color", anonteam_0_11.exploiting:color_picker("Charged", color(255, 153, 0)), function()
	return anonteam_0_10.elements.tab:get() == "Exploiting" and anonteam_0_10.elements.exploiting_enable:get()
end)
anonteam_0_10.new("exploiting_uncharged_color", anonteam_0_11.exploiting:color_picker("Uncharged"), function()
	return anonteam_0_10.elements.tab:get() == "Exploiting" and anonteam_0_10.elements.exploiting_enable:get()
end)

anonteam_0_11.frequency = ui.create(anonteam_0_11.settings, anonteam_0_41("water", "Frequency"))

anonteam_0_10.new("frequency_enable", anonteam_0_11.frequency:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Frequency"
end)
anonteam_0_10.new("frequency_graphic_color", anonteam_0_11.frequency:color_picker("Graphic", color(80, 165, 222)), function()
	return anonteam_0_10.elements.tab:get() == "Frequency" and anonteam_0_10.elements.frequency_enable:get()
end)

anonteam_0_11.bomb = ui.create(anonteam_0_11.settings, anonteam_0_41("bomb", "Bomb"))

anonteam_0_10.new("bomb_enable", anonteam_0_11.bomb:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Bomb"
end)

anonteam_0_6.data = {}
anonteam_0_6.names = {}

function anonteam_0_6.new(arg_121_0)
	table.insert(anonteam_0_6.names, arg_121_0)
	anonteam_0_10.elements.style:update(anonteam_0_6.names)

	return {
		object = function(arg_122_0, arg_122_1, arg_122_2)
			anonteam_0_6.data[arg_121_0] = setmetatable(arg_122_2, {
				__index = arg_122_1
			})
		end
	}
end

function anonteam_0_6.get(arg_123_0)
	return anonteam_0_6.data[arg_123_0] or {}
end

anonteam_0_6.mt = {
	binds_start = 20,
	next_line = 25,
	prefix = "",
	circle_add = vector(),
	watermark = function()
		return
	end,
	fake = function()
		return
	end,
	fl = function()
		return
	end,
	hz = function()
		return
	end,
	io = function()
		return
	end,
	keybinds = function()
		return
	end,
	holo_panel = function()
		return
	end
}

anonteam_0_6.new("Version 1.0"):object(anonteam_0_6.mt, {
	prefix = " | ",
	watermark = function(arg_131_0, arg_131_1)
		arg_131_1.w = arg_131_1.w + 10

		if arg_131_1.line then
			anonteam_0_37(arg_131_1.style, arg_131_1.x, arg_131_1.y - 2, arg_131_1.w, 2, arg_131_1.global_color)
		end

		render.rect(vector(arg_131_1.x, arg_131_1.y), vector(arg_131_1.x, arg_131_1.y) + vector(arg_131_1.w, 18), arg_131_1.color)
		anonteam_0_38(arg_131_1.x, arg_131_1.y, arg_131_1.w, 18, 0, arg_131_1.alpha)
		render.text(1, vector(arg_131_1.x + 5, arg_131_1.y + 2), color(255, 255, 255, 255 * arg_131_1.alpha), "d", arg_131_1.text)
	end,
	fake = function(arg_132_0, arg_132_1)
		arg_132_1.w = arg_132_1.w + 10

		local anonteam_132_0 = color(arg_132_1.desync_color.r, arg_132_1.desync_color.g, arg_132_1.desync_color.b, 0)
		local anonteam_132_1 = color(arg_132_1.color.r, arg_132_1.color.g, arg_132_1.color.b, 50 * (arg_132_1.color.a / 255))

		render.gradient(vector(arg_132_1.x - 1, arg_132_1.y), vector(arg_132_1.x, arg_132_1.y + 8), anonteam_132_0, anonteam_132_0, arg_132_1.desync_color, arg_132_1.desync_color)
		render.gradient(vector(arg_132_1.x - 1, arg_132_1.y + 8), vector(arg_132_1.x, arg_132_1.y + 16), arg_132_1.desync_color, arg_132_1.desync_color, anonteam_132_0, anonteam_132_0)
		render.gradient(vector(arg_132_1.x, arg_132_1.y), vector(arg_132_1.x + arg_132_1.w / 2, arg_132_1.y + 18), anonteam_132_1, arg_132_1.color, anonteam_132_1, arg_132_1.color)
		render.gradient(vector(arg_132_1.x + arg_132_1.w / 2, arg_132_1.y), vector(arg_132_1.x + arg_132_1.w, arg_132_1.y + 18), arg_132_1.color, anonteam_132_1, arg_132_1.color, anonteam_132_1)
		anonteam_0_38(arg_132_1.x, arg_132_1.y, arg_132_1.w, 18, 0, arg_132_1.alpha)
		render.text(1, vector(arg_132_1.x + 5, arg_132_1.y + 2), color(255, 255, 255, 255 * arg_132_1.alpha), "d", arg_132_1.text)
	end,
	fl = function(arg_133_0, arg_133_1)
		arg_133_1.w = arg_133_1.w + 10

		local anonteam_133_0 = color(arg_133_1.delta_color.r, arg_133_1.delta_color.g, arg_133_1.delta_color.b, 0)

		render.rect(vector(arg_133_1.x, arg_133_1.y), vector(arg_133_1.x, arg_133_1.y) + vector(arg_133_1.w, 18), arg_133_1.color)
		anonteam_0_38(arg_133_1.x, arg_133_1.y, arg_133_1.w, 18, 0, arg_133_1.alpha)
		render.text(1, vector(arg_133_1.x + 5, arg_133_1.y + 2), color(255, 255, 255, 255 * arg_133_1.alpha), "d", arg_133_1.text)
		render.gradient(vector(arg_133_1.x, arg_133_1.y + 18), vector(arg_133_1.x + arg_133_1.w / 2, arg_133_1.y + 19), anonteam_133_0, arg_133_1.delta_color, anonteam_133_0, arg_133_1.delta_color)
		render.gradient(vector(arg_133_1.x + arg_133_1.w / 2, arg_133_1.y + 18), vector(arg_133_1.x + arg_133_1.w, arg_133_1.y + 19), arg_133_1.delta_color, anonteam_133_0, arg_133_1.delta_color, anonteam_133_0)
	end,
	hz = function(arg_134_0, arg_134_1)
		arg_134_0:watermark(arg_134_1)
	end,
	io = function(arg_135_0, arg_135_1)
		arg_135_0:watermark(arg_135_1)
		anonteam_0_33(arg_135_1.x + 25, arg_135_1.y + 15, 6, 12, arg_135_1.global_color)
	end,
	keybinds = function(arg_136_0, arg_136_1)
		local anonteam_136_0 = arg_136_1.ext and arg_136_1.ext * 15 + 3 or 0

		anonteam_0_37(arg_136_1.style, arg_136_1.x, arg_136_1.y - 2, arg_136_1.w, 2, arg_136_1.global_color)
		render.rect(vector(arg_136_1.x, arg_136_1.y), vector(arg_136_1.x, arg_136_1.y) + vector(arg_136_1.w, 18 + anonteam_136_0), arg_136_1.color)
		anonteam_0_38(arg_136_1.x, arg_136_1.y, arg_136_1.w, 18 + anonteam_136_0, 0, arg_136_1.alpha)
		render.text(1, vector(arg_136_1.x + arg_136_1.w / 2, arg_136_1.y + 8), color(255, 255, 255, 255 * arg_136_1.alpha), "dc", arg_136_1.text)
	end,
	holo_panel = function(arg_137_0, arg_137_1)
		if arg_137_1.line then
			anonteam_0_37(arg_137_1.style, arg_137_1.x, arg_137_1.y - 2, arg_137_1.w, 2, arg_137_1.global_color)
		end

		render.rect(vector(arg_137_1.x, arg_137_1.y), vector(arg_137_1.x, arg_137_1.y) + vector(arg_137_1.w, arg_137_1.h), arg_137_1.color)
		anonteam_0_38(arg_137_1.x, arg_137_1.y, arg_137_1.w, arg_137_1.h, 0, arg_137_1.alpha)
	end
})

local function anonteam_0_48(arg_138_0, arg_138_1, arg_138_2, arg_138_3, arg_138_4, arg_138_5, arg_138_6)
	arg_138_6 = arg_138_6 or 0

	render.rect(vector(arg_138_0, arg_138_1), vector(arg_138_0, arg_138_1) + vector(arg_138_2, arg_138_3), arg_138_4, arg_138_6)
	anonteam_0_38(arg_138_0, arg_138_1, arg_138_2, arg_138_3, 0, arg_138_5)
end

anonteam_0_6.new("Version 1.5"):object(anonteam_0_6.mt, {
	binds_start = 23,
	prefix = " | ",
	circle_add = vector(0, 1),
	watermark = function(arg_139_0, arg_139_1)
		arg_139_1.w = arg_139_1.w + 10

		render.rect(vector(arg_139_1.x, arg_139_1.y), vector(arg_139_1.x, arg_139_1.y) + vector(arg_139_1.w, 20), arg_139_1.color, 4)
		render.text(1, vector(arg_139_1.x + 5, arg_139_1.y + 3), color(255, 255, 255, 255 * arg_139_1.alpha), "d", arg_139_1.text)

		if arg_139_1.line then
			local anonteam_139_0 = 8
			local anonteam_139_1 = 2

			anonteam_0_48(arg_139_1.x - anonteam_139_1 / 2, arg_139_1.y + 10 - anonteam_139_0 / 2, anonteam_139_1, anonteam_139_0, arg_139_1.global_color, arg_139_1.alpha, 5)
			anonteam_0_48(arg_139_1.x + arg_139_1.w - anonteam_139_1 / 2, arg_139_1.y + 10 - anonteam_139_0 / 2, anonteam_139_1, anonteam_139_0, arg_139_1.global_color, arg_139_1.alpha, 5)
		end
	end,
	fake = function(arg_140_0, arg_140_1)
		arg_140_1.w = arg_140_1.w + 10

		render.rect(vector(arg_140_1.x, arg_140_1.y), vector(arg_140_1.x, arg_140_1.y) + vector(arg_140_1.w, 20), arg_140_1.color, 4)
		render.text(1, vector(arg_140_1.x + 5, arg_140_1.y + 3), color(255, 255, 255, 255 * arg_140_1.alpha), "d", arg_140_1.text)

		if arg_140_1.line then
			local anonteam_140_0 = 8
			local anonteam_140_1 = 2

			anonteam_0_48(arg_140_1.x - anonteam_140_1 / 2, arg_140_1.y + 10 - anonteam_140_0 / 2, anonteam_140_1, anonteam_140_0, arg_140_1.global_color, arg_140_1.alpha, 5)
			anonteam_0_48(arg_140_1.x + arg_140_1.w - anonteam_140_1 / 2, arg_140_1.y + 10 - anonteam_140_0 / 2, anonteam_140_1, anonteam_140_0, arg_140_1.global_color, arg_140_1.alpha, 5)
		end
	end,
	fl = function(arg_141_0, arg_141_1)
		arg_141_1.w = arg_141_1.w + 10

		render.rect(vector(arg_141_1.x, arg_141_1.y), vector(arg_141_1.x, arg_141_1.y) + vector(arg_141_1.w, 20), arg_141_1.color, 4)
		render.text(1, vector(arg_141_1.x + 5, arg_141_1.y + 3), color(255, 255, 255, 255 * arg_141_1.alpha), "d", arg_141_1.text)

		if arg_141_1.line then
			local anonteam_141_0 = 8
			local anonteam_141_1 = 2

			anonteam_0_48(arg_141_1.x - anonteam_141_1 / 2, arg_141_1.y + 10 - anonteam_141_0 / 2, anonteam_141_1, anonteam_141_0, arg_141_1.global_color, arg_141_1.alpha, 5)
			anonteam_0_48(arg_141_1.x + arg_141_1.w - anonteam_141_1 / 2, arg_141_1.y + 10 - anonteam_141_0 / 2, anonteam_141_1, anonteam_141_0, arg_141_1.global_color, arg_141_1.alpha, 5)
		end
	end,
	hz = function(arg_142_0, arg_142_1)
		arg_142_0:watermark(arg_142_1)
	end,
	io = function(arg_143_0, arg_143_1)
		arg_143_0:watermark(arg_143_1)
		anonteam_0_33(arg_143_1.x + 25, arg_143_1.y + 15, 6, 12, arg_143_1.global_color)
	end,
	keybinds = function(arg_144_0, arg_144_1)
		local anonteam_144_0 = arg_144_1.ext and arg_144_1.ext * 15 + 3 or 0

		render.rect(vector(arg_144_1.x, arg_144_1.y), vector(arg_144_1.x, arg_144_1.y) + vector(arg_144_1.w, 20 + anonteam_144_0), arg_144_1.color, 4)
		render.text(1, vector(arg_144_1.x + arg_144_1.w / 2, arg_144_1.y + 9), color(255, 255, 255, 255 * arg_144_1.alpha), "dc", arg_144_1.text)

		local anonteam_144_1 = 8 * (arg_144_1.ext and (arg_144_1.ext < 1 and 1 or arg_144_1.ext) or 1)
		local anonteam_144_2 = 2

		anonteam_0_48(arg_144_1.x - anonteam_144_2 / 2, arg_144_1.y + 10 - anonteam_144_1 / 2 + anonteam_144_0 / 2, anonteam_144_2, anonteam_144_1, arg_144_1.global_color, arg_144_1.alpha, 5)
		anonteam_0_48(arg_144_1.x + arg_144_1.w - anonteam_144_2 / 2, arg_144_1.y + 10 - anonteam_144_1 / 2 + anonteam_144_0 / 2, anonteam_144_2, anonteam_144_1, arg_144_1.global_color, arg_144_1.alpha, 5)
	end,
	holo_panel = function(arg_145_0, arg_145_1)
		render.rect(vector(arg_145_1.x, arg_145_1.y), vector(arg_145_1.x, arg_145_1.y) + vector(arg_145_1.w, arg_145_1.h), arg_145_1.color, 4)

		if arg_145_1.line then
			local anonteam_145_0 = arg_145_1.h / 2
			local anonteam_145_1 = 2

			anonteam_0_48(arg_145_1.x - anonteam_145_1 / 2, arg_145_1.y + arg_145_1.h / 2 - anonteam_145_0 / 2, anonteam_145_1, anonteam_145_0, arg_145_1.global_color, arg_145_1.alpha, 5)
			anonteam_0_48(arg_145_1.x + arg_145_1.w - anonteam_145_1 / 2, arg_145_1.y + arg_145_1.h / 2 - anonteam_145_0 / 2, anonteam_145_1, anonteam_145_0, arg_145_1.global_color, arg_145_1.alpha, 5)
		end
	end
})
anonteam_0_6.new("Version 2.0"):object(anonteam_0_6.mt, {
	prefix = " | ",
	watermark = function(arg_146_0, arg_146_1)
		arg_146_1.w = arg_146_1.w + 10

		anonteam_0_38(arg_146_1.x + 1, arg_146_1.y + 1, arg_146_1.w - 2, 16, 4, arg_146_1.alpha)
		anonteam_0_37(arg_146_1.style, arg_146_1.x, arg_146_1.y, arg_146_1.w, 18, arg_146_1.global_color, 3)
		render.rect(vector(arg_146_1.x + 1, arg_146_1.y + 1), vector(arg_146_1.x + 1, arg_146_1.y + 1) + vector(arg_146_1.w - 2, 16), arg_146_1.color, 4)
		render.text(1, vector(arg_146_1.x + 5, arg_146_1.y + 2), color(255, 255, 255, 255 * arg_146_1.alpha), "d", arg_146_1.text)
	end,
	fake = function(arg_147_0, arg_147_1)
		arg_147_1.w = arg_147_1.w + 10

		anonteam_0_38(arg_147_1.x + 1, arg_147_1.y + 1, arg_147_1.w - 3, 16, 4, arg_147_1.alpha)
		anonteam_0_36(arg_147_1.x, arg_147_1.y, arg_147_1.w, 18, 3, arg_147_1.desync_color, color(0, 0, 0, 0))
		render.rect(vector(arg_147_1.x + 1, arg_147_1.y + 1), vector(arg_147_1.x + 1, arg_147_1.y + 1) + vector(arg_147_1.w - 2, 16), arg_147_1.color, 4)
		render.text(1, vector(arg_147_1.x + 5, arg_147_1.y + 2), color(255, 255, 255, 255 * arg_147_1.alpha), "d", arg_147_1.text)
	end,
	fl = function(arg_148_0, arg_148_1)
		arg_148_1.w = arg_148_1.w + 10

		anonteam_0_38(arg_148_1.x + 1, arg_148_1.y + 1, arg_148_1.w - 3, 16, 4, arg_148_1.alpha)
		anonteam_0_36(arg_148_1.x, arg_148_1.y, arg_148_1.w, 18, 3, arg_148_1.delta_color, color(0, 0, 0, 0))
		render.rect(vector(arg_148_1.x + 1, arg_148_1.y + 1), vector(arg_148_1.x + 1, arg_148_1.y + 1) + vector(arg_148_1.w - 2, 16), arg_148_1.color, 4)
		render.text(1, vector(arg_148_1.x + 5, arg_148_1.y + 2), color(255, 255, 255, 255 * arg_148_1.alpha), "d", arg_148_1.text)
	end,
	io = function(arg_149_0, arg_149_1)
		arg_149_1.w = arg_149_1.w + 10

		anonteam_0_38(arg_149_1.x + 1, arg_149_1.y + 1, arg_149_1.w - 3, 16, 4, arg_149_1.alpha)
		anonteam_0_36(arg_149_1.x, arg_149_1.y, arg_149_1.w, 18, 3, arg_149_1.global_color, color(0, 0, 0, 0))
		render.rect(vector(arg_149_1.x + 1, arg_149_1.y + 1), vector(arg_149_1.x + 1, arg_149_1.y + 1) + vector(arg_149_1.w - 2, 16), arg_149_1.color, 4)
		render.text(1, vector(arg_149_1.x + 5, arg_149_1.y + 2), color(255, 255, 255, 255 * arg_149_1.alpha), "d", arg_149_1.text)
		anonteam_0_33(arg_149_1.x + 25, arg_149_1.y + 14, 5, 10, arg_149_1.global_color)
	end,
	hz = function(arg_150_0, arg_150_1)
		arg_150_1.w = arg_150_1.w + 10

		anonteam_0_38(arg_150_1.x + 1, arg_150_1.y + 1, arg_150_1.w - 3, 16, 4, arg_150_1.alpha)
		anonteam_0_35(arg_150_1.x, arg_150_1.y, arg_150_1.w, 18, 3, color(255, 255, 255, 25 * arg_150_1.alpha), color(255, 255, 255, 25 * arg_150_1.alpha), color(255, 255, 255, 25 * arg_150_1.alpha))
		render.rect(vector(arg_150_1.x + 1, arg_150_1.y + 1), vector(arg_150_1.x + 1, arg_150_1.y + 1) + vector(arg_150_1.w - 2, 16), arg_150_1.color, 4)
		render.text(1, vector(arg_150_1.x + 5, arg_150_1.y + 2), color(255, 255, 255, 255 * arg_150_1.alpha), "d", arg_150_1.text)
	end,
	keybinds = function(arg_151_0, arg_151_1)
		local anonteam_151_0 = arg_151_1.ext and arg_151_1.ext * 15 + 3 or 0

		anonteam_0_38(arg_151_1.x + 1, arg_151_1.y + 1, arg_151_1.w - 3, 16 + anonteam_151_0, 4, arg_151_1.alpha)
		anonteam_0_37(arg_151_1.style, arg_151_1.x, arg_151_1.y, arg_151_1.w, 18 + anonteam_151_0, arg_151_1.global_color, 3)
		render.rect(vector(arg_151_1.x + 1, arg_151_1.y + 1), vector(arg_151_1.x + 1, arg_151_1.y + 1) + vector(arg_151_1.w - 2, 16 + anonteam_151_0), arg_151_1.color, 4)
		render.text(1, vector(arg_151_1.x + arg_151_1.w / 2, arg_151_1.y + 8), color(255, 255, 255, 255 * arg_151_1.alpha), "dc", arg_151_1.text)
	end,
	holo_panel = function(arg_152_0, arg_152_1)
		anonteam_0_38(arg_152_1.x + 1, arg_152_1.y + 1, arg_152_1.w - 3, arg_152_1.h - 3, 4, arg_152_1.alpha)
		anonteam_0_37(arg_152_1.style, arg_152_1.x, arg_152_1.y, arg_152_1.w, arg_152_1.h, arg_152_1.global_color, 3)
		render.rect(vector(arg_152_1.x + 1, arg_152_1.y + 1), vector(arg_152_1.x + 1, arg_152_1.y + 1) + vector(arg_152_1.w - 2, arg_152_1.h - 2), arg_152_1.color, 4)
	end
})
anonteam_0_6.new("Version 2.5"):object(anonteam_0_6.mt, {
	binds_start = 23,
	prefix = "  ",
	circle_add = vector(4, 4),
	watermark = function(arg_153_0, arg_153_1)
		arg_153_1.w = arg_153_1.w + 20
		arg_153_1.x = arg_153_1.x - 10

		anonteam_0_37(arg_153_1.style, arg_153_1.x, arg_153_1.y, arg_153_1.w, 20, arg_153_1.global_color, 6, 2, 0)
		render.blur(vector(arg_153_1.x + 2, arg_153_1.y + 2), vector(arg_153_1.x + 2, arg_153_1.y + 2) + vector(arg_153_1.w - 3, 20), 0.7, arg_153_1.color.a / 255, 6)
		anonteam_0_38(arg_153_1.x + 2, arg_153_1.y + 2, arg_153_1.w - 3, 20, 6, arg_153_1.alpha)
		render.text(1, vector(arg_153_1.x + 10, arg_153_1.y + 5), color(255, 255, 255, 255 * arg_153_1.alpha), "d", arg_153_1.text)
	end,
	fake = function(arg_154_0, arg_154_1)
		arg_154_1.w = arg_154_1.w + 20
		arg_154_1.x = arg_154_1.x - 10

		render.blur(vector(arg_154_1.x + 3, arg_154_1.y + 3), vector(arg_154_1.x + 1, arg_154_1.y + 3) + vector(arg_154_1.w - 2, 20), 0.7, arg_154_1.color.a / 255, 6)
		anonteam_0_38(arg_154_1.x + 2, arg_154_1.y + 2, arg_154_1.w - 3, 20, 6, arg_154_1.alpha)

		local anonteam_154_0 = color(arg_154_1.desync_color.r, arg_154_1.desync_color.g, arg_154_1.desync_color.b, 0)
		local anonteam_154_1 = color(arg_154_1.color.r, arg_154_1.color.g, arg_154_1.color.b, 50 * (arg_154_1.color.a / 255))

		render.gradient(vector(arg_154_1.x + 3, arg_154_1.y + 4), vector(arg_154_1.x + 5, arg_154_1.y + 12), anonteam_154_0, anonteam_154_0, arg_154_1.desync_color, arg_154_1.desync_color)
		render.gradient(vector(arg_154_1.x + 3, arg_154_1.y + 8 + 4), vector(arg_154_1.x + 5, arg_154_1.y + 16 + 4), arg_154_1.desync_color, arg_154_1.desync_color, anonteam_154_0, anonteam_154_0)
		render.text(1, vector(arg_154_1.x + 10, arg_154_1.y + 5), color(255, 255, 255, 255 * arg_154_1.alpha), "d", arg_154_1.text)
	end,
	fl = function(arg_155_0, arg_155_1)
		arg_155_1.w = arg_155_1.w + 20
		arg_155_1.x = arg_155_1.x - 10

		render.blur(vector(arg_155_1.x + 3, arg_155_1.y + 3), vector(arg_155_1.x + 1, arg_155_1.y + 3) + vector(arg_155_1.w - 2, 20), 0.7, arg_155_1.color.a / 255, 6)
		anonteam_0_38(arg_155_1.x + 2, arg_155_1.y + 2, arg_155_1.w - 3, 20, 6, arg_155_1.alpha)
		render.text(1, vector(arg_155_1.x + 10, arg_155_1.y + 5), color(255, 255, 255, 255 * arg_155_1.alpha), "d", arg_155_1.text)

		local anonteam_155_0 = color(arg_155_1.delta_color.r, arg_155_1.delta_color.g, arg_155_1.delta_color.b, 0)

		render.gradient(vector(arg_155_1.x + (arg_155_1.w - arg_155_1.w / 1.2), arg_155_1.y + 21), vector(arg_155_1.x + arg_155_1.w / 2, arg_155_1.y + 22), anonteam_155_0, arg_155_1.delta_color, anonteam_155_0, arg_155_1.delta_color)
		render.gradient(vector(arg_155_1.x + arg_155_1.w / 2, arg_155_1.y + 21), vector(arg_155_1.x + arg_155_1.w / 1.2, arg_155_1.y + 22), arg_155_1.delta_color, anonteam_155_0, arg_155_1.delta_color, anonteam_155_0)
	end,
	io = function(arg_156_0, arg_156_1)
		arg_156_1.w = arg_156_1.w + 20
		arg_156_1.x = arg_156_1.x - 10

		render.blur(vector(arg_156_1.x + 3, arg_156_1.y + 3), vector(arg_156_1.x + 1, arg_156_1.y + 3) + vector(arg_156_1.w - 2, 20), 0.7, arg_156_1.color.a / 255, 6)
		anonteam_0_38(arg_156_1.x + 2, arg_156_1.y + 2, arg_156_1.w - 3, 20, 6, arg_156_1.alpha)
		render.text(1, vector(arg_156_1.x + 10, arg_156_1.y + 6), color(255, 255, 255, 255 * arg_156_1.alpha), "d", arg_156_1.text)
		anonteam_0_33(arg_156_1.x + 22, arg_156_1.y + 18, 5, 10, arg_156_1.global_color)
	end,
	hz = function(arg_157_0, arg_157_1)
		arg_157_1.w = arg_157_1.w + 20
		arg_157_1.x = arg_157_1.x - 10

		render.blur(vector(arg_157_1.x + 3, arg_157_1.y + 3), vector(arg_157_1.x + 1, arg_157_1.y + 3) + vector(arg_157_1.w - 2, 20), 0.7, arg_157_1.color.a / 255, 6)
		anonteam_0_38(arg_157_1.x + 2, arg_157_1.y + 2, arg_157_1.w - 3, 20, 6, arg_157_1.alpha)
		render.text(1, vector(arg_157_1.x + 10, arg_157_1.y + 5), color(255, 255, 255, 255 * arg_157_1.alpha), "d", arg_157_1.text)
	end,
	keybinds = function(arg_158_0, arg_158_1)
		local anonteam_158_0 = arg_158_1.ext and arg_158_1.ext * 15 + 3 or 0

		anonteam_0_37(arg_158_1.style, arg_158_1.x, arg_158_1.y, arg_158_1.w, 20 + anonteam_158_0, arg_158_1.global_color, 6, 2, 0)
		render.blur(vector(arg_158_1.x + 2, arg_158_1.y + 2), vector(arg_158_1.x + 2, arg_158_1.y + 2) + vector(arg_158_1.w - 3, 20 + anonteam_158_0), 0.7, arg_158_1.color.a / 255, 6)
		anonteam_0_38(arg_158_1.x + 2, arg_158_1.y + 2, arg_158_1.w - 3, 20 + anonteam_158_0, 6, arg_158_1.alpha)
		render.text(1, vector(arg_158_1.x + arg_158_1.w / 2, arg_158_1.y + 12), color(255, 255, 255, 255 * arg_158_1.alpha), "dc", arg_158_1.text)
	end,
	holo_panel = function(arg_159_0, arg_159_1)
		anonteam_0_37(arg_159_1.style, arg_159_1.x, arg_159_1.y, arg_159_1.w, arg_159_1.h, arg_159_1.global_color, 6, 2, 0)
		render.blur(vector(arg_159_1.x + 2, arg_159_1.y + 2), vector(arg_159_1.x + 2, arg_159_1.y + 2) + vector(arg_159_1.w - 3, arg_159_1.h), 0.7, arg_159_1.color.a / 255, 6)
		anonteam_0_38(arg_159_1.x, arg_159_1.y, arg_159_1.w, arg_159_1.h, 6, arg_159_1.alpha)
	end
})
anonteam_0_6.new("Version Onetap"):object(anonteam_0_6.mt, {
	binds_start = 23,
	prefix = " / ",
	circle_add = vector(-1, 1),
	watermark = function(arg_160_0, arg_160_1)
		arg_160_1.w = arg_160_1.w + 10

		render.rect(vector(arg_160_1.x, arg_160_1.y + 2), vector(arg_160_1.x, arg_160_1.y + 2) + vector(arg_160_1.w, 15), arg_160_1.color)
		render.rect_outline(vector(arg_160_1.x - 3, arg_160_1.y - 1), vector(arg_160_1.x - 3, arg_160_1.y - 1) + vector(arg_160_1.w + 6, 21), arg_160_1.color)

		arg_160_1.color.a = arg_160_1.color.a / 2

		render.rect(vector(arg_160_1.x - 3, arg_160_1.y - 1), vector(arg_160_1.x - 3, arg_160_1.y - 1) + vector(arg_160_1.w + 6, 21), arg_160_1.color)

		if arg_160_1.line then
			anonteam_0_37(arg_160_1.style, arg_160_1.x, arg_160_1.y + 2, arg_160_1.w, 1, arg_160_1.global_color)
		end

		anonteam_0_38(arg_160_1.x - 3, arg_160_1.y - 1, arg_160_1.w + 6, 21, 0, arg_160_1.alpha)
		render.text(1, vector(arg_160_1.x + 5, arg_160_1.y + 3), color(255, 255, 255, 255 * arg_160_1.alpha), "d", arg_160_1.text)
	end,
	fake = function(arg_161_0, arg_161_1)
		arg_161_1.line = false

		arg_161_0:watermark(arg_161_1)
	end,
	fl = function(arg_162_0, arg_162_1)
		arg_162_1.line = false

		arg_162_0:watermark(arg_162_1)
	end,
	hz = function(arg_163_0, arg_163_1)
		arg_163_0:watermark(arg_163_1)
	end,
	io = function(arg_164_0, arg_164_1)
		arg_164_0:watermark(arg_164_1)
		anonteam_0_33(arg_164_1.x + 25, arg_164_1.y + 15, 6, 10, arg_164_1.global_color)
	end,
	keybinds = function(arg_165_0, arg_165_1)
		local anonteam_165_0 = arg_165_1.ext and arg_165_1.ext * 15 + 7 or 0

		render.rect(vector(arg_165_1.x, arg_165_1.y + 2), vector(arg_165_1.x, arg_165_1.y + 2) + vector(arg_165_1.w, 15 + anonteam_165_0), arg_165_1.color)
		render.rect_outline(vector(arg_165_1.x - 3, arg_165_1.y - 1), vector(arg_165_1.x - 3, arg_165_1.y - 1) + vector(arg_165_1.w + 6, 21 + anonteam_165_0), arg_165_1.color)

		arg_165_1.color.a = arg_165_1.color.a / 2

		render.rect(vector(arg_165_1.x - 3, arg_165_1.y - 1), vector(arg_165_1.x - 3, arg_165_1.y - 1) + vector(arg_165_1.w + 6, 21 + anonteam_165_0), arg_165_1.color)
		anonteam_0_37(arg_165_1.style, arg_165_1.x, arg_165_1.y + 2, arg_165_1.w, 1, arg_165_1.global_color)
		anonteam_0_38(arg_165_1.x - 3, arg_165_1.y - 1, arg_165_1.w + 6, 21 + anonteam_165_0, 0, arg_165_1.alpha)
		render.text(1, vector(arg_165_1.x + arg_165_1.w / 2, arg_165_1.y + 9), color(255, 255, 255, 255 * arg_165_1.alpha), "dc", arg_165_1.text)
	end,
	holo_panel = function(arg_166_0, arg_166_1)
		render.rect(vector(arg_166_1.x, arg_166_1.y + 2), vector(arg_166_1.x, arg_166_1.y + 2) + vector(arg_166_1.w, arg_166_1.h), arg_166_1.color)
		render.rect_outline(vector(arg_166_1.x - 3, arg_166_1.y - 1), vector(arg_166_1.x - 3, arg_166_1.y - 1) + vector(arg_166_1.w + 6, arg_166_1.h + 6), arg_166_1.color)

		arg_166_1.color.a = arg_166_1.color.a / 2

		render.rect(vector(arg_166_1.x - 3, arg_166_1.y - 1), vector(arg_166_1.x - 3, arg_166_1.y - 1) + vector(arg_166_1.w + 6, arg_166_1.h + 6), arg_166_1.color)
		anonteam_0_37(arg_166_1.style, arg_166_1.x, arg_166_1.y + 2, arg_166_1.w, 1, arg_166_1.global_color)
		anonteam_0_38(arg_166_1.x - 3, arg_166_1.y - 1, arg_166_1.w + 6, arg_166_1.h + 6, 0, arg_166_1.alpha)
	end
})

function anonteam_0_6.render()
	local anonteam_167_0 = 0
	local anonteam_167_1 = anonteam_0_10.elements.style:get()
	local anonteam_167_2 = anonteam_0_6.get(anonteam_167_1)

	if not anonteam_167_2 then
		return print_dev("current style is nil")
	end

	local anonteam_167_3 = anonteam_0_10.elements.global_color:get()
	local anonteam_167_4 = anonteam_0_10.elements.background_color:get()

	return {
		watermark = function(arg_168_0, arg_168_1)
			local anonteam_168_0 = {}
			local anonteam_168_1 = anonteam_0_1.get_active()

			anonteam_168_0.alpha = anonteam_0_3.new("watermark_alpha", arg_168_1 and 1 or 0)

			if anonteam_168_0.alpha < 0.05 then
				return
			end

			anonteam_168_0.text = table.concat(anonteam_168_1, anonteam_167_2.prefix)
			anonteam_168_0.text_size = render.measure_text(1, "d", anonteam_168_0.text)
			anonteam_168_0.y = 10 + anonteam_167_0 * anonteam_167_2.next_line
			anonteam_168_0.x = anonteam_0_9.screen.x
			anonteam_168_0.w = anonteam_0_3.new("water_text_size", anonteam_168_0.text_size.x)
			anonteam_168_0.line = true
			anonteam_168_0.style = anonteam_0_10.elements.line_style:get():lower()
			anonteam_168_0.x = anonteam_168_0.x - anonteam_168_0.w - 20
			anonteam_168_0.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_168_0.alpha)
			anonteam_168_0.global_color = color(anonteam_167_3.r, anonteam_167_3.g, anonteam_167_3.b, anonteam_167_3.a * anonteam_168_0.alpha)

			anonteam_167_2:watermark(anonteam_168_0)

			anonteam_167_0 = anonteam_167_0 + anonteam_168_0.alpha
		end,
		fake_fl = function(arg_169_0, arg_169_1)
			local anonteam_169_0 = {
				alpha = anonteam_0_3.new("fake_alpha", arg_169_1 and 1 or 0)
			}

			if anonteam_169_0.alpha < 0.05 then
				return
			end

			anonteam_169_0.line = true
			anonteam_169_0.style = anonteam_0_10.elements.line_style:get():lower()
			anonteam_169_0.global_color = color(anonteam_167_3.r, anonteam_167_3.g, anonteam_167_3.b, anonteam_167_3.a * anonteam_169_0.alpha)
			anonteam_169_0.text = ("FL:%s"):format((function()
				local anonteam_170_0 = anonteam_0_32.lag

				if anonteam_170_0 < 10 then
					return "  " .. anonteam_170_0
				end

				return anonteam_170_0
			end)())

			if rage.exploit:get() ~= 0 then
				anonteam_169_0.text = ("%s %s SHIFTING"):format(anonteam_169_0.text, anonteam_167_2.prefix)
			end

			anonteam_169_0.y = 10 + anonteam_167_0 * anonteam_167_2.next_line
			anonteam_169_0.x = anonteam_0_9.screen.x
			anonteam_169_0.text_size = render.measure_text(1, "d", anonteam_169_0.text)
			anonteam_169_0.w = anonteam_0_3.new("fl_text_size", anonteam_169_0.text_size.x)
			anonteam_169_0.x = anonteam_169_0.x - anonteam_169_0.w - 20
			anonteam_169_0.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_169_0.alpha)

			local anonteam_169_1 = anonteam_0_10.elements.exploiting_charged_color:get()
			local anonteam_169_2 = anonteam_0_10.elements.exploiting_uncharged_color:get()

			anonteam_169_0.delta_color = anonteam_0_3.new("fl_color", rage.exploit:get() == 1 and anonteam_169_1 or anonteam_169_2)
			anonteam_169_0.delta_color.a = 255 * anonteam_169_0.alpha

			anonteam_167_2:fl(anonteam_169_0)

			anonteam_169_0.text = ("FAKE (%.1f\xC2\xB0)"):format(anonteam_0_32.delta)
			anonteam_169_0.text_size = render.measure_text(1, "d", anonteam_169_0.text)
			anonteam_169_0.w = anonteam_0_3.new("fake_text_size", anonteam_169_0.text_size.x)
			anonteam_169_0.x = anonteam_169_0.x - anonteam_169_0.w - 20
			anonteam_169_0.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_169_0.alpha)
			anonteam_169_0.desync_color = color(255 - anonteam_0_32.delta * 4, 15 + anonteam_0_32.delta * 4, 0, 255 * anonteam_169_0.alpha)

			anonteam_167_2:fake(anonteam_169_0)

			anonteam_167_0 = anonteam_167_0 + anonteam_169_0.alpha
		end,
		io_hz = function(arg_171_0, arg_171_1)
			local anonteam_171_0 = {
				alpha = anonteam_0_3.new("hz_alpha", arg_171_1 and 1 or 0)
			}

			if anonteam_171_0.alpha < 0.05 then
				return
			end

			anonteam_171_0.text = ("%.2fms / %shz"):format(anonteam_0_32.input_lag, anonteam_0_9.hz)
			anonteam_171_0.text_size = render.measure_text(1, "d", anonteam_171_0.text)
			anonteam_171_0.y = 10 + anonteam_167_0 * anonteam_167_2.next_line
			anonteam_171_0.x = anonteam_0_9.screen.x
			anonteam_171_0.w = anonteam_0_3.new("ms_hz_text_size", anonteam_171_0.text_size.x)
			anonteam_171_0.x = anonteam_171_0.x - anonteam_171_0.w - 20
			anonteam_171_0.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_171_0.alpha)

			anonteam_167_2:hz(anonteam_171_0)

			anonteam_171_0.text = ("IO %s %s"):format(anonteam_167_2.prefix, "    ")
			anonteam_171_0.text_size = render.measure_text(1, "d", anonteam_171_0.text)
			anonteam_171_0.w = anonteam_0_3.new("io_text_size", anonteam_171_0.text_size.x)
			anonteam_171_0.x = anonteam_171_0.x - anonteam_171_0.w - 20
			anonteam_171_0.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_171_0.alpha)
			anonteam_171_0.global_color = anonteam_0_10.elements.frequency_graphic_color:get()
			anonteam_171_0.global_color.a = anonteam_171_0.global_color.a * anonteam_171_0.alpha

			anonteam_167_2:io(anonteam_171_0)

			anonteam_167_0 = anonteam_167_0 + anonteam_171_0.alpha
		end,
		bomb = function(arg_172_0, arg_172_1)
			local anonteam_172_0 = anonteam_0_18.init()
			local anonteam_172_1, anonteam_172_2 = anonteam_172_0:get_state()
			local anonteam_172_3, anonteam_172_4 = anonteam_172_0:get_damage()
			local anonteam_172_5, anonteam_172_6 = anonteam_172_0:get_timer()
			local anonteam_172_7 = anonteam_172_0:get_site()
			local anonteam_172_8, anonteam_172_9, anonteam_172_10, anonteam_172_11 = anonteam_172_0:get_defuse_time()
			local anonteam_172_12 = anonteam_172_10 and anonteam_172_8 and anonteam_172_11 or anonteam_172_6

			arg_172_1 = arg_172_1 and (anonteam_172_1 and not anonteam_172_2 or ui.get_alpha() > 0)

			local anonteam_172_13 = {
				alpha = anonteam_0_3.new("bomb_alpha", arg_172_1 and 1 or 0)
			}

			if anonteam_172_13.alpha < 0.05 then
				return
			end

			anonteam_172_13.delta_color = anonteam_0_3.new("bomb_delta_color", anonteam_172_10 and anonteam_172_8 and color(165, 214, 167) or anonteam_172_3 and color(255, 0, 0) or anonteam_167_3)
			anonteam_172_13.delta_color.a = 255 * anonteam_172_13.alpha
			anonteam_172_13.text = ("    | %s: | %.1fs | %s"):format(anonteam_172_7, anonteam_172_5, anonteam_172_3 and "FATAL" or ("-%shp"):format(anonteam_172_4))

			if anonteam_172_10 and anonteam_172_8 then
				anonteam_172_13.text = ("    | %s: | %.1fs | DEFUSING"):format(anonteam_172_7, anonteam_172_9)
			end

			anonteam_172_13.text_size = render.measure_text(1, "d", anonteam_172_13.text)
			anonteam_172_13.y = 10 + anonteam_167_0 * anonteam_167_2.next_line
			anonteam_172_13.x = anonteam_0_9.screen.x
			anonteam_172_13.w = anonteam_0_3.new("bomb_text_size", anonteam_172_13.text_size.x)
			anonteam_172_13.x = anonteam_172_13.x - anonteam_172_13.w - 20
			anonteam_172_13.line = false
			anonteam_172_13.style = anonteam_0_10.elements.line_style:get():lower()
			anonteam_172_13.global_color = anonteam_172_13.delta_color
			anonteam_172_13.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_172_13.alpha)

			anonteam_167_2:fl(anonteam_172_13)
			render.circle_outline(vector(anonteam_172_13.x + 11, anonteam_172_13.y + 9) + anonteam_167_2.circle_add, anonteam_172_13.delta_color, 5, 0, anonteam_172_12, 2)

			anonteam_167_0 = anonteam_167_0 + anonteam_172_13.alpha
		end,
		holo_panel = function(arg_173_0, arg_173_1)
			local anonteam_173_0 = {
				alpha = anonteam_0_3.new("holo_panel_alpha", arg_173_1 and 1 or 0)
			}

			if anonteam_173_0.alpha < 0.05 then
				return
			end

			local anonteam_173_1 = entity.get_local_player()

			if not anonteam_173_1 then
				return
			end

			local anonteam_173_2 = anonteam_0_17.get_muzzle_pos()

			if not anonteam_173_2 then
				return
			end

			local anonteam_173_3 = render.world_to_screen(anonteam_173_2.pos)

			if anonteam_0_4.thirdperson:get() then
				if not anonteam_0_10.elements.holo_panel_in_thirdperson:get() then
					return
				end

				anonteam_173_3 = render.world_to_screen(anonteam_173_1:get_hitbox_position(3))
			end

			if anonteam_173_3 == nil then
				return
			end

			if anonteam_173_1.m_bIsScoped and not anonteam_0_10.elements.holo_panel_in_scope:get() then
				return
			end

			if not anonteam_173_2.state then
				return
			end

			anonteam_0_17.anim_pos.x = anonteam_0_3.lerp(anonteam_0_17.anim_pos.x, anonteam_173_3.x, 0.05)
			anonteam_0_17.anim_pos.y = anonteam_0_3.lerp(anonteam_0_17.anim_pos.y, anonteam_173_3.y, 0.05)

			local anonteam_173_4 = anonteam_0_10.elements.holo_panel_pos:get()
			local anonteam_173_5 = {
				x = anonteam_0_10.elements.holo_panel_pos_x:get(),
				y = anonteam_0_10.elements.holo_panel_pos_y:get()
			}
			local anonteam_173_6 = anonteam_173_4 == "Auto" and anonteam_0_17.hand_pos:int() == 0 and true or anonteam_173_4 == "Right" and true or false
			local anonteam_173_7 = anonteam_0_3.new("add_side_anim", anonteam_173_6 and 50 or -200)
			local anonteam_173_8 = anonteam_0_17.anim_pos.x + anonteam_173_7 + anonteam_173_5.x
			local anonteam_173_9 = anonteam_0_17.anim_pos.y - 100 + anonteam_173_5.y
			local anonteam_173_10 = 130
			local anonteam_173_11 = 60

			anonteam_173_0.y = anonteam_173_9
			anonteam_173_0.x = anonteam_173_8
			anonteam_173_0.w = anonteam_173_10
			anonteam_173_0.h = anonteam_173_11
			anonteam_173_0.line = true
			anonteam_173_0.style = anonteam_0_10.elements.line_style:get():lower()
			anonteam_173_0.color = color(anonteam_167_4.r, anonteam_167_4.g, anonteam_167_4.b, anonteam_167_4.a * anonteam_173_0.alpha)
			anonteam_173_0.global_color = color(anonteam_167_3.r, anonteam_167_3.g, anonteam_167_3.b, anonteam_167_3.a * anonteam_173_0.alpha)

			anonteam_167_2:holo_panel(anonteam_173_0)
			render.text(2, vector(anonteam_173_8 + 5, anonteam_173_9 + 5), color(255, 255, 255, 255 * anonteam_173_0.alpha), nil, "ANTI-AIMBOT DEBUG")

			local anonteam_173_12 = ("FAKE (%.1f\xC2\xB0)"):format(anonteam_0_32.delta)

			render.text(1, vector(anonteam_173_8 + 10, anonteam_173_9 + 25), color(255, 255, 255, 255 * anonteam_173_0.alpha), nil, anonteam_173_12)

			local anonteam_173_13 = color(255 - anonteam_0_32.delta * 4, 15 + anonteam_0_32.delta * 4, 0, 255 * anonteam_173_0.alpha)
			local anonteam_173_14 = color(anonteam_173_13.r, anonteam_173_13.g, anonteam_173_13.b, 0)

			render.gradient(vector(anonteam_173_8 + 5, anonteam_173_9 + 23), vector(anonteam_173_8 + 5, anonteam_173_9 + 23) + vector(1, 8), anonteam_173_14, anonteam_173_14, anonteam_173_13, anonteam_173_13)
			render.gradient(vector(anonteam_173_8 + 5, anonteam_173_9 + 23 + 8), vector(anonteam_173_8 + 5, anonteam_173_9 + 23 + 8) + vector(1, 8), anonteam_173_13, anonteam_173_13, anonteam_173_14, anonteam_173_14)
			render.text(2, vector(anonteam_173_8 + 5, anonteam_173_9 + 45), color(255, 255, 255, 255 * anonteam_173_0.alpha), nil, "SP:")
			render.rect(vector(anonteam_173_8 + 20, anonteam_173_9 + 50), vector(anonteam_173_8 + 20, anonteam_173_9 + 50) + vector(20, 4), color(0, 0, 0, 50 * anonteam_173_0.alpha), 3)
			render.rect(vector(anonteam_173_8 + 45, anonteam_173_9 + 50), vector(anonteam_173_8 + 45, anonteam_173_9 + 50) + vector(20, 4), color(0, 0, 0, 50 * anonteam_173_0.alpha), 3)

			local anonteam_173_15 = anonteam_0_5.get_inverter_state()
			local anonteam_173_16 = anonteam_0_3.new("anim_delta", math.abs(anonteam_0_5.get_desync_delta()))

			render.rect(vector(anonteam_173_8 + (anonteam_173_15 and 20 or 45), anonteam_173_9 + 50), vector(anonteam_173_8 + (anonteam_173_15 and 20 or 45), anonteam_173_9 + 50) + vector(0.4 * anonteam_173_16, 4), anonteam_173_0.global_color, 3)
			render.text(2, vector(anonteam_173_8 + 85, anonteam_173_9 + 46), color(255, 255, 255, 255 * anonteam_173_0.alpha), nil, "OSAA:")

			local anonteam_173_17 = anonteam_0_4.hide_shots:get()
			local anonteam_173_18 = anonteam_0_3.new("osaa_color", anonteam_173_17 and color(0, 255, 0) or color(255, 0, 0))

			render.text(2, vector(anonteam_173_8 + 110, anonteam_173_9 + 46), color(anonteam_173_18.r, anonteam_173_18.g, anonteam_173_18.b, 255 * anonteam_173_0.alpha), nil, anonteam_173_17 and "ON" or "OFF")
		end
	}
end

anonteam_0_11.keybinds = ui.create(anonteam_0_11.settings, anonteam_0_41("keyboard", "Keybinds"))

anonteam_0_10.new("keybinds_enable", anonteam_0_11.keybinds:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Keybinds"
end)
anonteam_0_10.new("keybinds_min_width", anonteam_0_11.keybinds:slider("Minimum width", 80, 150, 115), function()
	return anonteam_0_10.elements.tab:get() == "Keybinds" and anonteam_0_10.elements.keybinds_enable:get()
end)
anonteam_0_10.new("keybinds_mode", anonteam_0_11.keybinds:combo("Mode", {
	"State",
	"State & Value"
}), function()
	return anonteam_0_10.elements.tab:get() == "Keybinds" and anonteam_0_10.elements.keybinds_enable:get()
end)
anonteam_0_10.new("keybinds_ext", anonteam_0_11.keybinds:switch("Extend background"), function()
	return anonteam_0_10.elements.tab:get() == "Keybinds" and anonteam_0_10.elements.keybinds_enable:get()
end)

anonteam_0_6.draggables = {}
anonteam_0_6.draggables.keybinds_data = {
	width = 0,
	modes = {
		"holding",
		"toggled"
	}
}
anonteam_0_6.draggables.keybinds = anonteam_0_27.create_draggable(math.floor(anonteam_0_9.screen.x / 2), 300, 0, 0, "keybinds", function(arg_178_0)
	local anonteam_178_0 = anonteam_0_10.elements.style:get()
	local anonteam_178_1 = anonteam_0_6.get(anonteam_178_0)

	if not anonteam_178_1 then
		return print_dev("current style is nil")
	end

	local anonteam_178_2 = anonteam_0_10.elements.keybinds_mode:get()
	local anonteam_178_3 = anonteam_0_10.elements.global_color:get()
	local anonteam_178_4 = anonteam_0_10.elements.background_color:get()
	local anonteam_178_5 = anonteam_0_8:get_active()
	local anonteam_178_6 = anonteam_0_10.elements.keybinds_enable:get() and (anonteam_178_5.is_any_active or ui.get_alpha() > 0)
	local anonteam_178_7 = vector(arg_178_0.position_x, arg_178_0.position_y)
	local anonteam_178_8 = {
		alpha = anonteam_0_3.new("keybinds_alpha", anonteam_178_6 and 1 or 0)
	}

	if anonteam_178_8.alpha < 0.05 then
		return
	end

	anonteam_178_8.text = "keybinds"
	anonteam_178_8.min_width = anonteam_0_10.elements.keybinds_min_width:get()
	anonteam_178_8.y = anonteam_178_7.y
	anonteam_178_8.x = anonteam_178_7.x
	anonteam_178_8.w = anonteam_0_6.draggables.keybinds_data.width
	anonteam_178_8.style = anonteam_0_10.elements.line_style:get():lower()
	anonteam_178_8.global_color = color(anonteam_178_3.r, anonteam_178_3.g, anonteam_178_3.b, anonteam_178_3.a * anonteam_178_8.alpha)
	arg_178_0.size_x = anonteam_0_6.draggables.keybinds_data.width
	arg_178_0.size_y = 20
	anonteam_178_8.color = color(anonteam_178_4.r, anonteam_178_4.g, anonteam_178_4.b, anonteam_178_4.a * anonteam_178_8.alpha)

	if anonteam_0_10.elements.keybinds_ext:get() then
		anonteam_178_8.ext = anonteam_0_3.new("keybinds_ext", #anonteam_178_5.active)
	end

	anonteam_178_1:keybinds(anonteam_178_8)

	local anonteam_178_9 = 0
	local anonteam_178_10 = 0

	for iter_178_0, iter_178_1 in ipairs(anonteam_178_5.active) do
		if anonteam_178_2 == "State" then
			iter_178_1.state = anonteam_0_6.draggables.keybinds_data.modes[iter_178_1.mode]
		elseif iter_178_1.state == "true" then
			iter_178_1.state = anonteam_0_6.draggables.keybinds_data.modes[iter_178_1.mode]
		end

		iter_178_1.state = ("[%s]"):format(iter_178_1.state)

		local anonteam_178_11 = render.measure_text(1, "d", iter_178_1.state)
		local anonteam_178_12 = render.measure_text(1, "d", iter_178_1.name)
		local anonteam_178_13 = anonteam_178_8.y + anonteam_178_10 * 15 + anonteam_178_1.binds_start

		render.text(1, vector(anonteam_178_8.x + 3, anonteam_178_13), color(255, 255, 255, iter_178_1.alpha * anonteam_178_8.alpha), "d", iter_178_1.name)
		render.text(1, vector(anonteam_178_8.x + anonteam_178_8.w - anonteam_178_11.x - 3, anonteam_178_13), color(255, 255, 255, iter_178_1.alpha * anonteam_178_8.alpha), "d", iter_178_1.state)

		local anonteam_178_14 = anonteam_178_12.x + anonteam_178_11.x + 13

		if anonteam_178_14 > anonteam_178_8.min_width and anonteam_178_9 < anonteam_178_14 then
			anonteam_178_9 = anonteam_178_14
		end

		anonteam_178_10 = anonteam_178_10 + iter_178_1.alpha / 255
	end

	anonteam_0_6.draggables.keybinds_data.width = anonteam_0_3.new("keybinds_text_size", math.max(anonteam_178_8.min_width, anonteam_178_9))
end)
anonteam_0_11.spectators = ui.create(anonteam_0_11.settings, anonteam_0_41("users", "Spectators"))

anonteam_0_10.new("spectators_enable", anonteam_0_11.spectators:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Spectators"
end)
anonteam_0_10.new("spectators_min_width", anonteam_0_11.spectators:slider("Minimum width", 80, 150, 115), function()
	return anonteam_0_10.elements.tab:get() == "Spectators" and anonteam_0_10.elements.spectators_enable:get()
end)
anonteam_0_10.new("spectators_avatar_pos", anonteam_0_11.spectators:combo("Avatar pos.", {
	"Disable",
	"Left",
	"Right"
}), function()
	return anonteam_0_10.elements.tab:get() == "Spectators" and anonteam_0_10.elements.spectators_enable:get()
end)
anonteam_0_10.new("spectators_ext", anonteam_0_11.spectators:switch("Extend background"), function()
	return anonteam_0_10.elements.tab:get() == "Spectators" and anonteam_0_10.elements.spectators_enable:get()
end)

anonteam_0_6.draggables.spectators_data = {
	width = 0
}
anonteam_0_6.draggables.spectators = anonteam_0_27.create_draggable(math.floor(anonteam_0_9.screen.x / 2), 400, 0, 0, "spectators", function(arg_183_0)
	local anonteam_183_0 = anonteam_0_10.elements.style:get()
	local anonteam_183_1 = anonteam_0_6.get(anonteam_183_0)

	if not anonteam_183_1 then
		return print_dev("current style is nil")
	end

	local anonteam_183_2 = anonteam_0_10.elements.global_color:get()
	local anonteam_183_3 = anonteam_0_10.elements.background_color:get()
	local anonteam_183_4 = anonteam_0_10.elements.spectators_avatar_pos:get()
	local anonteam_183_5, anonteam_183_6 = anonteam_0_2.get()
	local anonteam_183_7 = anonteam_0_10.elements.spectators_enable:get() and (anonteam_183_6 or ui.get_alpha() > 0)
	local anonteam_183_8 = vector(arg_183_0.position_x, arg_183_0.position_y)
	local anonteam_183_9 = {
		alpha = anonteam_0_3.new("spectators_alpha", anonteam_183_7 and 1 or 0)
	}

	if anonteam_183_9.alpha < 0.05 then
		return
	end

	anonteam_183_9.text = "spectators"
	anonteam_183_9.min_width = anonteam_0_10.elements.spectators_min_width:get()
	anonteam_183_9.y = anonteam_183_8.y
	anonteam_183_9.x = anonteam_183_8.x
	anonteam_183_9.w = anonteam_0_6.draggables.spectators_data.width
	anonteam_183_9.style = anonteam_0_10.elements.line_style:get():lower()
	anonteam_183_9.global_color = color(anonteam_183_2.r, anonteam_183_2.g, anonteam_183_2.b, anonteam_183_2.a * anonteam_183_9.alpha)
	arg_183_0.size_x = anonteam_0_6.draggables.spectators_data.width
	arg_183_0.size_y = 20
	anonteam_183_9.color = color(anonteam_183_3.r, anonteam_183_3.g, anonteam_183_3.b, anonteam_183_3.a * anonteam_183_9.alpha)

	if anonteam_0_10.elements.spectators_ext:get() then
		anonteam_183_9.ext = anonteam_0_3.new("spectators_ext", #anonteam_183_5)
	end

	anonteam_183_1:keybinds(anonteam_183_9)

	local anonteam_183_10 = 0
	local anonteam_183_11 = 0

	for iter_183_0, iter_183_1 in ipairs(anonteam_183_5) do
		local anonteam_183_12 = render.measure_text(1, "d", iter_183_1.name)
		local anonteam_183_13 = anonteam_183_9.y + anonteam_183_11 * 15 + anonteam_183_1.binds_start

		render.text(1, vector(anonteam_183_9.x + 3 + (anonteam_183_4 == "Left" and 15 or 0), anonteam_183_13), color(255, 255, 255, iter_183_1.alpha * anonteam_183_9.alpha), "d", iter_183_1.name)

		if anonteam_183_4 ~= "Disable" then
			local anonteam_183_14 = iter_183_1.player:get_steam_avatar()

			render.texture(anonteam_183_14 or anonteam_0_2.default_avatar, vector(anonteam_183_9.x + 3 + (anonteam_183_4 == "Left" and 0 or anonteam_183_9.w - 18), anonteam_183_13), vector(12, 12), color(255, 255, 255, iter_183_1.alpha * anonteam_183_9.alpha))
		end

		local anonteam_183_15 = anonteam_183_12.x + 28

		if anonteam_183_15 > anonteam_183_9.min_width and anonteam_183_10 < anonteam_183_15 then
			anonteam_183_10 = anonteam_183_15
		end

		anonteam_183_11 = anonteam_183_11 + iter_183_1.alpha / 255
	end

	anonteam_0_6.draggables.spectators_data.width = anonteam_0_3.new("spectators_text_size", math.max(anonteam_183_9.min_width, anonteam_183_10))
end)
anonteam_0_11.buylist = ui.create(anonteam_0_11.settings, anonteam_0_41("shopping-cart", "Buylist"))

anonteam_0_10.new("buylist_enable", anonteam_0_11.buylist:switch("Enable"), function()
	return anonteam_0_10.elements.tab:get() == "Buylist"
end)
anonteam_0_10.new("buylist_min_width", anonteam_0_11.buylist:slider("Minimum width", 80, 150, 115), function()
	return anonteam_0_10.elements.tab:get() == "Buylist" and anonteam_0_10.elements.buylist_enable:get()
end)
anonteam_0_10.new("buylist_ext", anonteam_0_11.buylist:switch("Extend background"), function()
	return anonteam_0_10.elements.tab:get() == "Buylist" and anonteam_0_10.elements.buylist_enable:get()
end)

anonteam_0_6.draggables.buylist_data = {
	width = 0
}
anonteam_0_6.draggables.buylist = anonteam_0_27.create_draggable(math.floor(anonteam_0_9.screen.x / 2), 400, 0, 0, "buylist", function(arg_187_0)
	local anonteam_187_0 = anonteam_0_10.elements.style:get()
	local anonteam_187_1 = anonteam_0_6.get(anonteam_187_0)

	if not anonteam_187_1 then
		return print_dev("current style is nil")
	end

	local anonteam_187_2 = anonteam_0_10.elements.global_color:get()
	local anonteam_187_3 = anonteam_0_10.elements.background_color:get()
	local anonteam_187_4 = entity.get_game_rules()
	local anonteam_187_5 = 6

	if anonteam_187_4 then
		local anonteam_187_6 = anonteam_187_4.m_fRoundStartTime

		anonteam_187_5 = globals.curtime - anonteam_187_6
	end

	local anonteam_187_7 = (#anonteam_0_23(anonteam_0_16.data) > 0 and anonteam_187_5 < 5 or ui.get_alpha() > 0) and anonteam_0_10.elements.buylist_enable:get()
	local anonteam_187_8 = vector(arg_187_0.position_x, arg_187_0.position_y)
	local anonteam_187_9 = {
		alpha = anonteam_0_3.new("buylist_alpha", anonteam_187_7 and 1 or 0)
	}

	if anonteam_187_9.alpha < 0.05 then
		return
	end

	anonteam_187_9.text = "buylist"
	anonteam_187_9.min_width = anonteam_0_10.elements.buylist_min_width:get()
	anonteam_187_9.y = anonteam_187_8.y
	anonteam_187_9.x = anonteam_187_8.x
	anonteam_187_9.w = anonteam_0_6.draggables.buylist_data.width
	anonteam_187_9.style = anonteam_0_10.elements.line_style:get():lower()
	anonteam_187_9.global_color = color(anonteam_187_2.r, anonteam_187_2.g, anonteam_187_2.b, anonteam_187_2.a * anonteam_187_9.alpha)
	arg_187_0.size_x = anonteam_0_6.draggables.buylist_data.width
	arg_187_0.size_y = 20
	anonteam_187_9.color = color(anonteam_187_3.r, anonteam_187_3.g, anonteam_187_3.b, anonteam_187_3.a * anonteam_187_9.alpha)

	if anonteam_0_10.elements.buylist_ext:get() then
		anonteam_187_9.ext = anonteam_0_3.new("buylist_ext", #anonteam_0_23(anonteam_0_16.data))
	end

	anonteam_187_1:keybinds(anonteam_187_9)

	local anonteam_187_10 = 0
	local anonteam_187_11 = 0
	local anonteam_187_12 = {}

	for iter_187_0, iter_187_1 in pairs(anonteam_0_16.data) do
		iter_187_1.alpha = anonteam_0_3.lerp(iter_187_1.alpha, anonteam_187_7 and 255 or 0)

		local anonteam_187_13 = render.measure_text(1, "d", iter_187_0)
		local anonteam_187_14 = anonteam_187_9.y + anonteam_187_11 * 15 + anonteam_187_1.binds_start

		render.text(1, vector(anonteam_187_9.x + 3, anonteam_187_14), color(255, 255, 255, iter_187_1.alpha), "d", iter_187_0)

		if anonteam_187_12[iter_187_0] == nil then
			anonteam_187_12[iter_187_0] = 0
		end

		for iter_187_2, iter_187_3 in ipairs(iter_187_1.weapon_names) do
			if iter_187_3 ~= "item_kevlar" or not anonteam_0_22(iter_187_1.weapon_names, "item_assaultsuit") then
				local anonteam_187_15 = anonteam_0_12.images.get_weapon_icon(iter_187_3 or "?")

				if anonteam_187_15 ~= nil then
					local anonteam_187_16 = anonteam_187_15:draw(anonteam_187_9.x + 7 + anonteam_187_13.x + anonteam_187_12[iter_187_0], anonteam_187_14, nil, 12, 255, 255, 255, iter_187_1.alpha)

					anonteam_187_12[iter_187_0] = anonteam_187_12[iter_187_0] + anonteam_187_16 + 5
				end
			end
		end

		local anonteam_187_17 = anonteam_187_13.x + anonteam_187_12[iter_187_0] + 5

		if anonteam_187_17 > anonteam_187_9.min_width and anonteam_187_10 < anonteam_187_17 then
			anonteam_187_10 = anonteam_187_17
		end

		anonteam_187_11 = anonteam_187_11 + iter_187_1.alpha / 255
	end

	anonteam_0_6.draggables.buylist_data.width = anonteam_0_3.new("buylist_text_size", math.max(anonteam_187_9.min_width, anonteam_187_10))
end)

events.render:set(function()
	anonteam_0_32:update()
	anonteam_0_19.updateRequests()
	anonteam_0_6.draggables.buylist:update()
	anonteam_0_6.draggables.keybinds:update()
	anonteam_0_6.draggables.spectators:update()

	local anonteam_188_0 = anonteam_0_6.render()
	local anonteam_188_1 = entity.get_local_player()

	anonteam_188_0:watermark(anonteam_0_10.elements.watermark_enable:get())
	anonteam_188_0:fake_fl(anonteam_0_10.elements.exploiting_enable:get() and (anonteam_188_1 and anonteam_188_1:is_alive() or ui.get_alpha() > 0))
	anonteam_188_0:io_hz(anonteam_0_10.elements.frequency_enable:get())
	anonteam_188_0:bomb(anonteam_0_10.elements.bomb_enable:get())
	anonteam_188_0:holo_panel(anonteam_0_10.elements.holo_panel_enable:get())
end)
events.render:set(function()
	local anonteam_189_0 = ui.get_style()["Link Active"]
	local anonteam_189_1 = anonteam_0_12.gradient.text_animate("Solus", -1, {
		anonteam_189_0,
		anonteam_189_0 / 1.4
	})

	anonteam_189_1:animate()
	ui.sidebar(anonteam_189_1:get_animated_text(), "palette")
end)
events.mouse_input:set(function()
	return ui.get_alpha() < 0.5
end)
