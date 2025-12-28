if ffi == nil then
	ffi = require("ffi")
end

if bit == nil then
	bit = require("bit")
end

local anonteam_0_0 = ffi
local anonteam_0_1 = bit
local anonteam_0_2 = anonteam_0_0.new
local anonteam_0_3 = anonteam_0_0.cast
local anonteam_0_4 = anonteam_0_0.cdef
local anonteam_0_5 = anonteam_0_0.typeof
local anonteam_0_6 = anonteam_0_1.band
local anonteam_0_7 = anonteam_0_1.bor
local anonteam_0_8 = anonteam_0_1.bxor
local anonteam_0_9 = anonteam_0_1.bnot
local anonteam_0_10 = anonteam_0_1.lshift
local anonteam_0_11 = anonteam_0_1.rshift
local anonteam_0_12 = anonteam_0_1.ror
local anonteam_0_13 = anonteam_0_1.rol

local anonteam_0_34 = {
	debug = false,
	spoof = false,
	unmatched_lua = true
}
local anonteam_0_35 = {}

local function anonteam_0_36(arg_1_0)
	for iter_1_0, iter_1_1 in pairs(arg_1_0) do
		arg_1_0[iter_1_1] = iter_1_0
	end

	return arg_1_0
end

local function anonteam_0_37(...)
	if anonteam_0_34.debug then
		print(...)
	end
end

local anonteam_0_38 = anonteam_0_36({
	"Gamesense",
	"Ev0lve",
	"Fatality",
	"Primordial",
	"Pandora",
	"Plague cheat",
	"Legion",
	"Nixware",
	"Spirthack",
	"Extension",
	"Onetap",
	"Legendware",
	"Neverlose",
	"Airflow",
	"Airflow old",
	"Weave",
	"Fatality old",
	"Solus UI"
})
local anonteam_0_39 = anonteam_0_36({
	"Self",
	"Team",
	"Enemies"
})
local anonteam_0_40 = anonteam_0_36({
	"Real",
	"Random",
	"Ghost"
})
local anonteam_0_41 = anonteam_0_36({
	"Original",
	"Solus",
	"Skeet colored",
	"Skeet monotone"
})
local anonteam_0_42 = anonteam_0_36({
	"NONE",
	"FATALITY",
	"AIRFLOW",
	"NEVERLOSE",
	"PRIMORDIAL",
	"GAMESENSE",
	"PANDORA",
	"ONETAP",
	"EV0LVE",
	"PLAGUE",
	"NIXWARE",
	"SOLUS_UI",
	"RIFK7",
	"LEGION",
	"MONOLITH",
	"AIMWARE",
	"LEGENDWARE",
	"SPIRTHACK",
	"EXTENSION",
	"WEAVE",
	"FATALITY_OLD"
})
local anonteam_0_43 = anonteam_0_36({
	"EV0LVE",
	"FATALITY",
	"PRIMORDIAL",
	"LEGION",
	"PANDORA",
	"GAMESENSE",
	"LEGENDWARE",
	"NEVERLOSE",
	"NIXWARE",
	"SPIRTHACK",
	"RIFK7"
})
local anonteam_0_44 = {
	[anonteam_0_43.EV0LVE] = anonteam_0_42.EV0LVE,
	[anonteam_0_43.FATALITY] = anonteam_0_42.FATALITY,
	[anonteam_0_43.PRIMORDIAL] = anonteam_0_42.PRIMORDIAL,
	[anonteam_0_43.LEGION] = anonteam_0_42.LEGION,
	[anonteam_0_43.PANDORA] = anonteam_0_42.PANDORA,
	[anonteam_0_43.GAMESENSE] = anonteam_0_42.GAMESENSE,
	[anonteam_0_43.LEGENDWARE] = anonteam_0_42.LEGENDWARE,
	[anonteam_0_43.NEVERLOSE] = anonteam_0_42.NEVERLOSE,
	[anonteam_0_43.NIXWARE] = anonteam_0_42.NIXWARE,
	[anonteam_0_43.SPIRTHACK] = anonteam_0_42.SPIRTHACK,
	[anonteam_0_43.RIFK7] = anonteam_0_42.RIFK7
}
local anonteam_0_45

repeat
	if _G == nil then
		if quick_maths ~= nil then
			anonteam_0_45 = anonteam_0_43.RIFK7

			break
		end

		if info.fatality == nil then
			anonteam_0_45 = anonteam_0_43.EV0LVE

			break
		end

		anonteam_0_45 = anonteam_0_43.FATALITY

		break
	end

	if MatSystem ~= nil then
		anonteam_0_45 = anonteam_0_43.SPIRTHACK

		break
	end

	if file ~= nil then
		anonteam_0_45 = anonteam_0_43.LEGENDWARE

		break
	end

	if penetration ~= nil then
		anonteam_0_45 = anonteam_0_43.PANDORA

		break
	end

	if math_utils ~= nil then
		anonteam_0_45 = anonteam_0_43.LEGION

		break
	end

	if plist ~= nil then
		anonteam_0_45 = anonteam_0_43.GAMESENSE

		break
	end

	if network ~= nil then
		anonteam_0_45 = anonteam_0_43.NEVERLOSE

		break
	end

	if renderer ~= nil and renderer.setup_texture ~= nil then
		anonteam_0_45 = anonteam_0_43.NIXWARE

		break
	end

	anonteam_0_45 = anonteam_0_43.PRIMORDIAL
until true

anonteam_0_37("implementation: " .. anonteam_0_43[anonteam_0_45])

local anonteam_0_46 = panorama

if _G == nil or anonteam_0_46 == nil then
	anonteam_0_46 = (function()

		local anonteam_3_81 = {
			_VERSION = 1.7
		}

		setmetatable(anonteam_3_81, {
			__call = function(arg_4_0)
				return arg_4_0._VERSION
			end,
			__tostring = function(arg_5_0)
				return arg_5_0._VERSION
			end
		})

		local anonteam_3_82 = require("ffi")
		local anonteam_3_83 = anonteam_3_82
		local anonteam_3_84, anonteam_3_85, anonteam_3_86, anonteam_3_87, anonteam_3_88 = anonteam_3_83.cast, anonteam_3_83.typeof, anonteam_3_83.new, anonteam_3_83.string, anonteam_3_83.metatype

		local function anonteam_3_89()
			return error("Unsupported provider")
		end

		local function anonteam_3_90()
			return error("Unsupported provider")
		end

		local function anonteam_3_91()
			return print("WARNING: Cleanup before shutdown disabled")
		end

		local anonteam_3_92

		repeat
			if _G == nil then
				if quick_maths == nil then
					if info.fatality == nil then
						anonteam_3_92 = "ev0lve"

						break
					end

					anonteam_3_92 = "fa7ality"

					break
				end

				anonteam_3_92 = "rifk7"

				break
			end

			if MatSystem ~= nil then
				anonteam_3_92 = "spirthack"

				break
			end

			if file ~= nil then
				anonteam_3_92 = "legendware"

				break
			end

			if GameEventManager ~= nil then
				anonteam_3_92 = "memesense"

				break
			end

			if penetration ~= nil then
				anonteam_3_92 = "pandora"

				break
			end

			if math_utils ~= nil then
				anonteam_3_92 = "legion"

				break
			end

			if plist ~= nil then
				anonteam_3_92 = "gamesense"

				break
			end

			if network ~= nil then
				anonteam_3_92 = "neverlose"

				break
			end

			if renderer ~= nil and renderer.setup_texture ~= nil then
				anonteam_3_92 = "nixware"

				break
			end

			anonteam_3_92 = "primordial"
		until true

		local anonteam_3_93 = anonteam_3_92

		if anonteam_3_93 == "ev0lve" then
			anonteam_3_89 = utils.find_pattern
			anonteam_3_90 = utils.find_interface

			local function anonteam_3_94()
				return
			end
		elseif anonteam_3_93 == "fa7ality" then
			anonteam_3_89 = utils.find_pattern
			anonteam_3_90 = utils.find_interface

			local function anonteam_3_95()
				return
			end
		elseif anonteam_3_93 == "primordial" then
			anonteam_3_89 = memory.find_pattern
			anonteam_3_90 = memory.create_interface

			local function anonteam_3_96(arg_11_0)
				return callbacks.add(e_callbacks.SHUTDOWN, arg_11_0)
			end
		elseif anonteam_3_93 == "memesense" then
			anonteam_3_89 = Utils.PatternScan
			anonteam_3_90 = Utils.CreateInterface

			local function anonteam_3_97(arg_12_0)
				return Cheat.RegisterCallback("destroy", arg_12_0)
			end
		elseif anonteam_3_93 == "legendware" then
			anonteam_3_89 = utils.find_signature
			anonteam_3_90 = utils.create_interface

			local function anonteam_3_98(arg_13_0)
				return client.add_callback("unload", arg_13_0)
			end
		elseif anonteam_3_93 == "pandora" then
			anonteam_3_89 = client.find_sig
			anonteam_3_90 = client.create_interface
		elseif anonteam_3_93 == "legion" then
			anonteam_3_89 = memory.find_pattern
			anonteam_3_90 = memory.create_interface

			local function anonteam_3_99(arg_14_0)
				return client.add_callback("on_unload", arg_14_0)
			end
		elseif anonteam_3_93 == "gamesense" then
			function anonteam_3_89(arg_15_0, arg_15_1)
				local anonteam_15_0 = ""

				for iter_15_0 in arg_15_1:gmatch("%S+") do
					anonteam_15_0 = anonteam_15_0 .. (iter_15_0 == "?" and "\xCC" or _G.string.char(tonumber(iter_15_0, 16)))
				end

				return client.find_signature(arg_15_0, anonteam_15_0)
			end

			anonteam_3_90 = client.create_interface

			local function anonteam_3_100(arg_16_0)
				return client.set_event_callback("shutdown", arg_16_0)
			end
		elseif anonteam_3_93 == "nixware" then
			anonteam_3_89 = client.find_pattern
			anonteam_3_90 = se.create_interface

			local function anonteam_3_101(arg_17_0)
				return client.register_callback("unload", arg_17_0)
			end
		elseif anonteam_3_93 == "neverlose" then
			anonteam_3_89 = utils.opcode_scan
			anonteam_3_90 = utils.create_interface

			local function anonteam_3_102()
				return
			end
		elseif anonteam_3_93 == "rifk7" then
			function anonteam_3_89(arg_19_0, arg_19_1)
				local anonteam_19_0 = anonteam_3_84("uint32_t*", engine.signature(arg_19_0, arg_19_1))

				assert(tonumber(anonteam_19_0) ~= 0)

				return anonteam_19_0[0]
			end

			function anonteam_3_90(arg_20_0, arg_20_1)
				arg_20_1 = anonteam_3_87.gsub(arg_20_1, "%d+", "")

				return general.create_interface(arg_20_0, arg_20_1)
			end

			function print(arg_21_0)
				return general.log_to_console_colored("[lua] " .. tostring(arg_21_0), 255, 141, 161, 255)
			end
		elseif anonteam_3_93 == "spirthack" then
			anonteam_3_89 = Utils.PatternScan
			anonteam_3_90 = Utils.CreateInterface
		end

		local anonteam_3_103 = xpcall and pcall and true or false
		local anonteam_3_104 = anonteam_3_82.C and anonteam_3_92 ~= "gamesense"

		print(("\nluv8 panorama library %s;\nhttps://github.com/Shir0ha/luv8\napi: %s; safe_mode: %s; ffi.C: %s"):format(anonteam_3_81._VERSION, anonteam_3_92, tostring(anonteam_3_103), tostring(anonteam_3_104)))

		local function anonteam_3_105()
			for iter_22_0, iter_22_1 in pairs(anonteam_3_51) do
				anonteam_3_56(iter_22_1):disposeGlobal()
			end
		end

		local anonteam_3_106 = error

		if error then
			function error(arg_23_0)
				anonteam_3_105()

				return anonteam_3_106(arg_23_0)
			end
		end

		local function anonteam_3_107(arg_24_0)
			return print("Caught lua exception in V8 HandleScope: ", tostring(arg_24_0))
		end

		local function anonteam_3_108(arg_25_0)
			return print("Caught lua exception in V8 Function Callback: ", tostring(arg_25_0))
		end

		local function anonteam_3_109(arg_26_0, arg_26_1)
			local anonteam_26_0 = getmetatable(arg_26_0)

			setmetatable(arg_26_0, nil)

			local anonteam_26_1 = arg_26_0[arg_26_1]

			setmetatable(arg_26_0, anonteam_26_0)

			return anonteam_26_1
		end

		local function anonteam_3_110(arg_27_0, arg_27_1, arg_27_2)
			local anonteam_27_0 = getmetatable(arg_27_0)

			setmetatable(arg_27_0, nil)

			arg_27_0[arg_27_1] = arg_27_2

			return setmetatable(arg_27_0, anonteam_27_0)
		end

		if not rawget then
			rawget = anonteam_3_109
		end

		if not rawset then
			rawset = anonteam_3_110
		end

		local function anonteam_3_111(arg_28_0, arg_28_1)
			return function(...)
				return arg_28_0(arg_28_1, ...)
			end
		end

		local function anonteam_3_112(arg_30_0)
			local anonteam_30_0 = {}

			for iter_30_0, iter_30_1 in pairs(arg_30_0) do
				anonteam_30_0[iter_30_0] = iter_30_1
			end

			return anonteam_30_0
		end

		local function anonteam_3_113(arg_31_0, arg_31_1, arg_31_2, arg_31_3)
			local anonteam_31_0 = anonteam_3_84("void***", anonteam_3_90(arg_31_0, arg_31_1)) or error(arg_31_1 .. " is nil.")

			return anonteam_3_111(anonteam_3_84(arg_31_3, anonteam_31_0[0][arg_31_2]), anonteam_31_0)
		end

		local anonteam_3_114 = anonteam_3_85("void***")

		local function anonteam_3_115(arg_32_0, arg_32_1, arg_32_2)
			return anonteam_3_84(arg_32_2, anonteam_3_84(anonteam_3_114, arg_32_0)[0][arg_32_1])
		end

		local function anonteam_3_116(arg_33_0, arg_33_1)
			local anonteam_33_0 = anonteam_3_85(arg_33_1)

			return function(arg_34_0, ...)
				return anonteam_3_115(arg_34_0, arg_33_0, anonteam_33_0)(arg_34_0, ...)
			end
		end

		local anonteam_3_117 = (function()
			local anonteam_35_0

			local function anonteam_35_1()
				return error("Failed to load GetProcAddress")
			end

			local anonteam_35_2

			local function anonteam_35_3()
				return error("Failed to load GetModuleHandleA")
			end

			if anonteam_3_104 then
				anonteam_3_82.cdef("            uint32_t GetProcAddress(uint32_t, const char*);\n          uint32_t GetModuleHandleA(const char*);\n      ")

				anonteam_35_1 = anonteam_3_82.C.GetProcAddress
				anonteam_35_3 = anonteam_3_82.C.GetModuleHandleA
			else
				anonteam_35_1 = anonteam_3_84("uint32_t(__stdcall*)(uint32_t, const char*)", anonteam_3_84("uint32_t**", anonteam_3_84("uint32_t", anonteam_3_89("engine.dll", "FF 15 ? ? ? ? A3 ? ? ? ? EB 05")) + 2)[0][0])
				anonteam_35_3 = anonteam_3_84("uint32_t(__stdcall*)(const char*)", anonteam_3_84("uint32_t**", anonteam_3_84("uint32_t", anonteam_3_89("engine.dll", "FF 15 ? ? ? ? 85 C0 74 0B")) + 2)[0][0])
			end

			if anonteam_3_92 == "gamesense" then
				local anonteam_35_4 = anonteam_3_89("engine.dll", "51 C3")
				local anonteam_35_5 = anonteam_3_84("void*", anonteam_35_1)

				function anonteam_35_1(arg_38_0, arg_38_1)
					return anonteam_3_84("uint32_t(__thiscall*)(void*, uint32_t, const char*)", anonteam_35_4)(anonteam_35_5, arg_38_0, arg_38_1)
				end

				local anonteam_35_6 = anonteam_3_84("void*", anonteam_35_3)

				function anonteam_35_3(arg_39_0)
					return anonteam_3_84("uint32_t(__thiscall*)(void*, const char*)", anonteam_35_4)(anonteam_35_6, arg_39_0)
				end
			end

			return function(arg_40_0, arg_40_1, arg_40_2)
				return anonteam_3_84(anonteam_3_85(arg_40_2), anonteam_35_1(anonteam_35_3(arg_40_0), arg_40_1))
			end
		end)()

		local function anonteam_3_118(arg_41_0)
			local anonteam_41_0 = anonteam_3_84("uint8_t*", arg_41_0)
			local anonteam_41_1 = anonteam_41_0[0]

			if (232 or 233) == anonteam_41_1 then
				return anonteam_3_84("uint32_t", anonteam_41_0 + anonteam_3_84("int32_t*", anonteam_41_0 + 1)[0] + 5)
			elseif anonteam_41_1 == 255 then
				if anonteam_41_0[1] == 21 then
					return anonteam_3_84("uint32_t**", anonteam_3_84("const char*", arg_41_0) + 2)[0][0]
				end
			else
				return arg_41_0
			end
		end

		local function anonteam_3_119(...)
			local anonteam_42_0 = {
				...
			}
			local anonteam_42_1 = #anonteam_42_0
			local anonteam_42_2 = anonteam_3_86(("void*[%.f]"):format(anonteam_42_1))

			for iter_42_0 = 1, anonteam_42_1 do
				anonteam_42_2[iter_42_0 - 1] = anonteam_3_57:fromLua(anonteam_42_0[iter_42_0]):getInternal()
			end

			return anonteam_42_1, anonteam_42_2
		end

		local function anonteam_3_120(arg_43_0)
			return function(arg_44_0)
				arg_44_0 = anonteam_3_63(arg_44_0)

				local anonteam_44_0 = {}
				local anonteam_44_1 = arg_44_0:length()

				if anonteam_44_1 > 0 then
					for iter_44_0 = 0, anonteam_44_1 - 1 do
						table.insert(anonteam_44_0, arg_44_0:get(iter_44_0))
					end
				end

				local anonteam_44_2

				if anonteam_3_103 then
					local anonteam_44_3, anonteam_44_4 = xpcall(function()
						return arg_43_0(unpack(anonteam_44_0))
					end, anonteam_3_108)

					if anonteam_44_3 then
						anonteam_44_2 = anonteam_44_4
					end
				else
					anonteam_44_2 = arg_43_0(unpack(anonteam_44_0))
				end

				return arg_44_0:setReturnValue(anonteam_3_57:fromLua(anonteam_44_2):getInternal())
			end
		end

		local function anonteam_3_121(arg_46_0)
			local anonteam_46_0 = 1

			for iter_46_0 in pairs(arg_46_0) do
				if arg_46_0[anonteam_46_0] ~= nil then
					anonteam_46_0 = anonteam_46_0 + 1
				else
					return false
				end
			end

			return anonteam_46_0 ~= 1
		end

		local anonteam_3_122 = anonteam_3_86("void*")
		local anonteam_3_123 = anonteam_3_86("int[1]")
		local anonteam_3_124 = {
			panelIDs = {}
		}
		local anonteam_3_125
		local anonteam_3_126 = {
			get = function(arg_47_0, arg_47_1, arg_47_2)
				return anonteam_3_111(anonteam_3_84(arg_47_2, arg_47_0.this[0][arg_47_1]), arg_47_0.this)
			end,
			getInstance = function(arg_48_0)
				return arg_48_0.this
			end
		}

		anonteam_3_126.__index = anonteam_3_126

		local anonteam_3_127 = setmetatable({
			__name = "vtable",
			__init = function(arg_49_0, arg_49_1)
				arg_49_0.this = anonteam_3_84("void***", arg_49_1)
			end,
			__base = anonteam_3_126
		}, {
			__index = anonteam_3_126,
			__call = function(arg_50_0, ...)
				local anonteam_50_0 = setmetatable({}, anonteam_3_126)

				arg_50_0.__init(anonteam_50_0, ...)

				return anonteam_50_0
			end
		})

		anonteam_3_126.__class = anonteam_3_127

		local anonteam_3_128 = anonteam_3_127
		local anonteam_3_129
		local anonteam_3_130 = {
			cache = {},
			get = function(arg_51_0, arg_51_1, arg_51_2)
				if not arg_51_0.cache[arg_51_1] then
					arg_51_0.cache[arg_51_1] = anonteam_3_117(arg_51_0.file, arg_51_1, arg_51_2)
				end

				return arg_51_0.cache[arg_51_1]
			end
		}

		anonteam_3_130.__index = anonteam_3_130

		local anonteam_3_131 = setmetatable({
			__name = "DllImport",
			__init = function(arg_52_0, arg_52_1)
				arg_52_0.file = arg_52_1
			end,
			__base = anonteam_3_130
		}, {
			__index = anonteam_3_130,
			__call = function(arg_53_0, ...)
				local anonteam_53_0 = setmetatable({}, anonteam_3_130)

				arg_53_0.__init(anonteam_53_0, ...)

				return anonteam_53_0
			end
		})

		anonteam_3_130.__class = anonteam_3_131

		local anonteam_3_132 = anonteam_3_131
		local anonteam_3_133 = anonteam_3_128(anonteam_3_113("panorama.dll", "PanoramaUIEngine001", 11, "void*(__thiscall*)(void*)")())
		local anonteam_3_134 = anonteam_3_133:get(36, "bool(__thiscall*)(void*,void const*)")
		local anonteam_3_135 = anonteam_3_133:get(56, "void*(__thiscall*)(void*)")
		local anonteam_3_136 = anonteam_3_133:get(113, "void****(__thiscall*)(void*,void*,char const*,char const*,int,int,bool)")
		local anonteam_3_137 = anonteam_3_111(anonteam_3_84(anonteam_3_85("void*(__thiscall*)(void*,void*,void*,void*,int,bool)"), anonteam_3_118(anonteam_3_89("panorama.dll", "E8 ? ? ? ? 8B 4C 24 10 FF 15"))), anonteam_3_133:getInstance())
		local anonteam_3_138 = anonteam_3_133:get(123, "void*(__thiscall*)(void*)")
		local anonteam_3_139 = anonteam_3_133:get(129, "void*(__thiscall*)(void*)")
		local anonteam_3_140 = anonteam_3_133:get(121, "void(__thiscall*)(void*, void*, void*)")
		local anonteam_3_141 = anonteam_3_116(25, "void*(__thiscall*)(void*)")
		local anonteam_3_142 = anonteam_3_116(9, "const char*(__thiscall*)(void*)")
		local anonteam_3_143 = anonteam_3_116(40, "void*(__thiscall*)(void*,const char*)")
		local anonteam_3_144 = anonteam_3_116(218, "void*(__thiscall*)(void*)")
		local anonteam_3_145 = anonteam_3_111(anonteam_3_84("void***(__thiscall*)(void*,void*)", anonteam_3_118(anonteam_3_89("panorama.dll", "E8 ? ? ? ? 8B 00 85 C0 75 1B"))), anonteam_3_133:getInstance())
		local anonteam_3_146 = {}

		local function anonteam_3_147(arg_54_0)
			if anonteam_3_146[arg_54_0] ~= nil then
				return anonteam_3_146[arg_54_0]
			end

			anonteam_3_146[arg_54_0] = anonteam_3_144(arg_54_0)

			return anonteam_3_146[arg_54_0]
		end

		local anonteam_3_148 = anonteam_3_132("v8.dll")
		local anonteam_3_149 = anonteam_3_139()

		anonteam_3_51 = {}

		local anonteam_3_150
		local anonteam_3_151 = {}

		anonteam_3_151.__index = anonteam_3_151

		local anonteam_3_152 = setmetatable({
			__name = "Message",
			__init = function(arg_55_0, arg_55_1)
				arg_55_0.this = anonteam_3_84("void*", arg_55_1)
			end,
			__base = anonteam_3_151
		}, {
			__index = anonteam_3_151,
			__call = function(arg_56_0, ...)
				local anonteam_56_0 = setmetatable({}, anonteam_3_151)

				arg_56_0.__init(anonteam_56_0, ...)

				return anonteam_56_0
			end
		})

		anonteam_3_151.__class = anonteam_3_152

		local anonteam_3_153 = anonteam_3_152
		local anonteam_3_154
		local anonteam_3_155 = {
			getInternal = function(arg_57_0)
				return arg_57_0.this
			end,
			isValid = function(arg_58_0)
				return arg_58_0.this[0] ~= anonteam_3_122
			end,
			getMessage = function(arg_59_0)
				return anonteam_3_153(arg_59_0.this[0])
			end,
			globalize = function(arg_60_0)
				local anonteam_60_0 = anonteam_3_148:get("?GlobalizeReference@V8@v8@@CAPAPAVObject@internal@2@PAVIsolate@42@PAPAV342@@Z", "void*(__cdecl*)(void*,void*)")(anonteam_3_149, arg_60_0.this[0])
				local anonteam_60_1 = anonteam_3_56(anonteam_60_0)

				anonteam_3_51[anonteam_60_1:getIdentityHash()] = anonteam_60_0

				return anonteam_60_1
			end,
			__call = function(arg_61_0)
				return anonteam_3_57(arg_61_0.this[0])
			end
		}

		anonteam_3_155.__index = anonteam_3_155

		local anonteam_3_156 = setmetatable({
			__name = "Local",
			__init = function(arg_62_0, arg_62_1)
				arg_62_0.this = anonteam_3_84("void**", arg_62_1)
			end,
			__base = anonteam_3_155
		}, {
			__index = anonteam_3_155,
			__call = function(arg_63_0, ...)
				local anonteam_63_0 = setmetatable({}, anonteam_3_155)

				arg_63_0.__init(anonteam_63_0, ...)

				return anonteam_63_0
			end
		})

		anonteam_3_155.__class = anonteam_3_156

		local anonteam_3_157 = anonteam_3_156
		local anonteam_3_158
		local anonteam_3_159 = {
			getInternal = function(arg_64_0)
				return arg_64_0.this
			end,
			toLocalChecked = function(arg_65_0)
				if arg_65_0.this[0] ~= anonteam_3_122 then
					return anonteam_3_157(arg_65_0.this)
				end
			end,
			toValueChecked = function(arg_66_0)
				if arg_66_0.this[0] ~= anonteam_3_122 then
					return anonteam_3_57(arg_66_0.this[0])
				end
			end
		}

		anonteam_3_159.__index = anonteam_3_159

		local anonteam_3_160 = setmetatable({
			__name = "MaybeLocal",
			__init = function(arg_67_0, arg_67_1)
				arg_67_0.this = anonteam_3_84("void**", arg_67_1)
			end,
			__base = anonteam_3_159
		}, {
			__index = anonteam_3_159,
			__call = function(arg_68_0, ...)
				local anonteam_68_0 = setmetatable({}, anonteam_3_159)

				arg_68_0.__init(anonteam_68_0, ...)

				return anonteam_68_0
			end
		})

		anonteam_3_159.__class = anonteam_3_160

		local anonteam_3_161 = anonteam_3_160
		local anonteam_3_162 = {
			__index = function(arg_69_0, arg_69_1)
				local anonteam_69_0 = rawget(arg_69_0, "this")
				local anonteam_69_1 = anonteam_3_73()(function()
					return anonteam_69_0:getAsValue():toObject():get(anonteam_3_57:fromLua(arg_69_1):getInternal()):toValueChecked():toLua()
				end)

				if type(anonteam_69_1) == "table" then
					rawset(anonteam_69_1, "parent", anonteam_69_0)
				end

				return anonteam_69_1
			end,
			__newindex = function(arg_71_0, arg_71_1, arg_71_2)
				local anonteam_71_0 = rawget(arg_71_0, "this")

				return anonteam_3_73()(function()
					return anonteam_71_0:getAsValue():toObject():set(anonteam_3_57:fromLua(arg_71_1):getInternal(), anonteam_3_57:fromLua(arg_71_2):getInternal()):toValueChecked():toLua()
				end)
			end,
			__len = function(arg_73_0)
				local anonteam_73_0 = rawget(arg_73_0, "this")
				local anonteam_73_1 = 0

				if anonteam_73_0.baseType == "Array" then
					anonteam_73_1 = anonteam_3_73()(function()
						return anonteam_73_0:getAsValue():toArray():length()
					end)
				elseif anonteam_73_0.baseType == "Object" then
					anonteam_73_1 = anonteam_3_73()(function()
						return anonteam_73_0:getAsValue():toObject():getPropertyNames():toValueChecked():toArray():length()
					end)
				end

				return anonteam_73_1
			end,
			__pairs = function(arg_76_0)
				local anonteam_76_0 = rawget(arg_76_0, "this")
				local anonteam_76_1

				local function anonteam_76_2()
					return nil
				end

				if anonteam_76_0.baseType == "Object" then
					anonteam_3_73()(function()
						local anonteam_78_0 = anonteam_3_59(anonteam_76_0:getAsValue():toObject():getPropertyNames():toValueChecked())
						local anonteam_78_1 = 0
						local anonteam_78_2 = anonteam_78_0:length()

						function anonteam_76_2()
							anonteam_78_1 = anonteam_78_1 + 1

							local anonteam_79_0 = anonteam_78_0[anonteam_78_1 - 1]

							if anonteam_78_1 <= anonteam_78_2 then
								return anonteam_79_0, arg_76_0[anonteam_79_0]
							end
						end
					end)
				end

				return anonteam_76_2
			end,
			__ipairs = function(arg_80_0)
				local anonteam_80_0 = rawget(arg_80_0, "this")
				local anonteam_80_1

				local function anonteam_80_2()
					return nil
				end

				if anonteam_80_0.baseType == "Array" then
					anonteam_3_73()(function()
						local anonteam_82_0 = 0
						local anonteam_82_1 = anonteam_80_0:getAsValue():toArray():length()

						function anonteam_80_2()
							anonteam_82_0 = anonteam_82_0 + 1

							if anonteam_82_0 <= anonteam_82_1 then
								return anonteam_82_0, arg_80_0[anonteam_82_0 - 1]
							end
						end
					end)
				end

				return anonteam_80_2
			end,
			__call = function(arg_84_0, ...)
				local anonteam_84_0 = rawget(arg_84_0, "this")
				local anonteam_84_1 = {
					...
				}

				if anonteam_84_0.baseType ~= "Function" then
					error("Attempted to call a non-function value: " .. anonteam_84_0.baseType)
				end

				local anonteam_84_2 = false
				local anonteam_84_3 = anonteam_3_73()(function()
					local anonteam_85_0 = anonteam_3_74()

					anonteam_85_0:enter()

					local anonteam_85_1 = anonteam_84_0:getAsValue():toFunction():setParent(rawget(arg_84_0, "parent"))(unpack(anonteam_84_1)):toLocalChecked()

					if anonteam_85_0:hasCaught() then
						anonteam_3_140(anonteam_85_0:getInternal(), anonteam_3_124.getPanel("CSGOJsRegistration"))

						if anonteam_3_103 then
							anonteam_84_2 = true
						end
					end

					anonteam_85_0:exit()

					if anonteam_85_1 == nil then
						return nil
					else
						return anonteam_85_1():toLua()
					end
				end)

				if anonteam_84_2 then
					error("\n\nFailed to call the given javascript function, please check the error message above ^ \n\n(definitely not because I was too lazy to implement my own exception handler)\n")
				end

				return anonteam_84_3
			end,
			__tostring = function(arg_86_0)
				local anonteam_86_0 = rawget(arg_86_0, "this")

				return anonteam_3_73()(function()
					return anonteam_86_0:getAsValue():stringValue()
				end)
			end,
			__gc = function(arg_88_0)
				return rawget(arg_88_0, "this"):disposeGlobal()
			end
		}
		local anonteam_3_163
		local anonteam_3_164 = {
			setType = function(arg_89_0, arg_89_1)
				arg_89_0.baseType = arg_89_1

				return arg_89_0
			end,
			getInternal = function(arg_90_0)
				return arg_90_0.this
			end,
			disposeGlobal = function(arg_91_0)
				return anonteam_3_148:get("?DisposeGlobal@V8@v8@@CAXPAPAVObject@internal@2@@Z", "void(__cdecl*)(void*)")(arg_91_0.this)
			end,
			get = function(arg_92_0)
				return anonteam_3_161(anonteam_3_73:createHandle(arg_92_0.this))
			end,
			getAsValue = function(arg_93_0)
				return anonteam_3_57(anonteam_3_73:createHandle(arg_93_0.this)[0])
			end,
			toLua = function(arg_94_0)
				return arg_94_0:get():toValueChecked():toLua()
			end,
			getIdentityHash = function(arg_95_0)
				return anonteam_3_148:get("?GetIdentityHash@Object@v8@@QAEHXZ", "int(__thiscall*)(void*)")(arg_95_0.this)
			end,
			__call = function(arg_96_0)
				return setmetatable({
					this = arg_96_0
				}, anonteam_3_162)
			end
		}

		anonteam_3_164.__index = anonteam_3_164

		local anonteam_3_165 = setmetatable({
			__name = "Persistent",
			__init = function(arg_97_0, arg_97_1, arg_97_2)
				if arg_97_2 == nil then
					arg_97_2 = "Value"
				end

				arg_97_0.this = arg_97_1
				arg_97_0.baseType = arg_97_2
			end,
			__base = anonteam_3_164
		}, {
			__index = anonteam_3_164,
			__call = function(arg_98_0, ...)
				local anonteam_98_0 = setmetatable({}, anonteam_3_164)

				arg_98_0.__init(anonteam_98_0, ...)

				return anonteam_98_0
			end
		})

		anonteam_3_164.__class = anonteam_3_165
		anonteam_3_56 = anonteam_3_165

		local anonteam_3_166
		local anonteam_3_167 = {
			fromLua = function(arg_99_0, arg_99_1)
				if arg_99_1 == nil then
					return anonteam_3_65(anonteam_3_149):getValue()
				end

				local anonteam_99_0 = type(arg_99_1)

				if anonteam_99_0 == "boolean" then
					return anonteam_3_67(anonteam_3_149, arg_99_1):getValue()
				elseif anonteam_99_0 == "number" then
					return anonteam_3_68(anonteam_3_149, arg_99_1):getInstance()
				elseif anonteam_99_0 == "string" then
					return anonteam_3_70(anonteam_3_149, arg_99_1):getInstance()
				elseif anonteam_99_0 == "table" then
					if anonteam_3_121(arg_99_1) then
						return anonteam_3_59:fromLua(anonteam_3_149, arg_99_1)
					else
						return anonteam_3_58:fromLua(anonteam_3_149, arg_99_1)
					end
				elseif anonteam_99_0 == "function" then
					return anonteam_3_62(anonteam_3_120(arg_99_1)):getFunction()()
				else
					return error("Failed to convert from lua to v8js: Unknown type")
				end
			end,
			isUndefined = function(arg_100_0)
				return anonteam_3_148:get("?IsUndefined@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_100_0.this)
			end,
			isNull = function(arg_101_0)
				return anonteam_3_148:get("?IsNull@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_101_0.this)
			end,
			isBoolean = function(arg_102_0)
				return anonteam_3_148:get("?IsBoolean@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_102_0.this)
			end,
			isBooleanObject = function(arg_103_0)
				return anonteam_3_148:get("?IsBooleanObject@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_103_0.this)
			end,
			isNumber = function(arg_104_0)
				return anonteam_3_148:get("?IsNumber@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_104_0.this)
			end,
			isNumberObject = function(arg_105_0)
				return anonteam_3_148:get("?IsNumberObject@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_105_0.this)
			end,
			isString = function(arg_106_0)
				return anonteam_3_148:get("?IsString@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_106_0.this)
			end,
			isStringObject = function(arg_107_0)
				return anonteam_3_148:get("?IsStringObject@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_107_0.this)
			end,
			isObject = function(arg_108_0)
				return anonteam_3_148:get("?IsObject@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_108_0.this)
			end,
			isArray = function(arg_109_0)
				return anonteam_3_148:get("?IsArray@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_109_0.this)
			end,
			isFunction = function(arg_110_0)
				return anonteam_3_148:get("?IsFunction@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_110_0.this)
			end,
			booleanValue = function(arg_111_0)
				return anonteam_3_148:get("?BooleanValue@Value@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_111_0.this)
			end,
			numberValue = function(arg_112_0)
				return anonteam_3_148:get("?NumberValue@Value@v8@@QBENXZ", "double(__thiscall*)(void*)")(arg_112_0.this)
			end,
			stringValue = function(arg_113_0)
				local anonteam_113_0 = anonteam_3_86("char*[2]")
				local anonteam_113_1 = anonteam_3_148:get("??0Utf8Value@String@v8@@QAE@V?$Local@VValue@v8@@@2@@Z", "struct{char* str; int length;}*(__thiscall*)(void*,void*)")(anonteam_113_0, arg_113_0.this)
				local anonteam_113_2 = anonteam_3_87(anonteam_113_1.str, anonteam_113_1.length)

				anonteam_3_148:get("??1Utf8Value@String@v8@@QAE@XZ", "void(__thiscall*)(void*)")(anonteam_113_0)

				return anonteam_113_2
			end,
			toObject = function(arg_114_0)
				return anonteam_3_58(anonteam_3_161(anonteam_3_148:get("?ToObject@Value@v8@@QBE?AV?$Local@VObject@v8@@@2@XZ", "void*(__thiscall*)(void*,void*)")(arg_114_0.this, anonteam_3_123)):toValueChecked():getInternal())
			end,
			toArray = function(arg_115_0)
				return anonteam_3_59(anonteam_3_161(anonteam_3_148:get("?ToObject@Value@v8@@QBE?AV?$Local@VObject@v8@@@2@XZ", "void*(__thiscall*)(void*,void*)")(arg_115_0.this, anonteam_3_123)):toValueChecked():getInternal())
			end,
			toFunction = function(arg_116_0)
				return anonteam_3_60(anonteam_3_161(anonteam_3_148:get("?ToObject@Value@v8@@QBE?AV?$Local@VObject@v8@@@2@XZ", "void*(__thiscall*)(void*,void*)")(arg_116_0.this, anonteam_3_123)):toValueChecked():getInternal())
			end,
			toLocal = function(arg_117_0)
				return anonteam_3_157(anonteam_3_86("void*[1]", arg_117_0.this))
			end,
			toLua = function(arg_118_0)
				if arg_118_0:isUndefined() or arg_118_0:isNull() then
					return nil
				end

				if arg_118_0:isBoolean() or arg_118_0:isBooleanObject() then
					return arg_118_0:booleanValue()
				end

				if arg_118_0:isNumber() or arg_118_0:isNumberObject() then
					return arg_118_0:numberValue()
				end

				if arg_118_0:isString() or arg_118_0:isStringObject() then
					return arg_118_0:stringValue()
				end

				if arg_118_0:isObject() then
					if arg_118_0:isArray() then
						return arg_118_0:toArray():toLocal():globalize():setType("Array")()
					end

					if arg_118_0:isFunction() then
						return arg_118_0:toFunction():toLocal():globalize():setType("Function")()
					end

					return arg_118_0:toObject():toLocal():globalize():setType("Object")()
				end

				return error("Failed to convert from v8js to lua: Unknown type")
			end,
			getInternal = function(arg_119_0)
				return arg_119_0.this
			end
		}

		anonteam_3_167.__index = anonteam_3_167

		local anonteam_3_168 = setmetatable({
			__name = "Value",
			__init = function(arg_120_0, arg_120_1)
				arg_120_0.this = anonteam_3_84("void*", arg_120_1)
			end,
			__base = anonteam_3_167
		}, {
			__index = anonteam_3_167,
			__call = function(arg_121_0, ...)
				local anonteam_121_0 = setmetatable({}, anonteam_3_167)

				arg_121_0.__init(anonteam_121_0, ...)

				return anonteam_121_0
			end
		})

		anonteam_3_167.__class = anonteam_3_168
		anonteam_3_57 = anonteam_3_168

		local anonteam_3_169
		local anonteam_3_170 = anonteam_3_57
		local anonteam_3_171 = {
			fromLua = function(arg_122_0, arg_122_1, arg_122_2)
				local anonteam_122_0 = anonteam_3_58(anonteam_3_161(anonteam_3_148:get("?New@Object@v8@@SA?AV?$Local@VObject@v8@@@2@PAVIsolate@2@@Z", "void*(__cdecl*)(void*,void*)")(anonteam_3_123, arg_122_1)):toValueChecked():getInternal())

				for iter_122_0, iter_122_1 in pairs(arg_122_2) do
					anonteam_122_0:set(anonteam_3_57:fromLua(iter_122_0):getInternal(), anonteam_3_57:fromLua(iter_122_1):getInternal())
				end

				return anonteam_122_0
			end,
			get = function(arg_123_0, arg_123_1)
				return anonteam_3_161(anonteam_3_148:get("?Get@Object@v8@@QAE?AV?$Local@VValue@v8@@@2@V32@@Z", "void*(__thiscall*)(void*,void*,void*)")(arg_123_0.this, anonteam_3_123, arg_123_1))
			end,
			set = function(arg_124_0, arg_124_1, arg_124_2)
				return anonteam_3_148:get("?Set@Object@v8@@QAE_NV?$Local@VValue@v8@@@2@0@Z", "bool(__thiscall*)(void*,void*,void*)")(arg_124_0.this, arg_124_1, arg_124_2)
			end,
			getPropertyNames = function(arg_125_0)
				return anonteam_3_161(anonteam_3_148:get("?GetPropertyNames@Object@v8@@QAE?AV?$Local@VArray@v8@@@2@XZ", "void*(__thiscall*)(void*,void*)")(arg_125_0.this, anonteam_3_123))
			end,
			callAsFunction = function(arg_126_0, arg_126_1, arg_126_2, arg_126_3)
				return anonteam_3_161(anonteam_3_148:get("?CallAsFunction@Object@v8@@QAE?AV?$Local@VValue@v8@@@2@V32@HQAV32@@Z", "void*(__thiscall*)(void*,void*,void*,int,void*)")(arg_126_0.this, anonteam_3_123, arg_126_1, arg_126_2, arg_126_3))
			end,
			getIdentityHash = function(arg_127_0)
				return anonteam_3_148:get("?GetIdentityHash@Object@v8@@QAEHXZ", "int(__thiscall*)(void*)")(arg_127_0.this)
			end
		}

		anonteam_3_171.__index = anonteam_3_171

		setmetatable(anonteam_3_171, anonteam_3_170.__base)

		local anonteam_3_172 = setmetatable({
			__name = "Object",
			__init = function(arg_128_0, arg_128_1)
				arg_128_0.this = arg_128_1
			end,
			__base = anonteam_3_171,
			__parent = anonteam_3_170
		}, {
			__index = function(arg_129_0, arg_129_1)
				local anonteam_129_0 = rawget(anonteam_3_171, arg_129_1)

				if anonteam_129_0 == nil then
					local anonteam_129_1 = rawget(arg_129_0, "__parent")

					if anonteam_129_1 then
						return anonteam_129_1[arg_129_1]
					end
				else
					return anonteam_129_0
				end
			end,
			__call = function(arg_130_0, ...)
				local anonteam_130_0 = setmetatable({}, anonteam_3_171)

				arg_130_0.__init(anonteam_130_0, ...)

				return anonteam_130_0
			end
		})

		anonteam_3_171.__class = anonteam_3_172

		if anonteam_3_170.__inherited then
			anonteam_3_170.__inherited(anonteam_3_170, anonteam_3_172)
		end

		anonteam_3_58 = anonteam_3_172

		local anonteam_3_173
		local anonteam_3_174 = anonteam_3_58
		local anonteam_3_175 = {
			fromLua = function(arg_131_0, arg_131_1, arg_131_2)
				local anonteam_131_0 = anonteam_3_59(anonteam_3_161(anonteam_3_148:get("?New@Array@v8@@SA?AV?$Local@VArray@v8@@@2@PAVIsolate@2@H@Z", "void*(__cdecl*)(void*,void*,int)")(anonteam_3_123, arg_131_1, #arg_131_2)):toValueChecked():getInternal())

				for iter_131_0 = 1, #arg_131_2 do
					anonteam_131_0:set(iter_131_0 - 1, anonteam_3_57:fromLua(arg_131_2[iter_131_0]):getInternal())
				end

				return anonteam_131_0
			end,
			get = function(arg_132_0, arg_132_1)
				return anonteam_3_161(anonteam_3_148:get("?Get@Object@v8@@QAE?AV?$Local@VValue@v8@@@2@I@Z", "void*(__thiscall*)(void*,void*,unsigned int)")(arg_132_0.this, anonteam_3_123, arg_132_1))
			end,
			set = function(arg_133_0, arg_133_1, arg_133_2)
				return anonteam_3_148:get("?Set@Object@v8@@QAE_NIV?$Local@VValue@v8@@@2@@Z", "bool(__thiscall*)(void*,unsigned int,void*)")(arg_133_0.this, arg_133_1, arg_133_2)
			end,
			length = function(arg_134_0)
				return anonteam_3_148:get("?Length@Array@v8@@QBEIXZ", "uint32_t(__thiscall*)(void*)")(arg_134_0.this)
			end
		}

		anonteam_3_175.__index = anonteam_3_175

		setmetatable(anonteam_3_175, anonteam_3_174.__base)

		local anonteam_3_176 = setmetatable({
			__name = "Array",
			__init = function(arg_135_0, arg_135_1)
				arg_135_0.this = arg_135_1
			end,
			__base = anonteam_3_175,
			__parent = anonteam_3_174
		}, {
			__index = function(arg_136_0, arg_136_1)
				local anonteam_136_0 = rawget(anonteam_3_175, arg_136_1)

				if anonteam_136_0 == nil then
					local anonteam_136_1 = rawget(arg_136_0, "__parent")

					if anonteam_136_1 then
						return anonteam_136_1[arg_136_1]
					end
				else
					return anonteam_136_0
				end
			end,
			__call = function(arg_137_0, ...)
				local anonteam_137_0 = setmetatable({}, anonteam_3_175)

				arg_137_0.__init(anonteam_137_0, ...)

				return anonteam_137_0
			end
		})

		anonteam_3_175.__class = anonteam_3_176

		if anonteam_3_174.__inherited then
			anonteam_3_174.__inherited(anonteam_3_174, anonteam_3_176)
		end

		anonteam_3_59 = anonteam_3_176

		local anonteam_3_177
		local anonteam_3_178 = anonteam_3_58
		local anonteam_3_179 = {
			setParent = function(arg_138_0, arg_138_1)
				arg_138_0.parent = arg_138_1

				return arg_138_0
			end,
			__call = function(arg_139_0, ...)
				if arg_139_0.parent == nil then
					return arg_139_0:callAsFunction(anonteam_3_72(anonteam_3_71():getCurrentContext()):global():toValueChecked():getInternal(), anonteam_3_119(...))
				else
					return arg_139_0:callAsFunction(arg_139_0.parent:getAsValue():getInternal(), anonteam_3_119(...))
				end
			end
		}

		anonteam_3_179.__index = anonteam_3_179

		setmetatable(anonteam_3_179, anonteam_3_178.__base)

		local anonteam_3_180 = setmetatable({
			__name = "Function",
			__init = function(arg_140_0, arg_140_1, arg_140_2)
				arg_140_0.this = arg_140_1
				arg_140_0.parent = arg_140_2
			end,
			__base = anonteam_3_179,
			__parent = anonteam_3_178
		}, {
			__index = function(arg_141_0, arg_141_1)
				local anonteam_141_0 = rawget(anonteam_3_179, arg_141_1)

				if anonteam_141_0 == nil then
					local anonteam_141_1 = rawget(arg_141_0, "__parent")

					if anonteam_141_1 then
						return anonteam_141_1[arg_141_1]
					end
				else
					return anonteam_141_0
				end
			end,
			__call = function(arg_142_0, ...)
				local anonteam_142_0 = setmetatable({}, anonteam_3_179)

				arg_142_0.__init(anonteam_142_0, ...)

				return anonteam_142_0
			end
		})

		anonteam_3_179.__class = anonteam_3_180

		if anonteam_3_178.__inherited then
			anonteam_3_178.__inherited(anonteam_3_178, anonteam_3_180)
		end

		anonteam_3_60 = anonteam_3_180

		local anonteam_3_181
		local anonteam_3_182 = {}

		anonteam_3_182.__index = anonteam_3_182

		local anonteam_3_183 = setmetatable({
			__name = "ObjectTemplate",
			__init = function(arg_143_0)
				arg_143_0.this = anonteam_3_161(anonteam_3_148:get("?New@ObjectTemplate@v8@@SA?AV?$Local@VObjectTemplate@v8@@@2@XZ", "void*(__cdecl*)(void*)")(anonteam_3_123)):toLocalChecked()
			end,
			__base = anonteam_3_182
		}, {
			__index = anonteam_3_182,
			__call = function(arg_144_0, ...)
				local anonteam_144_0 = setmetatable({}, anonteam_3_182)

				arg_144_0.__init(anonteam_144_0, ...)

				return anonteam_144_0
			end
		})

		anonteam_3_182.__class = anonteam_3_183

		local anonteam_3_184 = anonteam_3_183
		local anonteam_3_185
		local anonteam_3_186 = {
			getFunction = function(arg_145_0)
				return anonteam_3_161(anonteam_3_148:get("?GetFunction@FunctionTemplate@v8@@QAE?AV?$Local@VFunction@v8@@@2@XZ", "void*(__thiscall*)(void*, void*)")(arg_145_0:this():getInternal(), anonteam_3_123)):toLocalChecked()
			end,
			getInstance = function(arg_146_0)
				return arg_146_0:this()
			end
		}

		anonteam_3_186.__index = anonteam_3_186

		local anonteam_3_187 = setmetatable({
			__name = "FunctionTemplate",
			__init = function(arg_147_0, arg_147_1)
				arg_147_0.this = anonteam_3_161(anonteam_3_148:get("?New@FunctionTemplate@v8@@SA?AV?$Local@VFunctionTemplate@v8@@@2@PAVIsolate@2@P6AXABV?$FunctionCallbackInfo@VValue@v8@@@2@@ZV?$Local@VValue@v8@@@2@V?$Local@VSignature@v8@@@2@HW4ConstructorBehavior@2@@Z", "void*(__cdecl*)(void*,void*,void*,void*,void*,int,int)")(anonteam_3_123, anonteam_3_149, anonteam_3_84("void(__cdecl*)(void******)", arg_147_1), anonteam_3_86("int[1]"), anonteam_3_86("int[1]"), 0, 0)):toLocalChecked()
			end,
			__base = anonteam_3_186
		}, {
			__index = anonteam_3_186,
			__call = function(arg_148_0, ...)
				local anonteam_148_0 = setmetatable({}, anonteam_3_186)

				arg_148_0.__init(anonteam_148_0, ...)

				return anonteam_148_0
			end
		})

		anonteam_3_186.__class = anonteam_3_187
		anonteam_3_62 = anonteam_3_187

		local anonteam_3_188
		local anonteam_3_189 = {
			kNewTargetIndex = 7,
			kContextSaveIndex = 6,
			kCalleeIndex = 5,
			kDataIndex = 4,
			kReturnValueIndex = 3,
			kReturnValueDefaultValueIndex = 2,
			kIsolateIndex = 1,
			kHolderIndex = 0,
			getHolder = function(arg_149_0)
				return anonteam_3_161(arg_149_0:getImplicitArgs_()[arg_149_0.kHolderIndex]):toLocalChecked()
			end,
			getIsolate = function(arg_150_0)
				return anonteam_3_71(arg_150_0:getImplicitArgs_()[arg_150_0.kIsolateIndex][0])
			end,
			getReturnValueDefaultValue = function(arg_151_0)
				return anonteam_3_57(anonteam_3_86("void*[1]", arg_151_0:getImplicitArgs_()[arg_151_0.kReturnValueDefaultValueIndex]))
			end,
			getReturnValue = function(arg_152_0)
				return anonteam_3_57(anonteam_3_86("void*[1]", arg_152_0:getImplicitArgs_()[arg_152_0.kReturnValueIndex]))
			end,
			setReturnValue = function(arg_153_0, arg_153_1)
				arg_153_0:getImplicitArgs_()[arg_153_0.kReturnValueIndex] = anonteam_3_84("void**", arg_153_1)[0]
			end,
			getData = function(arg_154_0)
				return anonteam_3_161(arg_154_0:getImplicitArgs_()[arg_154_0.kDataIndex]):toLocalChecked()
			end,
			getCallee = function(arg_155_0)
				return anonteam_3_161(arg_155_0:getImplicitArgs_()[arg_155_0.kCalleeIndex]):toLocalChecked()
			end,
			getContextSave = function(arg_156_0)
				return anonteam_3_161(arg_156_0:getImplicitArgs_()[arg_156_0.kContextSaveIndex]):toLocalChecked()
			end,
			getNewTarget = function(arg_157_0)
				return anonteam_3_161(arg_157_0:getImplicitArgs_()[arg_157_0.kNewTargetIndex]):toLocalChecked()
			end,
			getImplicitArgs_ = function(arg_158_0)
				return arg_158_0.this[0]
			end,
			getValues_ = function(arg_159_0)
				return arg_159_0.this[1]
			end,
			getLength_ = function(arg_160_0)
				return arg_160_0.this[2]
			end,
			length = function(arg_161_0)
				return tonumber(anonteam_3_84("int", arg_161_0:getLength_()))
			end,
			get = function(arg_162_0, arg_162_1)
				if arg_162_1 < arg_162_0:length() then
					return anonteam_3_57(arg_162_0:getValues_() - arg_162_1):toLua()
				else
					return
				end
			end
		}

		anonteam_3_189.__index = anonteam_3_189

		local anonteam_3_190 = setmetatable({
			__name = "FunctionCallbackInfo",
			__init = function(arg_163_0, arg_163_1)
				arg_163_0.this = anonteam_3_84("void****", arg_163_1)
			end,
			__base = anonteam_3_189
		}, {
			__index = anonteam_3_189,
			__call = function(arg_164_0, ...)
				local anonteam_164_0 = setmetatable({}, anonteam_3_189)

				arg_164_0.__init(anonteam_164_0, ...)

				return anonteam_164_0
			end
		})

		anonteam_3_189.__class = anonteam_3_190
		anonteam_3_63 = anonteam_3_190

		local anonteam_3_191
		local anonteam_3_192 = anonteam_3_57
		local anonteam_3_193 = {
			getValue = function(arg_165_0)
				return arg_165_0.this
			end,
			toString = function(arg_166_0)
				return arg_166_0.this:getValue():stringValue()
			end
		}

		anonteam_3_193.__index = anonteam_3_193

		setmetatable(anonteam_3_193, anonteam_3_192.__base)

		local anonteam_3_194 = setmetatable({
			__name = "Primitive",
			__init = function(arg_167_0, arg_167_1)
				arg_167_0.this = arg_167_1
			end,
			__base = anonteam_3_193,
			__parent = anonteam_3_192
		}, {
			__index = function(arg_168_0, arg_168_1)
				local anonteam_168_0 = rawget(anonteam_3_193, arg_168_1)

				if anonteam_168_0 == nil then
					local anonteam_168_1 = rawget(arg_168_0, "__parent")

					if anonteam_168_1 then
						return anonteam_168_1[arg_168_1]
					end
				else
					return anonteam_168_0
				end
			end,
			__call = function(arg_169_0, ...)
				local anonteam_169_0 = setmetatable({}, anonteam_3_193)

				arg_169_0.__init(anonteam_169_0, ...)

				return anonteam_169_0
			end
		})

		anonteam_3_193.__class = anonteam_3_194

		if anonteam_3_192.__inherited then
			anonteam_3_192.__inherited(anonteam_3_192, anonteam_3_194)
		end

		local anonteam_3_195 = anonteam_3_194
		local anonteam_3_196
		local anonteam_3_197 = anonteam_3_195
		local anonteam_3_198 = {}

		anonteam_3_198.__index = anonteam_3_198

		setmetatable(anonteam_3_198, anonteam_3_197.__base)

		local anonteam_3_199 = setmetatable({
			__name = "Null",
			__init = function(arg_170_0, arg_170_1)
				arg_170_0.this = anonteam_3_57(anonteam_3_84("uintptr_t", arg_170_1) + 72)
			end,
			__base = anonteam_3_198,
			__parent = anonteam_3_197
		}, {
			__index = function(arg_171_0, arg_171_1)
				local anonteam_171_0 = rawget(anonteam_3_198, arg_171_1)

				if anonteam_171_0 == nil then
					local anonteam_171_1 = rawget(arg_171_0, "__parent")

					if anonteam_171_1 then
						return anonteam_171_1[arg_171_1]
					end
				else
					return anonteam_171_0
				end
			end,
			__call = function(arg_172_0, ...)
				local anonteam_172_0 = setmetatable({}, anonteam_3_198)

				arg_172_0.__init(anonteam_172_0, ...)

				return anonteam_172_0
			end
		})

		anonteam_3_198.__class = anonteam_3_199

		if anonteam_3_197.__inherited then
			anonteam_3_197.__inherited(anonteam_3_197, anonteam_3_199)
		end

		anonteam_3_65 = anonteam_3_199

		local anonteam_3_200
		local anonteam_3_201 = anonteam_3_195
		local anonteam_3_202 = {}

		anonteam_3_202.__index = anonteam_3_202

		setmetatable(anonteam_3_202, anonteam_3_201.__base)

		local anonteam_3_203 = setmetatable({
			__name = "Undefined",
			__init = function(arg_173_0, arg_173_1)
				arg_173_0.this = anonteam_3_57(anonteam_3_84("uintptr_t", arg_173_1) + 86)
			end,
			__base = anonteam_3_202,
			__parent = anonteam_3_201
		}, {
			__index = function(arg_174_0, arg_174_1)
				local anonteam_174_0 = rawget(anonteam_3_202, arg_174_1)

				if anonteam_174_0 == nil then
					local anonteam_174_1 = rawget(arg_174_0, "__parent")

					if anonteam_174_1 then
						return anonteam_174_1[arg_174_1]
					end
				else
					return anonteam_174_0
				end
			end,
			__call = function(arg_175_0, ...)
				local anonteam_175_0 = setmetatable({}, anonteam_3_202)

				arg_175_0.__init(anonteam_175_0, ...)

				return anonteam_175_0
			end
		})

		anonteam_3_202.__class = anonteam_3_203

		if anonteam_3_201.__inherited then
			anonteam_3_201.__inherited(anonteam_3_201, anonteam_3_203)
		end

		local anonteam_3_204 = anonteam_3_203
		local anonteam_3_205
		local anonteam_3_206 = anonteam_3_195
		local anonteam_3_207 = {}

		anonteam_3_207.__index = anonteam_3_207

		setmetatable(anonteam_3_207, anonteam_3_206.__base)

		local anonteam_3_208 = setmetatable({
			__name = "Boolean",
			__init = function(arg_176_0, arg_176_1, arg_176_2)
				arg_176_0.this = anonteam_3_57(anonteam_3_84("uintptr_t", arg_176_1) + (function()
					if arg_176_2 then
						return 76
					else
						return 80
					end
				end)())
			end,
			__base = anonteam_3_207,
			__parent = anonteam_3_206
		}, {
			__index = function(arg_178_0, arg_178_1)
				local anonteam_178_0 = rawget(anonteam_3_207, arg_178_1)

				if anonteam_178_0 == nil then
					local anonteam_178_1 = rawget(arg_178_0, "__parent")

					if anonteam_178_1 then
						return anonteam_178_1[arg_178_1]
					end
				else
					return anonteam_178_0
				end
			end,
			__call = function(arg_179_0, ...)
				local anonteam_179_0 = setmetatable({}, anonteam_3_207)

				arg_179_0.__init(anonteam_179_0, ...)

				return anonteam_179_0
			end
		})

		anonteam_3_207.__class = anonteam_3_208

		if anonteam_3_206.__inherited then
			anonteam_3_206.__inherited(anonteam_3_206, anonteam_3_208)
		end

		anonteam_3_67 = anonteam_3_208

		local anonteam_3_209
		local anonteam_3_210 = anonteam_3_57
		local anonteam_3_211 = {
			getLocal = function(arg_180_0)
				return arg_180_0.this
			end,
			getValue = function(arg_181_0)
				return arg_181_0:getInstance():numberValue()
			end,
			getInstance = function(arg_182_0)
				return arg_182_0:this()
			end
		}

		anonteam_3_211.__index = anonteam_3_211

		setmetatable(anonteam_3_211, anonteam_3_210.__base)

		local anonteam_3_212 = setmetatable({
			__name = "Number",
			__init = function(arg_183_0, arg_183_1, arg_183_2)
				arg_183_0.this = anonteam_3_161(anonteam_3_148:get("?New@Number@v8@@SA?AV?$Local@VNumber@v8@@@2@PAVIsolate@2@N@Z", "void*(__cdecl*)(void*,void*,double)")(anonteam_3_123, arg_183_1, tonumber(arg_183_2))):toLocalChecked()
			end,
			__base = anonteam_3_211,
			__parent = anonteam_3_210
		}, {
			__index = function(arg_184_0, arg_184_1)
				local anonteam_184_0 = rawget(anonteam_3_211, arg_184_1)

				if anonteam_184_0 == nil then
					local anonteam_184_1 = rawget(arg_184_0, "__parent")

					if anonteam_184_1 then
						return anonteam_184_1[arg_184_1]
					end
				else
					return anonteam_184_0
				end
			end,
			__call = function(arg_185_0, ...)
				local anonteam_185_0 = setmetatable({}, anonteam_3_211)

				arg_185_0.__init(anonteam_185_0, ...)

				return anonteam_185_0
			end
		})

		anonteam_3_211.__class = anonteam_3_212

		if anonteam_3_210.__inherited then
			anonteam_3_210.__inherited(anonteam_3_210, anonteam_3_212)
		end

		anonteam_3_68 = anonteam_3_212

		local anonteam_3_213
		local anonteam_3_214 = anonteam_3_68
		local anonteam_3_215 = {}

		anonteam_3_215.__index = anonteam_3_215

		setmetatable(anonteam_3_215, anonteam_3_214.__base)

		local anonteam_3_216 = setmetatable({
			__name = "Integer",
			__init = function(arg_186_0, arg_186_1, arg_186_2)
				arg_186_0.this = anonteam_3_161(anonteam_3_148:get("?NewFromUnsigned@Integer@v8@@SA?AV?$Local@VInteger@v8@@@2@PAVIsolate@2@I@Z", "void*(__cdecl*)(void*,void*,uint32_t)")(anonteam_3_123, arg_186_1, tonumber(arg_186_2))):toLocalChecked()
			end,
			__base = anonteam_3_215,
			__parent = anonteam_3_214
		}, {
			__index = function(arg_187_0, arg_187_1)
				local anonteam_187_0 = rawget(anonteam_3_215, arg_187_1)

				if anonteam_187_0 == nil then
					local anonteam_187_1 = rawget(arg_187_0, "__parent")

					if anonteam_187_1 then
						return anonteam_187_1[arg_187_1]
					end
				else
					return anonteam_187_0
				end
			end,
			__call = function(arg_188_0, ...)
				local anonteam_188_0 = setmetatable({}, anonteam_3_215)

				arg_188_0.__init(anonteam_188_0, ...)

				return anonteam_188_0
			end
		})

		anonteam_3_215.__class = anonteam_3_216

		if anonteam_3_214.__inherited then
			anonteam_3_214.__inherited(anonteam_3_214, anonteam_3_216)
		end

		local anonteam_3_217 = anonteam_3_216
		local anonteam_3_218
		local anonteam_3_219 = anonteam_3_57
		local anonteam_3_220 = {
			getLocal = function(arg_189_0)
				return arg_189_0.this
			end,
			getValue = function(arg_190_0)
				return arg_190_0:getInstance():stringValue()
			end,
			getInstance = function(arg_191_0)
				return arg_191_0:this()
			end
		}

		anonteam_3_220.__index = anonteam_3_220

		setmetatable(anonteam_3_220, anonteam_3_219.__base)

		local anonteam_3_221 = setmetatable({
			__name = "String",
			__init = function(arg_192_0, arg_192_1, arg_192_2)
				arg_192_0.this = anonteam_3_161(anonteam_3_148:get("?NewFromUtf8@String@v8@@SA?AV?$MaybeLocal@VString@v8@@@2@PAVIsolate@2@PBDW4NewStringType@2@H@Z", "void*(__cdecl*)(void*,void*,const char*,int,int)")(anonteam_3_123, arg_192_1, arg_192_2, 0, #arg_192_2)):toLocalChecked()
			end,
			__base = anonteam_3_220,
			__parent = anonteam_3_219
		}, {
			__index = function(arg_193_0, arg_193_1)
				local anonteam_193_0 = rawget(anonteam_3_220, arg_193_1)

				if anonteam_193_0 == nil then
					local anonteam_193_1 = rawget(arg_193_0, "__parent")

					if anonteam_193_1 then
						return anonteam_193_1[arg_193_1]
					end
				else
					return anonteam_193_0
				end
			end,
			__call = function(arg_194_0, ...)
				local anonteam_194_0 = setmetatable({}, anonteam_3_220)

				arg_194_0.__init(anonteam_194_0, ...)

				return anonteam_194_0
			end
		})

		anonteam_3_220.__class = anonteam_3_221

		if anonteam_3_219.__inherited then
			anonteam_3_219.__inherited(anonteam_3_219, anonteam_3_221)
		end

		anonteam_3_70 = anonteam_3_221

		local anonteam_3_222
		local anonteam_3_223 = {
			enter = function(arg_195_0)
				return anonteam_3_148:get("?Enter@Isolate@v8@@QAEXXZ", "void(__thiscall*)(void*)")(arg_195_0.this)
			end,
			exit = function(arg_196_0)
				return anonteam_3_148:get("?Exit@Isolate@v8@@QAEXXZ", "void(__thiscall*)(void*)")(arg_196_0.this)
			end,
			getCurrentContext = function(arg_197_0)
				return anonteam_3_161(anonteam_3_148:get("?GetCurrentContext@Isolate@v8@@QAE?AV?$Local@VContext@v8@@@2@XZ", "void**(__thiscall*)(void*,void*)")(arg_197_0.this, anonteam_3_123)):toValueChecked():getInternal()
			end,
			getInternal = function(arg_198_0)
				return arg_198_0.this
			end
		}

		anonteam_3_223.__index = anonteam_3_223

		local anonteam_3_224 = setmetatable({
			__name = "Isolate",
			__init = function(arg_199_0, arg_199_1)
				if arg_199_1 == nil then
					arg_199_1 = anonteam_3_149
				end

				arg_199_0.this = arg_199_1
			end,
			__base = anonteam_3_223
		}, {
			__index = anonteam_3_223,
			__call = function(arg_200_0, ...)
				local anonteam_200_0 = setmetatable({}, anonteam_3_223)

				arg_200_0.__init(anonteam_200_0, ...)

				return anonteam_200_0
			end
		})

		anonteam_3_223.__class = anonteam_3_224
		anonteam_3_71 = anonteam_3_224

		local anonteam_3_225
		local anonteam_3_226 = {
			enter = function(arg_201_0)
				return anonteam_3_148:get("?Enter@Context@v8@@QAEXXZ", "void(__thiscall*)(void*)")(arg_201_0.this)
			end,
			exit = function(arg_202_0)
				return anonteam_3_148:get("?Exit@Context@v8@@QAEXXZ", "void(__thiscall*)(void*)")(arg_202_0.this)
			end,
			global = function(arg_203_0)
				return anonteam_3_161(anonteam_3_148:get("?Global@Context@v8@@QAE?AV?$Local@VObject@v8@@@2@XZ", "void*(__thiscall*)(void*,void*)")(arg_203_0.this, anonteam_3_123))
			end
		}

		anonteam_3_226.__index = anonteam_3_226

		local anonteam_3_227 = setmetatable({
			__name = "Context",
			__init = function(arg_204_0, arg_204_1)
				arg_204_0.this = arg_204_1
			end,
			__base = anonteam_3_226
		}, {
			__index = anonteam_3_226,
			__call = function(arg_205_0, ...)
				local anonteam_205_0 = setmetatable({}, anonteam_3_226)

				arg_205_0.__init(anonteam_205_0, ...)

				return anonteam_205_0
			end
		})

		anonteam_3_226.__class = anonteam_3_227
		anonteam_3_72 = anonteam_3_227

		local anonteam_3_228
		local anonteam_3_229 = {
			enter = function(arg_206_0)
				return anonteam_3_148:get("??0HandleScope@v8@@QAE@PAVIsolate@1@@Z", "void(__thiscall*)(void*,void*)")(arg_206_0.this, anonteam_3_149)
			end,
			exit = function(arg_207_0)
				return anonteam_3_148:get("??1HandleScope@v8@@QAE@XZ", "void(__thiscall*)(void*)")(arg_207_0.this)
			end,
			createHandle = function(arg_208_0, arg_208_1)
				return anonteam_3_148:get("?CreateHandle@HandleScope@v8@@KAPAPAVObject@internal@2@PAVIsolate@42@PAV342@@Z", "void**(__cdecl*)(void*,void*)")(anonteam_3_149, arg_208_1)
			end,
			__call = function(arg_209_0, arg_209_1, arg_209_2)
				if arg_209_2 == nil then
					arg_209_2 = anonteam_3_124.GetPanel("CSGOJsRegistration")
				end

				local anonteam_209_0 = anonteam_3_71()

				anonteam_209_0:enter()
				arg_209_0:enter()

				local anonteam_209_1

				if arg_209_2 then
					anonteam_209_1 = anonteam_3_145(anonteam_3_147(arg_209_2))[0]
				else
					anonteam_209_1 = anonteam_3_72(anonteam_209_0:getCurrentContext()):global():getInternal()
				end

				anonteam_209_1 = anonteam_3_72((function()
					if anonteam_209_1 ~= anonteam_3_122 then
						return arg_209_0:createHandle(anonteam_209_1[0])
					else
						return 0
					end
				end)())

				anonteam_209_1:enter()

				local anonteam_209_2

				if anonteam_3_103 then
					local anonteam_209_3, anonteam_209_4 = xpcall(arg_209_1, anonteam_3_107)

					if anonteam_209_3 then
						anonteam_209_2 = anonteam_209_4
					end
				else
					anonteam_209_2 = arg_209_1()
				end

				anonteam_209_1:exit()
				arg_209_0:exit()
				anonteam_209_0:exit()

				return anonteam_209_2
			end
		}

		anonteam_3_229.__index = anonteam_3_229

		local anonteam_3_230 = setmetatable({
			__name = "HandleScope",
			__init = function(arg_211_0)
				arg_211_0.this = anonteam_3_86("char[0xC]")
			end,
			__base = anonteam_3_229
		}, {
			__index = anonteam_3_229,
			__call = function(arg_212_0, ...)
				local anonteam_212_0 = setmetatable({}, anonteam_3_229)

				arg_212_0.__init(anonteam_212_0, ...)

				return anonteam_212_0
			end
		})

		anonteam_3_229.__class = anonteam_3_230
		anonteam_3_73 = anonteam_3_230

		local anonteam_3_231
		local anonteam_3_232 = {
			enter = function(arg_213_0)
				return anonteam_3_148:get("??0TryCatch@v8@@QAE@PAVIsolate@1@@Z", "void(__thiscall*)(void*, void*)")(arg_213_0.this, anonteam_3_149)
			end,
			exit = function(arg_214_0)
				return anonteam_3_148:get("??1TryCatch@v8@@QAE@XZ", "void(__thiscall*)(void*)")(arg_214_0.this)
			end,
			canContinue = function(arg_215_0)
				return anonteam_3_148:get("?CanContinue@TryCatch@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_215_0.this)
			end,
			hasTerminated = function(arg_216_0)
				return anonteam_3_148:get("?HasTerminated@TryCatch@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_216_0.this)
			end,
			hasCaught = function(arg_217_0)
				return anonteam_3_148:get("?HasCaught@TryCatch@v8@@QBE_NXZ", "bool(__thiscall*)(void*)")(arg_217_0.this)
			end,
			message = function(arg_218_0)
				return anonteam_3_157(anonteam_3_148:get("?Message@TryCatch@v8@@QBE?AV?$Local@VMessage@v8@@@2@XZ", "void*(__thiscall*)(void*, void*)")(arg_218_0.this, anonteam_3_123))
			end,
			getInternal = function(arg_219_0)
				return arg_219_0.this
			end
		}

		anonteam_3_232.__index = anonteam_3_232

		local anonteam_3_233 = setmetatable({
			__name = "TryCatch",
			__init = function(arg_220_0)
				arg_220_0.this = anonteam_3_86("char[0x19]")
			end,
			__base = anonteam_3_232
		}, {
			__index = anonteam_3_232,
			__call = function(arg_221_0, ...)
				local anonteam_221_0 = setmetatable({}, anonteam_3_232)

				arg_221_0.__init(anonteam_221_0, ...)

				return anonteam_221_0
			end
		})

		anonteam_3_232.__class = anonteam_3_233
		anonteam_3_74 = anonteam_3_233

		local anonteam_3_234
		local anonteam_3_235 = {
			compile = function(arg_222_0, arg_222_1, arg_222_2, arg_222_3)
				if arg_222_3 == nil then
					arg_222_3 = ""
				end

				return anonteam_3_111(anonteam_3_84("void**(__thiscall*)(void*,void*,const char*,const char*)", anonteam_3_92 == "memesense" and anonteam_3_89("panorama.dll", "E8 ? ? ? ? 8B 4C 24 10 FF 15") - 2816 or anonteam_3_89("panorama.dll", "55 8B EC 83 E4 F8 83 EC 64 53 8B D9")), anonteam_3_133:getInstance())(arg_222_1, arg_222_2, arg_222_3)
			end,
			loadstring = function(arg_223_0, arg_223_1, arg_223_2)
				local anonteam_223_0 = anonteam_3_161(arg_223_0:compile(arg_223_2, arg_223_1)):toLocalChecked()

				if anonteam_223_0 == anonteam_3_122 then
					if anonteam_3_103 then
						error("\nFailed to compile the given javascript string, please check the error message above ^\n")
					else
						print("\nFailed to compile the given javascript string, please check the error message above ^\n")

						return function()
							return print("WARNING: Attempted to call nullptr (script compilation failed)")
						end
					end
				end

				local anonteam_223_1 = anonteam_3_71()
				local anonteam_223_2 = anonteam_3_73()

				anonteam_223_1:enter()
				anonteam_223_2:enter()

				local anonteam_223_3

				if arg_223_2 then
					anonteam_223_3 = anonteam_3_145(anonteam_3_147(arg_223_2))[0]
				else
					anonteam_223_3 = anonteam_3_72(anonteam_223_1:getCurrentContext()):global():getInternal()
				end

				anonteam_223_3 = anonteam_3_72((function()
					if anonteam_223_3 ~= anonteam_3_122 then
						return anonteam_223_2:createHandle(anonteam_223_3[0])
					else
						return 0
					end
				end)())

				anonteam_223_3:enter()

				local anonteam_223_4 = anonteam_3_161(anonteam_3_137(anonteam_3_123, arg_223_2, anonteam_223_0():getInternal(), 0, false)):toValueChecked()

				if anonteam_223_4 == anonteam_3_122 then
					if anonteam_3_103 then
						error("\nFailed to evaluate the given javascript string, please check the error message above ^\n")
					else
						print("\nFailed to evaluate the given javascript string, please check the error message above ^\n")

						function anonteam_223_4()
							return print("WARNING: Attempted to call nullptr (script execution failed)")
						end
					end
				else
					anonteam_223_4 = anonteam_223_4:toLua()
				end

				anonteam_223_3:exit()
				anonteam_223_2:exit()
				anonteam_223_1:exit()

				return anonteam_223_4
			end
		}

		anonteam_3_235.__index = anonteam_3_235

		local anonteam_3_236 = setmetatable({
			__name = "Script",
			__init = function()
				return
			end,
			__base = anonteam_3_235
		}, {
			__index = anonteam_3_235,
			__call = function(arg_228_0, ...)
				local anonteam_228_0 = setmetatable({}, anonteam_3_235)

				arg_228_0.__init(anonteam_228_0, ...)

				return anonteam_228_0
			end
		})

		anonteam_3_235.__class = anonteam_3_236

		local anonteam_3_237 = anonteam_3_236
		local anonteam_3_238 = anonteam_3_85("    struct {\n      char* pad1[0x4];\n      void*         m_pPanel;\n      void* unk1;\n  }\n")
		local anonteam_3_239 = anonteam_3_85("    struct {\n      struct {\n          $ *m_pMemory;\n          int m_nAllocationCount;\n          int m_nGrowSize;\n      } m_Memory;\n      int m_Size;\n      $ *m_pElements;\n  }\n", anonteam_3_238, anonteam_3_238)

		anonteam_3_88(anonteam_3_239, {
			__index = {
				Count = function(arg_229_0)
					return arg_229_0.m_Memory.m_nAllocationCount
				end,
				Element = function(arg_230_0, arg_230_1)
					return anonteam_3_84(anonteam_3_85("$&", anonteam_3_238), arg_230_0.m_Memory.m_pMemory[arg_230_1])
				end,
				RemoveAll = function(arg_231_0)
					arg_231_0 = nil
					arg_231_0 = anonteam_3_85("$[?]", anonteam_3_239)(1)[0]
					arg_231_0.m_Size = 0
				end
			},
			__ipairs = function(arg_232_0)
				local anonteam_232_0 = 0
				local anonteam_232_1 = arg_232_0:Count()

				return function()
					anonteam_232_0 = anonteam_232_0 + 1

					local anonteam_233_0 = arg_232_0:Element(anonteam_232_0 - 1).m_pPanel

					if anonteam_232_0 <= anonteam_232_1 and anonteam_3_134(anonteam_233_0) then
						return anonteam_232_0, anonteam_233_0
					end
				end
			end
		})

		local anonteam_3_240 = anonteam_3_85("$[?]", anonteam_3_239)(1)[0]
		local anonteam_3_241 = anonteam_3_84("unsigned int*", anonteam_3_84("uintptr_t**", anonteam_3_133:getInstance())[0][36] + 21)[0]
		local anonteam_3_242 = anonteam_3_84(anonteam_3_240, anonteam_3_84("uintptr_t", anonteam_3_133:getInstance()) + anonteam_3_241)

		function anonteam_3_124.hasPanel(arg_234_0)
			for iter_234_0, iter_234_1 in ipairs(anonteam_3_242) do
				if anonteam_3_87(anonteam_3_142(iter_234_1)) == arg_234_0 then
					return true
				end
			end

			return false
		end

		function anonteam_3_124.getPanel(arg_235_0, arg_235_1)
			local anonteam_235_0 = anonteam_3_124.panelIDs[arg_235_0]

			if anonteam_235_0 ~= nil and anonteam_3_134(anonteam_235_0) and anonteam_3_87(anonteam_3_142(anonteam_235_0)) == arg_235_0 then
				return anonteam_235_0
			end

			anonteam_3_124.panelIDs = {}

			local anonteam_235_1 = anonteam_3_122

			for iter_235_0, iter_235_1 in ipairs(anonteam_3_242) do
				local anonteam_235_2 = anonteam_3_87(anonteam_3_142(iter_235_1))

				if anonteam_235_2 ~= "" then
					anonteam_3_124.panelIDs[anonteam_235_2] = iter_235_1

					if anonteam_235_2 == arg_235_0 then
						anonteam_235_1 = iter_235_1

						break
					end
				end
			end

			if anonteam_235_1 == anonteam_3_122 then
				if arg_235_1 ~= nil then
					anonteam_235_1 = anonteam_3_124.getPanel(arg_235_1)
				else
					error(("Failed to get target panel %s (EAX == 0)"):format(tostring(arg_235_0)))
				end
			end

			return anonteam_235_1
		end

		function anonteam_3_124.getIsolate()
			return anonteam_3_71(anonteam_3_139())
		end

		function anonteam_3_124.runScript(arg_237_0, arg_237_1, arg_237_2)
			if arg_237_1 == nil then
				arg_237_1 = anonteam_3_124.getPanel("CSGOJsRegistration")
			end

			if arg_237_2 == nil then
				arg_237_2 = "panorama/layout/base.xml"
			end

			if not anonteam_3_134(arg_237_1) then
				error("Invalid panel pointer (EAX == 0)")
			end

			return anonteam_3_136(arg_237_1, arg_237_0, arg_237_2, 8, 10, false)
		end

		function anonteam_3_124.loadstring(arg_238_0, arg_238_1)
			if arg_238_1 == nil then
				arg_238_1 = "CSGOJsRegistration"
			end

			local anonteam_238_0 = "CSGOJsRegistration"

			if arg_238_1 == "CSGOMainMenu" then
				anonteam_238_0 = "CSGOHud"
			end

			if arg_238_1 == "CSGOHud" then
				anonteam_238_0 = "CSGOMainMenu"
			end

			return anonteam_3_237:loadstring(("(()=>{%s})"):format(arg_238_0), anonteam_3_124.getPanel(arg_238_1, anonteam_238_0))
		end

		function anonteam_3_124.open(arg_239_0)
			if arg_239_0 == nil then
				arg_239_0 = "CSGOJsRegistration"
			end

			local anonteam_239_0 = "CSGOJsRegistration"

			if arg_239_0 == "CSGOMainMenu" then
				anonteam_239_0 = "CSGOHud"
			end

			if arg_239_0 == "CSGOHud" then
				anonteam_239_0 = "CSGOMainMenu"
			end

			return anonteam_3_73()(function()
				return anonteam_3_72(anonteam_3_71():getCurrentContext()):global():toValueChecked():toLua()
			end, anonteam_3_124.GetPanel(arg_239_0, anonteam_239_0))
		end

		anonteam_3_124.GetPanel = anonteam_3_124.getPanel
		anonteam_3_124.GetIsolate = anonteam_3_124.getIsolate
		anonteam_3_124.RunScript = anonteam_3_124.runScript
		anonteam_3_124.panelArray = anonteam_3_242
		anonteam_3_124.info = anonteam_3_81
		anonteam_3_124.flush = anonteam_3_105

		setmetatable(anonteam_3_124, {
			__tostring = function(arg_241_0)
				return ("luv8 panorama library v%.1f"):format(anonteam_3_81._VERSION)
			end,
			__index = function(arg_242_0, arg_242_1)
				if anonteam_3_124.hasPanel(arg_242_1) then
					return anonteam_3_124.open(arg_242_1)
				end

				return anonteam_3_124.open()[arg_242_1]
			end
		})

		return anonteam_3_124
	end)()
end

local anonteam_0_47 = (function()
	local anonteam_243_0 = true
	local anonteam_243_1 = false
	local anonteam_243_2 = "json"
	local anonteam_243_3 = pairs
	local anonteam_243_4 = type
	local anonteam_243_5 = tostring
	local anonteam_243_6 = tonumber
	local anonteam_243_7 = getmetatable
	local anonteam_243_8 = setmetatable
	local anonteam_243_9 = rawset
	local anonteam_243_10 = error
	local anonteam_243_11 = require
	local anonteam_243_12 = pcall
	local anonteam_243_13 = select
	local anonteam_243_14 = math.floor
	local anonteam_243_15 = math.huge
	local anonteam_243_16 = string.rep
	local anonteam_243_17 = string.gsub
	local anonteam_243_18 = string.sub
	local anonteam_243_19 = string.byte
	local anonteam_243_20 = string.char
	local anonteam_243_21 = string.find
	local anonteam_243_22 = string.len
	local anonteam_243_23 = string.format
	local anonteam_243_24 = string.match
	local anonteam_243_25 = table.concat
	local anonteam_243_26 = {
		version = "dkjson 2.5"
	}

	if anonteam_243_1 then
		_G[anonteam_243_2] = anonteam_243_26
	end

	local anonteam_243_27

	anonteam_243_12(function()
		-- local anonteam_244_0 = anonteam_243_11("debug").getmetatable

		-- if anonteam_244_0 then
		-- 	anonteam_243_7 = anonteam_244_0
		-- end
	end)

	anonteam_243_26.null = anonteam_243_8({}, {
		__tojson = function()
			return "null"
		end
	})

	local function anonteam_243_28(arg_246_0)
		local anonteam_246_0 = 0
		local anonteam_246_1 = 0
		local anonteam_246_2 = 0

		for iter_246_0, iter_246_1 in anonteam_243_3(arg_246_0) do
			if iter_246_0 == "n" and anonteam_243_4(iter_246_1) == "number" then
				anonteam_246_2 = iter_246_1

				if anonteam_246_0 < iter_246_1 then
					anonteam_246_0 = iter_246_1
				end
			else
				if anonteam_243_4(iter_246_0) ~= "number" or iter_246_0 < 1 or anonteam_243_14(iter_246_0) ~= iter_246_0 then
					return false
				end

				if anonteam_246_0 < iter_246_0 then
					anonteam_246_0 = iter_246_0
				end

				anonteam_246_1 = anonteam_246_1 + 1
			end
		end

		if anonteam_246_0 > 10 and anonteam_246_2 < anonteam_246_0 and anonteam_246_0 > anonteam_246_1 * 2 then
			return false
		end

		return true, anonteam_246_0
	end

	local anonteam_243_29 = {
		["\t"] = "\\t",
		["\\"] = "\\\\",
		["\r"] = "\\r",
		["\""] = "\\\"",
		["\n"] = "\\n",
		["\f"] = "\\f",
		["\b"] = "\\b"
	}

	local function anonteam_243_30(arg_247_0)
		local anonteam_247_0 = anonteam_243_29[arg_247_0]

		if anonteam_247_0 then
			return anonteam_247_0
		end

		local anonteam_247_1, anonteam_247_2, anonteam_247_3, anonteam_247_4 = anonteam_243_19(arg_247_0, 1, 4)
		local anonteam_247_5, anonteam_247_6, anonteam_247_7

		anonteam_247_5, anonteam_247_6, anonteam_247_7, anonteam_247_4 = anonteam_247_1 or 0, anonteam_247_2 or 0, anonteam_247_3 or 0, anonteam_247_4 or 0

		if anonteam_247_5 <= 127 then
			anonteam_247_0 = anonteam_247_5
		elseif anonteam_247_5 >= 192 and anonteam_247_5 <= 223 and anonteam_247_6 >= 128 then
			anonteam_247_0 = (anonteam_247_5 - 192) * 64 + anonteam_247_6 - 128
		elseif anonteam_247_5 >= 224 and anonteam_247_5 <= 239 and anonteam_247_6 >= 128 and anonteam_247_7 >= 128 then
			anonteam_247_0 = ((anonteam_247_5 - 224) * 64 + anonteam_247_6 - 128) * 64 + anonteam_247_7 - 128
		elseif anonteam_247_5 >= 240 and anonteam_247_5 <= 247 and anonteam_247_6 >= 128 and anonteam_247_7 >= 128 and anonteam_247_4 >= 128 then
			anonteam_247_0 = (((anonteam_247_5 - 240) * 64 + anonteam_247_6 - 128) * 64 + anonteam_247_7 - 128) * 64 + anonteam_247_4 - 128
		else
			return ""
		end

		if anonteam_247_0 <= 65535 then
			return anonteam_243_23("\\u%.4x", anonteam_247_0)
		elseif anonteam_247_0 <= 1114111 then
			local anonteam_247_8 = anonteam_247_0 - 65536
			local anonteam_247_9 = 55296 + anonteam_243_14(anonteam_247_8 / 1024)
			local anonteam_247_10 = 56320 + anonteam_247_8 % 1024

			return anonteam_243_23("\\u%.4x\\u%.4x", anonteam_247_9, anonteam_247_10)
		else
			return ""
		end
	end

	local function anonteam_243_31(arg_248_0, arg_248_1, arg_248_2)
		if anonteam_243_21(arg_248_0, arg_248_1) then
			return anonteam_243_17(arg_248_0, arg_248_1, arg_248_2)
		else
			return arg_248_0
		end
	end

	local function anonteam_243_32(arg_249_0)
		arg_249_0 = anonteam_243_31(arg_249_0, "[%z\x01-\x1F\"\\\x7F]", anonteam_243_30)

		if anonteam_243_21(arg_249_0, "[\xC2\xD8\xDC\xE1\xE2\xEF]") then
			arg_249_0 = anonteam_243_31(arg_249_0, "\xC2[\x80-\x9F\xAD]", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xD8[\x80-\x84]", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xDC\x8F", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xE1\x9E[\xB4\xB5]", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xE2\x80[\x8C-\x8F\xA8-\xAF]", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xE2\x81[\xA0-\xAF]", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xEF\xBB\xBF", anonteam_243_30)
			arg_249_0 = anonteam_243_31(arg_249_0, "\xEF\xBF[\xB0-\xBF]", anonteam_243_30)
		end

		return "\"" .. arg_249_0 .. "\""
	end

	anonteam_243_26.quotestring = anonteam_243_32

	local function anonteam_243_33(arg_250_0, arg_250_1, arg_250_2)
		local anonteam_250_0, anonteam_250_1 = anonteam_243_21(arg_250_0, arg_250_1, 1, true)

		if anonteam_250_0 then
			return anonteam_243_18(arg_250_0, 1, anonteam_250_0 - 1) .. arg_250_2 .. anonteam_243_18(arg_250_0, anonteam_250_1 + 1, -1)
		else
			return arg_250_0
		end
	end

	local anonteam_243_34
	local anonteam_243_35

	local function anonteam_243_36()
		anonteam_243_34 = anonteam_243_24(anonteam_243_5(0.5), "([^05+])")
		anonteam_243_35 = "[^0-9%-%+eE" .. anonteam_243_17(anonteam_243_34, "[%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0") .. "]+"
	end

	anonteam_243_36()

	local function anonteam_243_37(arg_252_0)
		return anonteam_243_33(anonteam_243_31(anonteam_243_5(arg_252_0), anonteam_243_35, ""), anonteam_243_34, ".")
	end

	local function anonteam_243_38(arg_253_0)
		local anonteam_253_0 = anonteam_243_6(anonteam_243_33(arg_253_0, ".", anonteam_243_34))

		if not anonteam_253_0 then
			anonteam_243_36()

			anonteam_253_0 = anonteam_243_6(anonteam_243_33(arg_253_0, ".", anonteam_243_34))
		end

		return anonteam_253_0
	end

	local function anonteam_243_39(arg_254_0, arg_254_1, arg_254_2)
		arg_254_1[arg_254_2 + 1] = "\n"
		arg_254_1[arg_254_2 + 2] = anonteam_243_16("  ", arg_254_0)
		arg_254_2 = arg_254_2 + 2

		return arg_254_2
	end

	function anonteam_243_26.addnewline(arg_255_0)
		if arg_255_0.indent then
			arg_255_0.bufferlen = anonteam_243_39(arg_255_0.level or 0, arg_255_0.buffer, arg_255_0.bufferlen or #arg_255_0.buffer)
		end
	end

	local anonteam_243_40

	local function anonteam_243_41(arg_256_0, arg_256_1, arg_256_2, arg_256_3, arg_256_4, arg_256_5, arg_256_6, arg_256_7, arg_256_8, arg_256_9)
		local anonteam_256_0 = anonteam_243_4(arg_256_0)

		if anonteam_256_0 ~= "string" and anonteam_256_0 ~= "number" then
			return nil, "type '" .. anonteam_256_0 .. "' is not supported as a key by JSON."
		end

		if arg_256_2 then
			arg_256_6 = arg_256_6 + 1
			arg_256_5[arg_256_6] = ","
		end

		if arg_256_3 then
			arg_256_6 = anonteam_243_39(arg_256_4, arg_256_5, arg_256_6)
		end

		arg_256_5[arg_256_6 + 1] = anonteam_243_32(arg_256_0)
		arg_256_5[arg_256_6 + 2] = ":"

		return anonteam_243_40(arg_256_1, arg_256_3, arg_256_4, arg_256_5, arg_256_6 + 2, arg_256_7, arg_256_8, arg_256_9)
	end

	local function anonteam_243_42(arg_257_0, arg_257_1, arg_257_2)
		local anonteam_257_0 = arg_257_2.bufferlen

		if anonteam_243_4(arg_257_0) == "string" then
			anonteam_257_0 = anonteam_257_0 + 1
			arg_257_1[anonteam_257_0] = arg_257_0
		end

		return anonteam_257_0
	end

	local function anonteam_243_43(arg_258_0, arg_258_1, arg_258_2, arg_258_3, arg_258_4, arg_258_5)
		arg_258_5 = arg_258_5 or arg_258_0

		local anonteam_258_0 = arg_258_2.exception

		if not anonteam_258_0 then
			return nil, arg_258_5
		else
			arg_258_2.bufferlen = arg_258_4

			local anonteam_258_1, anonteam_258_2 = anonteam_258_0(arg_258_0, arg_258_1, arg_258_2, arg_258_5)

			if not anonteam_258_1 then
				return nil, anonteam_258_2 or arg_258_5
			end

			return anonteam_243_42(anonteam_258_1, arg_258_3, arg_258_2)
		end
	end

	function anonteam_243_26.encodeexception(arg_259_0, arg_259_1, arg_259_2, arg_259_3)
		return anonteam_243_32("<" .. arg_259_3 .. ">")
	end

	function anonteam_243_40(arg_260_0, arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5, arg_260_6, arg_260_7)
		local anonteam_260_0 = anonteam_243_4(arg_260_0)
		local anonteam_260_1 = anonteam_243_7(arg_260_0)

		anonteam_260_1 = anonteam_243_4(anonteam_260_1) == "table" and anonteam_260_1

		local anonteam_260_2 = anonteam_260_1 and anonteam_260_1.__tojson

		if anonteam_260_2 then
			if arg_260_5[arg_260_0] then
				return anonteam_243_43("reference cycle", arg_260_0, arg_260_7, arg_260_3, arg_260_4)
			end

			arg_260_5[arg_260_0] = true
			arg_260_7.bufferlen = arg_260_4

			local anonteam_260_3, anonteam_260_4 = anonteam_260_2(arg_260_0, arg_260_7)

			if not anonteam_260_3 then
				return anonteam_243_43("custom encoder failed", arg_260_0, arg_260_7, arg_260_3, arg_260_4, anonteam_260_4)
			end

			arg_260_5[arg_260_0] = nil
			arg_260_4 = anonteam_243_42(anonteam_260_3, arg_260_3, arg_260_7)
		elseif arg_260_0 == nil then
			arg_260_4 = arg_260_4 + 1
			arg_260_3[arg_260_4] = "null"
		elseif anonteam_260_0 == "number" then
			local anonteam_260_5

			arg_260_3[arg_260_4], arg_260_4 = (arg_260_0 ~= arg_260_0 or arg_260_0 >= anonteam_243_15 or -arg_260_0 >= anonteam_243_15) and "null" or anonteam_243_37(arg_260_0), arg_260_4 + 1
		elseif anonteam_260_0 == "boolean" then
			arg_260_4 = arg_260_4 + 1
			arg_260_3[arg_260_4] = arg_260_0 and "true" or "false"
		elseif anonteam_260_0 == "string" then
			arg_260_4 = arg_260_4 + 1
			arg_260_3[arg_260_4] = anonteam_243_32(arg_260_0)
		elseif anonteam_260_0 == "table" then
			if arg_260_5[arg_260_0] then
				return anonteam_243_43("reference cycle", arg_260_0, arg_260_7, arg_260_3, arg_260_4)
			end

			arg_260_5[arg_260_0] = true
			arg_260_2 = arg_260_2 + 1

			local anonteam_260_6, anonteam_260_7 = anonteam_243_28(arg_260_0)

			if anonteam_260_7 == 0 and anonteam_260_1 and anonteam_260_1.__jsontype == "object" then
				anonteam_260_6 = false
			end

			local anonteam_260_8

			if anonteam_260_6 then
				arg_260_4 = arg_260_4 + 1
				arg_260_3[arg_260_4] = "["

				for iter_260_0 = 1, anonteam_260_7 do
					local anonteam_260_9

					arg_260_4, anonteam_260_9 = anonteam_243_40(arg_260_0[iter_260_0], arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5, arg_260_6, arg_260_7)

					if not arg_260_4 then
						return nil, anonteam_260_9
					end

					if iter_260_0 < anonteam_260_7 then
						arg_260_4 = arg_260_4 + 1
						arg_260_3[arg_260_4] = ","
					end
				end

				arg_260_4 = arg_260_4 + 1
				arg_260_3[arg_260_4] = "]"
			else
				local anonteam_260_10 = false

				arg_260_4 = arg_260_4 + 1
				arg_260_3[arg_260_4] = "{"

				local anonteam_260_11 = anonteam_260_1 and anonteam_260_1.__jsonorder or arg_260_6

				if anonteam_260_11 then
					local anonteam_260_12 = {}
					local anonteam_260_13 = #anonteam_260_11

					for iter_260_1 = 1, anonteam_260_13 do
						local anonteam_260_14 = anonteam_260_11[iter_260_1]
						local anonteam_260_15 = arg_260_0[anonteam_260_14]

						if anonteam_260_15 then
							anonteam_260_12[anonteam_260_14] = true

							local anonteam_260_16

							arg_260_4, anonteam_260_16 = anonteam_243_41(anonteam_260_14, anonteam_260_15, anonteam_260_10, arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5, arg_260_6, arg_260_7)
							anonteam_260_10 = true
						end
					end

					for iter_260_2, iter_260_3 in anonteam_243_3(arg_260_0) do
						if not anonteam_260_12[iter_260_2] then
							local anonteam_260_17

							arg_260_4, anonteam_260_17 = anonteam_243_41(iter_260_2, iter_260_3, anonteam_260_10, arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5, arg_260_6, arg_260_7)

							if not arg_260_4 then
								return nil, anonteam_260_17
							end

							anonteam_260_10 = true
						end
					end
				else
					for iter_260_4, iter_260_5 in anonteam_243_3(arg_260_0) do
						local anonteam_260_18

						arg_260_4, anonteam_260_18 = anonteam_243_41(iter_260_4, iter_260_5, anonteam_260_10, arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5, arg_260_6, arg_260_7)

						if not arg_260_4 then
							return nil, anonteam_260_18
						end

						anonteam_260_10 = true
					end
				end

				if arg_260_1 then
					arg_260_4 = anonteam_243_39(arg_260_2 - 1, arg_260_3, arg_260_4)
				end

				arg_260_4 = arg_260_4 + 1
				arg_260_3[arg_260_4] = "}"
			end

			arg_260_5[arg_260_0] = nil
		else
			return anonteam_243_43("unsupported type", arg_260_0, arg_260_7, arg_260_3, arg_260_4, "type '" .. anonteam_260_0 .. "' is not supported by JSON.")
		end

		return arg_260_4
	end

	function anonteam_243_26.encode(arg_261_0, arg_261_1)
		arg_261_1 = arg_261_1 or {}

		local anonteam_261_0 = arg_261_1.buffer
		local anonteam_261_1 = anonteam_261_0 or {}

		arg_261_1.buffer = anonteam_261_1

		anonteam_243_36()

		local anonteam_261_2, anonteam_261_3 = anonteam_243_40(arg_261_0, arg_261_1.indent, arg_261_1.level or 0, anonteam_261_1, arg_261_1.bufferlen or 0, arg_261_1.tables or {}, arg_261_1.keyorder, arg_261_1)

		if not anonteam_261_2 then
			anonteam_243_10(anonteam_261_3, 2)
		elseif anonteam_261_0 == anonteam_261_1 then
			arg_261_1.bufferlen = anonteam_261_2

			return true
		else
			arg_261_1.bufferlen = nil
			arg_261_1.buffer = nil

			return anonteam_243_25(anonteam_261_1)
		end
	end

	local function anonteam_243_44(arg_262_0, arg_262_1)
		local anonteam_262_0 = 1
		local anonteam_262_1 = 1
		local anonteam_262_2 = 0

		while true do
			anonteam_262_1 = anonteam_243_21(arg_262_0, "\n", anonteam_262_1, true)

			if anonteam_262_1 and anonteam_262_1 < arg_262_1 then
				anonteam_262_0 = anonteam_262_0 + 1
				anonteam_262_2 = anonteam_262_1
				anonteam_262_1 = anonteam_262_1 + 1
			else
				break
			end
		end

		return "line " .. anonteam_262_0 .. ", column " .. arg_262_1 - anonteam_262_2
	end

	local function anonteam_243_45(arg_263_0, arg_263_1, arg_263_2)
		return nil, anonteam_243_22(arg_263_0) + 1, "unterminated " .. arg_263_1 .. " at " .. anonteam_243_44(arg_263_0, arg_263_2)
	end

	local function anonteam_243_46(arg_264_0, arg_264_1)
		while true do
			arg_264_1 = anonteam_243_21(arg_264_0, "%S", arg_264_1)

			if not arg_264_1 then
				return nil
			end

			local anonteam_264_0 = anonteam_243_18(arg_264_0, arg_264_1, arg_264_1 + 1)

			if anonteam_264_0 == "\xEF\xBB" and anonteam_243_18(arg_264_0, arg_264_1 + 2, arg_264_1 + 2) == "\xBF" then
				arg_264_1 = arg_264_1 + 3
			elseif anonteam_264_0 == "//" then
				arg_264_1 = anonteam_243_21(arg_264_0, "[\n\r]", arg_264_1 + 2)

				if not arg_264_1 then
					return nil
				end
			elseif anonteam_264_0 == "/*" then
				arg_264_1 = anonteam_243_21(arg_264_0, "*/", arg_264_1 + 2)

				if not arg_264_1 then
					return nil
				end

				arg_264_1 = arg_264_1 + 2
			else
				return arg_264_1
			end
		end
	end

	local anonteam_243_47 = {
		b = "\b",
		["\\"] = "\\",
		["/"] = "/",
		["\""] = "\"",
		r = "\r",
		n = "\n",
		t = "\t",
		f = "\f"
	}

	local function anonteam_243_48(arg_265_0)
		if arg_265_0 < 0 then
			return nil
		elseif arg_265_0 <= 127 then
			return anonteam_243_20(arg_265_0)
		elseif arg_265_0 <= 2047 then
			return anonteam_243_20(192 + anonteam_243_14(arg_265_0 / 64), 128 + anonteam_243_14(arg_265_0) % 64)
		elseif arg_265_0 <= 65535 then
			return anonteam_243_20(224 + anonteam_243_14(arg_265_0 / 4096), 128 + anonteam_243_14(arg_265_0 / 64) % 64, 128 + anonteam_243_14(arg_265_0) % 64)
		elseif arg_265_0 <= 1114111 then
			return anonteam_243_20(240 + anonteam_243_14(arg_265_0 / 262144), 128 + anonteam_243_14(arg_265_0 / 4096) % 64, 128 + anonteam_243_14(arg_265_0 / 64) % 64, 128 + anonteam_243_14(arg_265_0) % 64)
		else
			return nil
		end
	end

	local function anonteam_243_49(arg_266_0, arg_266_1)
		local anonteam_266_0 = arg_266_1 + 1
		local anonteam_266_1 = {}
		local anonteam_266_2 = 0

		while true do
			local anonteam_266_3 = anonteam_243_21(arg_266_0, "[\"\\]", anonteam_266_0)

			if not anonteam_266_3 then
				return anonteam_243_45(arg_266_0, "string", arg_266_1)
			end

			if anonteam_266_0 < anonteam_266_3 then
				anonteam_266_2 = anonteam_266_2 + 1
				anonteam_266_1[anonteam_266_2] = anonteam_243_18(arg_266_0, anonteam_266_0, anonteam_266_3 - 1)
			end

			if anonteam_243_18(arg_266_0, anonteam_266_3, anonteam_266_3) == "\"" then
				anonteam_266_0 = anonteam_266_3 + 1

				break
			else
				local anonteam_266_4 = anonteam_243_18(arg_266_0, anonteam_266_3 + 1, anonteam_266_3 + 1)
				local anonteam_266_5

				if anonteam_266_4 == "u" then
					anonteam_266_5 = anonteam_243_6(anonteam_243_18(arg_266_0, anonteam_266_3 + 2, anonteam_266_3 + 5), 16)

					if anonteam_266_5 then
						local anonteam_266_6

						if anonteam_266_5 >= 55296 and anonteam_266_5 <= 56319 and anonteam_243_18(arg_266_0, anonteam_266_3 + 6, anonteam_266_3 + 7) == "\\u" then
							anonteam_266_6 = anonteam_243_6(anonteam_243_18(arg_266_0, anonteam_266_3 + 8, anonteam_266_3 + 11), 16)

							if anonteam_266_6 and anonteam_266_6 >= 56320 and anonteam_266_6 <= 57343 then
								anonteam_266_5 = (anonteam_266_5 - 55296) * 1024 + (anonteam_266_6 - 56320) + 65536
							else
								anonteam_266_6 = nil
							end
						end

						anonteam_266_5 = anonteam_266_5 and anonteam_243_48(anonteam_266_5)

						if anonteam_266_5 then
							if anonteam_266_6 then
								anonteam_266_0 = anonteam_266_3 + 12
							else
								anonteam_266_0 = anonteam_266_3 + 6
							end
						end
					end
				end

				if not anonteam_266_5 then
					anonteam_266_5 = anonteam_243_47[anonteam_266_4] or anonteam_266_4
					anonteam_266_0 = anonteam_266_3 + 2
				end

				anonteam_266_2 = anonteam_266_2 + 1
				anonteam_266_1[anonteam_266_2] = anonteam_266_5
			end
		end

		if anonteam_266_2 == 1 then
			return anonteam_266_1[1], anonteam_266_0
		elseif anonteam_266_2 > 1 then
			return anonteam_243_25(anonteam_266_1), anonteam_266_0
		else
			return "", anonteam_266_0
		end
	end

	local anonteam_243_50

	local function anonteam_243_51(arg_267_0, arg_267_1, arg_267_2, arg_267_3, arg_267_4, arg_267_5, arg_267_6)
		local anonteam_267_0 = anonteam_243_22(arg_267_2)
		local anonteam_267_1 = {}
		local anonteam_267_2 = 0
		local anonteam_267_3 = arg_267_3 + 1

		if arg_267_0 == "object" then
			anonteam_243_8(anonteam_267_1, arg_267_5)
		else
			anonteam_243_8(anonteam_267_1, arg_267_6)
		end

		while true do
			anonteam_267_3 = anonteam_243_46(arg_267_2, anonteam_267_3)

			if not anonteam_267_3 then
				return anonteam_243_45(arg_267_2, arg_267_0, arg_267_3)
			end

			if anonteam_243_18(arg_267_2, anonteam_267_3, anonteam_267_3) == arg_267_1 then
				return anonteam_267_1, anonteam_267_3 + 1
			end

			local anonteam_267_4
			local anonteam_267_5
			local anonteam_267_6, anonteam_267_7

			anonteam_267_6, anonteam_267_3, anonteam_267_7 = anonteam_243_50(arg_267_2, anonteam_267_3, arg_267_4, arg_267_5, arg_267_6)

			if anonteam_267_7 then
				return nil, anonteam_267_3, anonteam_267_7
			end

			anonteam_267_3 = anonteam_243_46(arg_267_2, anonteam_267_3)

			if not anonteam_267_3 then
				return anonteam_243_45(arg_267_2, arg_267_0, arg_267_3)
			end

			local anonteam_267_8 = anonteam_243_18(arg_267_2, anonteam_267_3, anonteam_267_3)

			if anonteam_267_8 == ":" then
				if anonteam_267_6 == nil then
					return nil, anonteam_267_3, "cannot use nil as table index (at " .. anonteam_243_44(arg_267_2, anonteam_267_3) .. ")"
				end

				anonteam_267_3 = anonteam_243_46(arg_267_2, anonteam_267_3 + 1)

				if not anonteam_267_3 then
					return anonteam_243_45(arg_267_2, arg_267_0, arg_267_3)
				end

				local anonteam_267_9
				local anonteam_267_10, anonteam_267_11

				anonteam_267_10, anonteam_267_3, anonteam_267_11 = anonteam_243_50(arg_267_2, anonteam_267_3, arg_267_4, arg_267_5, arg_267_6)

				if anonteam_267_11 then
					return nil, anonteam_267_3, anonteam_267_11
				end

				anonteam_267_1[anonteam_267_6] = anonteam_267_10
				anonteam_267_3 = anonteam_243_46(arg_267_2, anonteam_267_3)

				if not anonteam_267_3 then
					return anonteam_243_45(arg_267_2, arg_267_0, arg_267_3)
				end

				anonteam_267_8 = anonteam_243_18(arg_267_2, anonteam_267_3, anonteam_267_3)
			else
				anonteam_267_2 = anonteam_267_2 + 1
				anonteam_267_1[anonteam_267_2] = anonteam_267_6
			end

			if anonteam_267_8 == "," then
				anonteam_267_3 = anonteam_267_3 + 1
			end
		end
	end

	function anonteam_243_50(arg_268_0, arg_268_1, arg_268_2, arg_268_3, arg_268_4)
		arg_268_1 = arg_268_1 or 1
		arg_268_1 = anonteam_243_46(arg_268_0, arg_268_1)

		if not arg_268_1 then
			return nil, anonteam_243_22(arg_268_0) + 1, "no valid JSON value (reached the end)"
		end

		local anonteam_268_0 = anonteam_243_18(arg_268_0, arg_268_1, arg_268_1)

		if anonteam_268_0 == "{" then
			return anonteam_243_51("object", "}", arg_268_0, arg_268_1, arg_268_2, arg_268_3, arg_268_4)
		elseif anonteam_268_0 == "[" then
			return anonteam_243_51("array", "]", arg_268_0, arg_268_1, arg_268_2, arg_268_3, arg_268_4)
		elseif anonteam_268_0 == "\"" then
			return anonteam_243_49(arg_268_0, arg_268_1)
		else
			local anonteam_268_1, anonteam_268_2 = anonteam_243_21(arg_268_0, "^%-?[%d%.]+[eE]?[%+%-]?%d*", arg_268_1)

			if anonteam_268_1 then
				local anonteam_268_3 = anonteam_243_38(anonteam_243_18(arg_268_0, anonteam_268_1, anonteam_268_2))

				if anonteam_268_3 then
					return anonteam_268_3, anonteam_268_2 + 1
				end
			end

			local anonteam_268_4, anonteam_268_5 = anonteam_243_21(arg_268_0, "^%a%w*", arg_268_1)

			if anonteam_268_4 then
				local anonteam_268_6 = anonteam_243_18(arg_268_0, anonteam_268_4, anonteam_268_5)

				if anonteam_268_6 == "true" then
					return true, anonteam_268_5 + 1
				elseif anonteam_268_6 == "false" then
					return false, anonteam_268_5 + 1
				elseif anonteam_268_6 == "null" then
					return arg_268_2, anonteam_268_5 + 1
				end
			end

			return nil, arg_268_1, "no valid JSON value at " .. anonteam_243_44(arg_268_0, arg_268_1)
		end
	end

	local function anonteam_243_52(...)
		if anonteam_243_13("#", ...) > 0 then
			return ...
		else
			return {
				__jsontype = "object"
			}, {
				__jsontype = "array"
			}
		end
	end

	function anonteam_243_26.decode(arg_270_0, arg_270_1, arg_270_2, ...)
		local anonteam_270_0, anonteam_270_1 = anonteam_243_52(...)

		return anonteam_243_50(arg_270_0, arg_270_1, arg_270_2, anonteam_270_0, anonteam_270_1)
	end

	function anonteam_243_26.use_lpeg()
		local anonteam_271_0 = anonteam_243_11("lpeg")

		if anonteam_271_0.version() == "0.11" then
			anonteam_243_10("due to a bug in LPeg 0.11, it cannot be used for JSON matching")
		end

		local anonteam_271_1 = anonteam_271_0.match
		local anonteam_271_2 = anonteam_271_0.P
		local anonteam_271_3 = anonteam_271_0.S
		local anonteam_271_4 = anonteam_271_0.R

		local function anonteam_271_5(arg_272_0, arg_272_1, arg_272_2, arg_272_3)
			if not arg_272_3.msg then
				arg_272_3.msg = arg_272_2 .. " at " .. anonteam_243_44(arg_272_0, arg_272_1)
				arg_272_3.pos = arg_272_1
			end

			return false
		end

		local function anonteam_271_6(arg_273_0)
			return anonteam_271_0.Cmt(anonteam_271_0.Cc(arg_273_0) * anonteam_271_0.Carg(2), anonteam_271_5)
		end

		local anonteam_271_7 = anonteam_271_2("//") * (1 - anonteam_271_3("\n\r"))^0
		local anonteam_271_8 = anonteam_271_2("/*") * (1 - anonteam_271_2("*/"))^0 * anonteam_271_2("*/")
		local anonteam_271_9 = (anonteam_271_3(" \n\r\t") + anonteam_271_2("\xEF\xBB\xBF") + anonteam_271_7 + anonteam_271_8)^0
		local anonteam_271_10 = 1 - anonteam_271_3("\"\\\n\r")
		local anonteam_271_11 = anonteam_271_2("\\") * anonteam_271_0.C(anonteam_271_3("\"\\/bfnrt") + anonteam_271_6("unsupported escape sequence")) / anonteam_243_47
		local anonteam_271_12 = anonteam_271_4("09", "af", "AF")

		local function anonteam_271_13(arg_274_0, arg_274_1, arg_274_2, arg_274_3)
			arg_274_2, arg_274_3 = anonteam_243_6(arg_274_2, 16), anonteam_243_6(arg_274_3, 16)

			if arg_274_2 >= 55296 and arg_274_2 <= 56319 and arg_274_3 >= 56320 and arg_274_3 <= 57343 then
				return true, anonteam_243_48((arg_274_2 - 55296) * 1024 + (arg_274_3 - 56320) + 65536)
			else
				return false
			end
		end

		local function anonteam_271_14(arg_275_0)
			return anonteam_243_48(anonteam_243_6(arg_275_0, 16))
		end

		local anonteam_271_15 = anonteam_271_2("\\u") * anonteam_271_0.C(anonteam_271_12 * anonteam_271_12 * anonteam_271_12 * anonteam_271_12)
		local anonteam_271_16 = anonteam_271_0.Cmt(anonteam_271_15 * anonteam_271_15, anonteam_271_13) + anonteam_271_15 / anonteam_271_14 + anonteam_271_11 + anonteam_271_10
		local anonteam_271_17 = anonteam_271_2("\"") * anonteam_271_0.Cs(anonteam_271_16^0) * (anonteam_271_2("\"") + anonteam_271_6("unterminated string"))
		local anonteam_271_18 = anonteam_271_2("-")^-1 * (anonteam_271_2("0") + anonteam_271_4("19") * anonteam_271_4("09")^0)
		local anonteam_271_19 = anonteam_271_2(".") * anonteam_271_4("09")^0
		local anonteam_271_20 = anonteam_271_3("eE") * anonteam_271_3("+-")^-1 * anonteam_271_4("09")^1
		local anonteam_271_21 = anonteam_271_18 * anonteam_271_19^-1 * anonteam_271_20^-1 / anonteam_243_38
		local anonteam_271_22 = anonteam_271_2("true") * anonteam_271_0.Cc(true) + anonteam_271_2("false") * anonteam_271_0.Cc(false) + anonteam_271_2("null") * anonteam_271_0.Carg(1)
		local anonteam_271_23 = anonteam_271_21 + anonteam_271_17 + anonteam_271_22
		local anonteam_271_24
		local anonteam_271_25

		local function anonteam_271_26(arg_276_0, arg_276_1, arg_276_2, arg_276_3)
			local anonteam_276_0
			local anonteam_276_1
			local anonteam_276_2
			local anonteam_276_3 = {}
			local anonteam_276_4 = 0

			repeat
				local anonteam_276_5, anonteam_276_6, anonteam_276_7 = anonteam_271_1(anonteam_271_24, arg_276_0, arg_276_1, arg_276_2, arg_276_3)

				if not anonteam_276_7 then
					break
				end

				arg_276_1 = anonteam_276_7
				anonteam_276_4 = anonteam_276_4 + 1
				anonteam_276_3[anonteam_276_4] = anonteam_276_5
			until anonteam_276_6 == "last"

			return arg_276_1, anonteam_243_8(anonteam_276_3, arg_276_3.arraymeta)
		end

		local function anonteam_271_27(arg_277_0, arg_277_1, arg_277_2, arg_277_3)
			local anonteam_277_0
			local anonteam_277_1
			local anonteam_277_2
			local anonteam_277_3
			local anonteam_277_4 = {}

			repeat
				local anonteam_277_5, anonteam_277_6, anonteam_277_7, anonteam_277_8 = anonteam_271_1(anonteam_271_25, arg_277_0, arg_277_1, arg_277_2, arg_277_3)

				if not anonteam_277_8 then
					break
				end

				arg_277_1 = anonteam_277_8
				anonteam_277_4[anonteam_277_5] = anonteam_277_6
			until anonteam_277_7 == "last"

			return arg_277_1, anonteam_243_8(anonteam_277_4, arg_277_3.objectmeta)
		end

		local anonteam_271_28 = anonteam_271_9 * (anonteam_271_2("[") * anonteam_271_0.Cmt(anonteam_271_0.Carg(1) * anonteam_271_0.Carg(2), anonteam_271_26) * anonteam_271_9 * (anonteam_271_2("]") + anonteam_271_6("']' expected")) + anonteam_271_2("{") * anonteam_271_0.Cmt(anonteam_271_0.Carg(1) * anonteam_271_0.Carg(2), anonteam_271_27) * anonteam_271_9 * (anonteam_271_2("}") + anonteam_271_6("'}' expected")) + anonteam_271_23)
		local anonteam_271_29 = anonteam_271_28 + anonteam_271_9 * anonteam_271_6("value expected")

		anonteam_271_24 = anonteam_271_28 * anonteam_271_9 * (anonteam_271_2(",") * anonteam_271_0.Cc("cont") + anonteam_271_0.Cc("last")) * anonteam_271_0.Cp()
		anonteam_271_25 = anonteam_271_0.Cg(anonteam_271_9 * anonteam_271_17 * anonteam_271_9 * (anonteam_271_2(":") + anonteam_271_6("colon expected")) * anonteam_271_29) * anonteam_271_9 * (anonteam_271_2(",") * anonteam_271_0.Cc("cont") + anonteam_271_0.Cc("last")) * anonteam_271_0.Cp()

		local anonteam_271_30 = anonteam_271_29 * anonteam_271_0.Cp()

		function anonteam_243_26.decode(arg_278_0, arg_278_1, arg_278_2, ...)
			local anonteam_278_0 = {}

			anonteam_278_0.objectmeta, anonteam_278_0.arraymeta = anonteam_243_52(...)

			local anonteam_278_1, anonteam_278_2 = anonteam_271_1(anonteam_271_30, arg_278_0, arg_278_1, arg_278_2, anonteam_278_0)

			if anonteam_278_0.msg then
				return nil, anonteam_278_0.pos, anonteam_278_0.msg
			else
				return anonteam_278_1, anonteam_278_2
			end
		end

		function anonteam_243_26.use_lpeg()
			return anonteam_243_26
		end

		anonteam_243_26.using_lpeg = true

		return anonteam_243_26
	end

	if anonteam_243_0 then
		--anonteam_243_12(anonteam_243_26.use_lpeg)
	end

	anonteam_243_26.parse = anonteam_243_26.decode
	anonteam_243_26.stringify = anonteam_243_26.encode

	return anonteam_243_26
end)()
local anonteam_0_48 = (function()
	local anonteam_280_0 = anonteam_0_1.band
	local anonteam_280_1 = anonteam_0_1.bor
	local anonteam_280_2 = anonteam_0_1.bnot
	local anonteam_280_3 = anonteam_0_1.bxor
	local anonteam_280_4 = anonteam_0_1.lshift
	local anonteam_280_5 = anonteam_0_1.rshift
	local anonteam_280_6 = {}

	anonteam_280_6.__index = anonteam_280_6

	local anonteam_280_7 = 14
	local anonteam_280_8 = 5
	local anonteam_280_9 = anonteam_280_4(1, anonteam_280_8)
	local anonteam_280_10 = 1 / anonteam_280_9

	function anonteam_280_6.new(arg_281_0)
		if arg_281_0 == nil then
			arg_281_0 = {
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0
			}
		end

		local anonteam_281_0 = setmetatable({}, anonteam_280_6)

		anonteam_281_0.data = anonteam_0_0.new("uint8_t[?]", #arg_281_0, arg_281_0)
		anonteam_281_0.size = #arg_281_0
		anonteam_281_0.pos = 0
		anonteam_281_0.bit_pos = 0

		return anonteam_281_0
	end

	function anonteam_280_6.read_bits(arg_282_0, arg_282_1)
		local anonteam_282_0 = 0
		local anonteam_282_1 = arg_282_1

		while anonteam_282_1 > 0 do
			while arg_282_0.bit_pos == 8 do
				arg_282_0.bit_pos = arg_282_0.bit_pos - 8
				arg_282_0.pos = arg_282_0.pos + 1
			end

			local anonteam_282_2 = arg_282_0.data[arg_282_0.pos]
			local anonteam_282_3 = math.min(anonteam_282_1, 8 - arg_282_0.bit_pos)
			local anonteam_282_4 = anonteam_280_4(1, anonteam_282_3) - 1

			anonteam_282_0 = anonteam_280_1(anonteam_282_0, anonteam_280_4(anonteam_280_0(anonteam_280_5(anonteam_282_2, arg_282_0.bit_pos), anonteam_282_4), arg_282_1 - anonteam_282_1))
			anonteam_282_1 = anonteam_282_1 - anonteam_282_3
			arg_282_0.bit_pos = arg_282_0.bit_pos + anonteam_282_3
		end

		return anonteam_282_0
	end

	function anonteam_280_6.write_bits(arg_283_0, arg_283_1, arg_283_2)
		local anonteam_283_0 = arg_283_2

		while anonteam_283_0 > 0 do
			while arg_283_0.bit_pos == 8 do
				arg_283_0.bit_pos = arg_283_0.bit_pos - 8
				arg_283_0.pos = arg_283_0.pos + 1
			end

			local anonteam_283_1 = arg_283_0.data[arg_283_0.pos]
			local anonteam_283_2 = math.min(anonteam_283_0, 8 - arg_283_0.bit_pos)
			local anonteam_283_3 = anonteam_280_4(1, anonteam_283_2) - 1
			local anonteam_283_4 = anonteam_280_1(anonteam_280_0(anonteam_283_1, anonteam_280_2(anonteam_280_4(anonteam_283_3, arg_283_0.bit_pos))), anonteam_280_4(anonteam_280_0(arg_283_1, anonteam_283_3), arg_283_0.bit_pos))

			arg_283_1 = anonteam_280_5(arg_283_1, anonteam_283_2)
			anonteam_283_0 = anonteam_283_0 - anonteam_283_2
			arg_283_0.bit_pos = arg_283_0.bit_pos + anonteam_283_2
			arg_283_0.data[arg_283_0.pos] = anonteam_283_4
		end
	end

	function anonteam_280_6.read_coord(arg_284_0)
		local anonteam_284_0 = arg_284_0:read_bits(1)
		local anonteam_284_1 = arg_284_0:read_bits(1)

		if anonteam_284_0 == 0 and anonteam_284_1 == 0 then
			return 0
		end

		local anonteam_284_2 = arg_284_0:read_bits(1)

		if anonteam_284_0 == 1 then
			anonteam_284_0 = arg_284_0:read_bits(anonteam_280_7) + 1
		end

		if anonteam_284_1 == 1 then
			anonteam_284_1 = arg_284_0:read_bits(anonteam_280_8)
		end

		local anonteam_284_3 = anonteam_284_0 + anonteam_284_1 * 0.03125

		if anonteam_284_2 == 1 then
			anonteam_284_3 = -anonteam_284_3
		end

		return anonteam_284_3
	end

	function anonteam_280_6.write_coord(arg_285_0, arg_285_1)
		local anonteam_285_0 = arg_285_1 <= -anonteam_280_10
		local anonteam_285_1 = math.abs(arg_285_1)
		local anonteam_285_2 = math.abs(arg_285_1 * anonteam_280_9) % anonteam_280_9

		arg_285_0:write_bits(anonteam_285_1 ~= 0 and 1 or 0, 1)
		arg_285_0:write_bits(anonteam_285_2 ~= 0 and 1 or 0, 1)

		if anonteam_285_1 ~= 0 or anonteam_285_2 ~= 0 then
			arg_285_0:write_bits(anonteam_285_0 and 1 or 0, 1)

			if anonteam_285_1 ~= 0 then
				local anonteam_285_3 = anonteam_285_1 - 1

				arg_285_0:write_bits(anonteam_285_3, anonteam_280_7)
			end

			if anonteam_285_2 ~= 0 then
				arg_285_0:write_bits(anonteam_285_2, anonteam_280_8)
			end
		end
	end

	function anonteam_280_6.reset(arg_286_0)
		arg_286_0.pos = 0
		arg_286_0.bit_pos = 0
	end

	function anonteam_280_6.to_bytes(arg_287_0)
		local anonteam_287_0 = {}

		for iter_287_0 = 0, arg_287_0.size - 1 do
			table.insert(anonteam_287_0, arg_287_0.data[iter_287_0])
		end

		return anonteam_287_0
	end

	function anonteam_280_6.get_raw_buffer(arg_288_0)
		return arg_288_0.data
	end

	function anonteam_280_6.crypt(arg_289_0, arg_289_1)
		if type(arg_289_1) == "string" then
			local anonteam_289_0 = {}

			for iter_289_0 = 1, #arg_289_1 do
				table.insert(anonteam_289_0, string.byte(arg_289_1, iter_289_0))
			end

			arg_289_1 = anonteam_289_0
		end

		local anonteam_289_1 = #arg_289_1
		local anonteam_289_2 = 0

		for iter_289_1 = 0, arg_289_0.size - 1 do
			arg_289_0.data[iter_289_1] = anonteam_280_3(arg_289_0.data[iter_289_1], arg_289_1[anonteam_289_2 + 1])
			anonteam_289_2 = (anonteam_289_2 + 1) % anonteam_289_1
		end
	end

	return anonteam_280_6
end)()

local function anonteam_0_49(arg_290_0, arg_290_1)
	for iter_290_0, iter_290_1 in pairs(arg_290_0) do
		if iter_290_1 == arg_290_1 then
			return true
		end
	end

	return false
end

local anonteam_0_50 = {
	[anonteam_0_43.NEVERLOSE] = function()
		local anonteam_291_0
		local anonteam_291_1 = (function()
			local anonteam_292_0 = {}

			local function anonteam_292_1(arg_293_0)
				return {
					status = #arg_293_0 ~= 0 and 200 or 500,
					body = arg_293_0,
					success = function(arg_294_0)
						return true
					end,
					headers = {}
				}
			end

			function anonteam_292_0.request(arg_295_0, arg_295_1, arg_295_2, arg_295_3, arg_295_4)
				if arg_295_1 == "get" then
					network.get(arg_295_2, arg_295_3.headers, function(arg_296_0)
						arg_295_4(anonteam_292_1(arg_296_0))
					end)
				elseif arg_295_1 == "post" then
					network.post(arg_295_2, arg_295_3.body, arg_295_3.headers, function(arg_297_0)
						arg_295_4(anonteam_292_1(arg_297_0))
					end)
				end
			end

			return anonteam_292_0
		end)()

		events.voice_message:set(function(arg_298_0)
			local anonteam_298_0, anonteam_298_1 = pcall(function()
				if anonteam_291_0 ~= nil then
					anonteam_291_0(arg_298_0[0], arg_298_0.is_nl)
				end
			end)

			if not anonteam_298_0 then
				print(anonteam_298_1)
			end
		end)

		local anonteam_291_2

		events.shutdown:set(function()
			if anonteam_291_2 ~= nil then
				anonteam_291_2()
			end
		end)

		local anonteam_291_3

		events.player_connect_full:set(function(arg_301_0)
			if anonteam_291_3 ~= nil and arg_301_0 ~= nil and arg_301_0.userid ~= nil and entity.get(arg_301_0.userid, true) ~= nil then
				anonteam_291_3(entity.get(arg_301_0.userid, true):get_index())
			end
		end)

		local anonteam_291_4

		events.render:set(function()
			if anonteam_291_4 ~= nil then
				anonteam_291_4()
			end
		end)

		local anonteam_291_5

		events.net_update_end:set(function()
			if anonteam_291_5 ~= nil then
				anonteam_291_5()
			end
		end)

		local anonteam_291_6

		events.round_start:set(function()
			if anonteam_291_6 ~= nil then
				anonteam_291_6()
			end
		end)

		local anonteam_291_7

		events.player_death:set(function(arg_305_0)
			if anonteam_291_7 ~= nil and arg_305_0 ~= nil and arg_305_0.userid ~= nil and arg_305_0.attacker ~= nil then
				anonteam_291_7(arg_305_0.attacker, arg_305_0.assister, arg_305_0.userid)
			end
		end)

		local anonteam_291_8
		local anonteam_291_9 = anonteam_0_34.unmatched_lua and "Unmatched.lua anonteam.net" or "Cheat detector nonteam.net"
		local anonteam_291_10 = ui.create(anonteam_291_9)
		local anonteam_291_11 = anonteam_291_10:switch("Reveal unmatched.gg Rank", true)
		local anonteam_291_12 = anonteam_291_10:switch("Display Estimated Data", true)
		local anonteam_291_13 = anonteam_291_10:selectable("Detection Features", {
			"rank image",
			"scoreboard color",
			"spectator hud",
			"killfeed icons"
		})
		local anonteam_291_14

		local function anonteam_291_15()
			if anonteam_291_14 ~= nil then
				anonteam_291_14()
			end
		end

		anonteam_291_13:set_callback(anonteam_291_15)
		anonteam_291_11:set_callback(anonteam_291_15)
		anonteam_291_12:set_callback(anonteam_291_15)

		local anonteam_291_16 = {}
		local anonteam_291_17 = 0

		for iter_291_0, iter_291_1 in pairs(anonteam_0_38) do
			if type(iter_291_0) == "number" then
				anonteam_291_17 = anonteam_291_17 + 1
				anonteam_291_16[anonteam_291_17] = iter_291_1
			end
		end

		local anonteam_291_18

		if anonteam_0_34.spoof then
			anonteam_291_18 = anonteam_291_10:selectable("Spoof cheat", anonteam_291_16)
		end

		local anonteam_291_19 = {}
		local anonteam_291_20 = 0

		for iter_291_2, iter_291_3 in pairs(anonteam_0_39) do
			if type(iter_291_2) == "number" then
				anonteam_291_20 = anonteam_291_20 + 1
				anonteam_291_19[anonteam_291_20] = iter_291_3
			end
		end

		local anonteam_291_21

		if anonteam_0_34.spoof then
			anonteam_291_21 = anonteam_291_10:selectable("Spoof position of", anonteam_291_19)
		end

		local anonteam_291_22 = {}
		local anonteam_291_23 = 0

		for iter_291_4, iter_291_5 in pairs(anonteam_0_40) do
			if type(iter_291_4) == "number" then
				anonteam_291_23 = anonteam_291_23 + 1
				anonteam_291_22[anonteam_291_23] = iter_291_5
			end
		end

		local anonteam_291_24

		if anonteam_0_34.spoof then
			anonteam_291_24 = anonteam_291_10:selectable("Spoof mode", anonteam_291_22)
		end

		local anonteam_291_25 = {}
		local anonteam_291_26 = 0

		for iter_291_6, iter_291_7 in pairs(anonteam_0_41) do
			if type(iter_291_6) == "number" then
				anonteam_291_26 = anonteam_291_26 + 1
				anonteam_291_25[anonteam_291_26] = iter_291_7
			end
		end

		local anonteam_291_27 = anonteam_291_10:combo("Cheat icon pack", anonteam_291_25)

		anonteam_291_27:set_callback(anonteam_291_15)

		local anonteam_291_28 = anonteam_0_0.cast("uint32_t(__fastcall*)(void*, void*)", utils.opcode_scan("engine.dll", "56 57 8B F9 8D 4F 08 C7 07 ? ? ? ? E8 ? ? ? ? C7"))

		return {
			panorama = anonteam_0_46,
			http = anonteam_291_1,
			get_api_key = function()
				return "5PJIYZfPOLgurRGfuTtf25Au3MwSa6aH"
			end,
			set_shutdown_callback = function(arg_308_0)
				anonteam_291_2 = arg_308_0
			end,
			set_player_connect_callback = function(arg_309_0)
				anonteam_291_3 = arg_309_0
			end,
			set_paint_callback = function(arg_310_0)
				anonteam_291_4 = arg_310_0
			end,
			set_net_update_callback = function(arg_311_0)
				anonteam_291_5 = arg_311_0
			end,
			set_round_start_callback = function(arg_312_0)
				anonteam_291_6 = arg_312_0
			end,
			set_player_death_callback = function(arg_313_0)
				anonteam_291_7 = arg_313_0
			end,
			is_in_game = function()
				return globals.is_in_game
			end,
			get_local_player_id = function()
				return entity.get_local_player():get_index()
			end,
			set_voice_callback = function(arg_316_0)
				anonteam_291_0 = arg_316_0
			end,
			is_unmatched_enabled = function()
				return anonteam_291_11:get()
			end,
			is_rank_image_enabled = function()
				return anonteam_291_13:get(1)
			end,
			is_scoreboard_color_enabled = function()
				return anonteam_291_13:get(2)
			end,
			is_spectator_hud_enabled = function()
				return anonteam_291_13:get(3)
			end,
			is_killfeed_icons_enabled = function()
				return anonteam_291_13:get(4)
			end,
			should_display_estimated_data = function()
				return anonteam_291_12:get()
			end,
			set_features_update_callback = function(arg_323_0)
				anonteam_291_14 = arg_323_0
			end,
			get_spoofed_cheats = function()
				if not anonteam_0_34.spoof then
					return {}
				end

				local anonteam_324_0 = {}

				for iter_324_0 = 1, #anonteam_291_16 do
					if anonteam_291_18:get(iter_324_0) then
						anonteam_324_0[iter_324_0] = true
					end
				end

				return anonteam_324_0
			end,
			get_spoof_targets = function()
				if not anonteam_0_34.spoof then
					return {}
				end

				local anonteam_325_0 = {}

				for iter_325_0 = 1, #anonteam_291_19 do
					if anonteam_291_21:get(iter_325_0) then
						anonteam_325_0[iter_325_0] = true
					end
				end

				return anonteam_325_0
			end,
			get_spoof_modes = function()
				if not anonteam_0_34.spoof then
					return {}
				end

				local anonteam_326_0 = {}

				for iter_326_0 = 1, #to_pass_mode do
					if anonteam_291_24:get(iter_326_0) then
						anonteam_326_0[iter_326_0] = true
					end
				end

				return anonteam_326_0
			end,
			get_icon_pack = function()
				return anonteam_0_41[anonteam_291_27:get()]
			end,
			create_interface = function(arg_328_0, arg_328_1)
				return utils.create_interface(arg_328_0, arg_328_1)
			end,
			get_unix_time = function()
				return common.get_unixtime()
			end,
			get_construct_voice_message = function()
				return anonteam_291_28
			end,
			get_players = function()
				local anonteam_331_0 = entity.get_players(false, true)

				if not anonteam_331_0 then
					return nil
				end

				local anonteam_331_1 = {}
				local anonteam_331_2 = 0

				for iter_331_0, iter_331_1 in pairs(anonteam_331_0) do
					anonteam_331_2 = anonteam_331_2 + 1
					anonteam_331_1[anonteam_331_2] = iter_331_1:get_index()
				end

				return anonteam_331_1
			end,
			is_player_valid = function(arg_332_0)
				local anonteam_332_0 = entity.get(arg_332_0)

				if anonteam_332_0 == nil then
					return false
				end

				return anonteam_332_0:is_alive()
			end,
			is_player_enemy = function(arg_333_0)
				local anonteam_333_0 = entity.get(arg_333_0)

				if anonteam_333_0 == nil then
					return false
				end

				return anonteam_333_0:is_enemy()
			end,
			is_player_dormant = function(arg_334_0)
				local anonteam_334_0 = entity.get(arg_334_0)

				if anonteam_334_0 == nil then
					return false
				end

				return anonteam_334_0:is_dormant()
			end,
			get_active_weapon_index = function(arg_335_0)
				local anonteam_335_0 = entity.get(arg_335_0)

				if anonteam_335_0 == nil then
					return nil
				end

				local anonteam_335_1 = anonteam_335_0:get_player_weapon()

				if anonteam_335_1 == nil then
					return nil
				end

				return anonteam_335_1:get_weapon_index()
			end,
			get_tick_count = function()
				return globals.tickcount
			end,
			get_player_position = function(arg_337_0)
				return entity.get(arg_337_0):get_origin()
			end,
			get_jmp_edx_addr = function()
				return jmp_edx_addr
			end
		}
	end
}
local anonteam_0_51

if anonteam_0_50[anonteam_0_45] ~= nil then
	anonteam_0_51 = anonteam_0_50[anonteam_0_45]()
else
	print("ERROR: no implementation for " .. anonteam_0_43[anonteam_0_45] .. " found")

	return
end

local anonteam_0_52 = {}

local function anonteam_0_53()
	for iter_339_0 = 1, #anonteam_0_52 do
		anonteam_0_52[iter_339_0]()
	end
end

local function anonteam_0_54(arg_340_0)
	table.insert(anonteam_0_52, arg_340_0)
end

anonteam_0_51.set_shutdown_callback(anonteam_0_53)

local function anonteam_0_55(arg_341_0, arg_341_1)
	return function(...)
		return arg_341_0(arg_341_1, ...)
	end
end

local function anonteam_0_56(arg_343_0, arg_343_1, arg_343_2, arg_343_3)
	local anonteam_343_0 = anonteam_0_3("void***", anonteam_0_51.create_interface(arg_343_0, arg_343_1)) or error(arg_343_1 .. " is nil.")

	return anonteam_0_55(anonteam_0_3(arg_343_3, anonteam_343_0[0][arg_343_2]), anonteam_343_0)
end

local anonteam_0_57 = anonteam_0_5("void***")

local function anonteam_0_58(arg_344_0, arg_344_1, arg_344_2)
	return anonteam_0_3(arg_344_2, anonteam_0_3(anonteam_0_57, arg_344_0)[0][arg_344_1])
end

local function anonteam_0_59(arg_345_0, arg_345_1)
	local anonteam_345_0 = anonteam_0_5(arg_345_1)

	return function(arg_346_0, ...)
		return anonteam_0_58(arg_346_0, arg_345_0, anonteam_345_0)(arg_346_0, ...)
	end
end

local anonteam_0_60 = anonteam_0_5("  struct {\n      uint64_t version; // 0x0\n      union {\n          int64_t   xuid;\n          struct {\n              uint32_t   xuid_low;\n              uint32_t   xuid_high;\n          };\n      };\n      char name[128]; // 0x10\n      int user_id; // 0x90\n      char guid[33];\n      uint32_t friends_id;\n      char friends_name[128];\n      bool fakeplayer;\n      bool hltv;\n      int customfiles[4];\n      unsigned char files_downloaded;\n  }\n")
local anonteam_0_61 = anonteam_0_5("$[1]", anonteam_0_60)
local anonteam_0_62 = anonteam_0_5("$*", anonteam_0_60)
local anonteam_0_63 = anonteam_0_5("  struct {\n      uint32_t xuid_low;\n      uint32_t xuid_high;\n      uint32_t sequence_bytes;\n      uint32_t section_number;\n      uint32_t uncompressed_sample_offset;\n  }\n")
local anonteam_0_64 = anonteam_0_5("$[1]", anonteam_0_63)
local anonteam_0_65 = anonteam_0_5("$*", anonteam_0_63)
local anonteam_0_66 = anonteam_0_5("  struct {\n      uint32_t section_number;\n      uint32_t sequence_bytes;\n      uint32_t uncompressed_sample_offset;\n      uint32_t xuid_low;\n      uint32_t xuid_high;\n  }\n")
local anonteam_0_67 = anonteam_0_5("$[1]", anonteam_0_66)
local anonteam_0_68 = anonteam_0_5("$*", anonteam_0_66)
local anonteam_0_69 = anonteam_0_5("  struct {\n      char data[16];\n      uint32_t current_length;\n      uint32_t max_length;\n  }\n")
local anonteam_0_70 = anonteam_0_5("$[1]", anonteam_0_69)
local anonteam_0_71 = anonteam_0_5("$*", anonteam_0_69)
local anonteam_0_72 = anonteam_0_5("  struct {\n      uint8_t data[20];\n  }\n")
local anonteam_0_73 = anonteam_0_5("$[1]", anonteam_0_72)
local anonteam_0_74 = anonteam_0_5("$*", anonteam_0_72)
local anonteam_0_75 = anonteam_0_5("  struct {\n      char pad_0000[16];\n      uint32_t size;\n  }\n")
local anonteam_0_76 = anonteam_0_5("$[1]", anonteam_0_75)
local anonteam_0_77 = anonteam_0_5("$*", anonteam_0_75)
local anonteam_0_78 = anonteam_0_5("  struct {\n      char pad_0000[8]; // 0x0000\n      int32_t client; // 0x0008\n      int32_t audible_mask; // 0x000C\n      uint32_t xuid_low; // 0x0010\n      uint32_t xuid_high; // 0x0014\n      $ voice_data; // 0x0018\n      int32_t proximity; // 0x001C\n      int32_t format; // 0x0020\n      int32_t sequence_bytes; // 0x0024\n      uint32_t section_number; // 0x0028\n      uint32_t uncompressed_sample_offset; // 0x002C\n      int32_t cached_size; //0x0030\n      uint32_t flags; //0x0034\n      int8_t no_stack_overflow[0xFF];\n  }\n", anonteam_0_77)
local anonteam_0_79 = anonteam_0_5("$[1]", anonteam_0_78)
local anonteam_0_80 = anonteam_0_5("$*", anonteam_0_78)
local anonteam_0_81 = anonteam_0_5("  struct {\n      uint32_t INetMessage_Vtable; //0x0000\n      char pad_0004[4]; //0x0004\n      uint32_t CCLCMsg_VoiceData_Vtable; //0x0008\n      char pad_000C[8]; //0x000C\n      void* data; //0x0014\n      uint32_t xuid_low;\n      uint32_t xuid_high;\n      int32_t format; //0x0020\n      int32_t sequence_bytes; //0x0024\n      uint32_t section_number; //0x0028\n      uint32_t uncompressed_sample_offset; //0x002C\n      int32_t cached_size; //0x0030\n\n      uint32_t flags; //0x0034\n      uint8_t no_stack_overflow[0xFF];\n  }\n")
local anonteam_0_82 = anonteam_0_5("$[1]", anonteam_0_81)
local anonteam_0_83 = anonteam_0_5("$*", anonteam_0_81)
local anonteam_0_84 = anonteam_0_5("  struct {\n      uint16_t id; // 0x0\n      uint8_t user_id; // 0x2\n      uint8_t weapon_id; // 0x3\n      uint32_t server_tick; // 0x4\n      float x; // 0x8\n      float y; // 0xC\n      float z; // 0x10\n  }\n")
local anonteam_0_85 = anonteam_0_5("$[1]", anonteam_0_84)
local anonteam_0_86 = anonteam_0_5("$*", anonteam_0_84)
local anonteam_0_87 = anonteam_0_5("  struct {\n      uint32_t identifier;\n      int32_t entityId;\n      int32_t x;\n      int32_t y;\n      int32_t z;\n  }\n")
local anonteam_0_88 = anonteam_0_5("$[1]", anonteam_0_87)
local anonteam_0_89 = anonteam_0_5("$*", anonteam_0_87)
local anonteam_0_90 = anonteam_0_5("  struct {\n      uint32_t id;\n      uint8_t entity_id;\n      uint8_t tick_count;\n      int16_t x;\n      int16_t y;\n      int16_t z;\n      uint8_t pad[9];\n  }\n")
local anonteam_0_91 = anonteam_0_5("$[1]", anonteam_0_90)
local anonteam_0_92 = anonteam_0_5("$*", anonteam_0_90)
local anonteam_0_93 = anonteam_0_5("  struct {\n      char pad_0000[8]; //0x0000\n      uint8_t keyp1; // 0x8\n      uint8_t eidp1; // 0x9\n      uint8_t mutualkey; // 0xA (10)\n      uint8_t loc_xor_key; // 0xB (11)\n      uint16_t xored_x; // 0xC (12)\n      uint16_t xored_y; // 0xE (14)\n      uint16_t xored_z; // 0x10 (16)\n      uint8_t keyp2; // 0x12 (18)\n  }\n")
local anonteam_0_94 = anonteam_0_5("$[1]", anonteam_0_93)
local anonteam_0_95 = anonteam_0_5("$*", anonteam_0_93)
local anonteam_0_96 = anonteam_0_5("  struct {\n      uint8_t entity;\n      float x;\n      float y;\n      float z;\n      uint8_t key;\n  }\n")
local anonteam_0_97 = anonteam_0_5("$[1]", anonteam_0_96)
local anonteam_0_98 = anonteam_0_5("$*", anonteam_0_96)
local anonteam_0_99 = anonteam_0_5("  struct {\n      uint8_t entity;\n      uint32_t tickcount;\n      int16_t x; // these are actually supposed to be floats, but i can't care enough (we'll just send integers)\n      int16_t y;\n      int16_t z;\n  }\n")
local anonteam_0_100 = anonteam_0_5("$[1]", anonteam_0_99)
local anonteam_0_101 = anonteam_0_5("$*", anonteam_0_99)
local anonteam_0_102 = anonteam_0_5("  struct {\n      uint32_t id; // 0x0\n      uint8_t entity; // 0x4\n      uint8_t health; // 0x5\n      int16_t x; // 0x6\n      int16_t y; // 0x8\n      int16_t z; // 0xA\n      uint8_t entity_again; // 0xC\n      char pad_000D[3]; // 0xD\n      uint32_t second_id; // 0x10\n  }\n")
local anonteam_0_103 = anonteam_0_5("$[1]", anonteam_0_102)
local anonteam_0_104 = anonteam_0_5("$*", anonteam_0_102)
local anonteam_0_105 = anonteam_0_5("  struct {\n      char legion[6];\n      char random[14];\n  }\n")
local anonteam_0_106 = anonteam_0_5("$[1]", anonteam_0_105)
local anonteam_0_107 = anonteam_0_5("$*", anonteam_0_105)
local anonteam_0_108 = anonteam_0_5("  struct {\n      uint8_t legion_xor[6];\n      char random[14];\n  }\n")
local anonteam_0_109 = anonteam_0_5("$[1]", anonteam_0_108)
local anonteam_0_110 = anonteam_0_5("$*", anonteam_0_108)
local anonteam_0_111 = anonteam_0_5("  struct {\n      uint16_t m_key;\n      int t;\n      char nothing[14];\n  }\n")
local anonteam_0_112 = anonteam_0_5("$[1]", anonteam_0_111)
local anonteam_0_113 = anonteam_0_5("$*", anonteam_0_111)
local anonteam_0_114 = anonteam_0_5("  struct{\n      uint8_t msg_type;\n      uint8_t cheat_id;\n      uint16_t base_id;//xuid low end\n      uint8_t user_id; // xuid high\n      int16_t x;\n      int16_t y;\n      int16_t z;\n      int8_t health;\n      uint32_t tick;\n\n      struct {\n          uint16_t id;\n          uint8_t crash;\n          uint8_t boss;\n      } user_info;\n  }\n")
local anonteam_0_115 = anonteam_0_5("$[1]", anonteam_0_114)
local anonteam_0_116 = anonteam_0_5("$*", anonteam_0_114)
local anonteam_0_117 = anonteam_0_5("  struct {\n      uint32_t xuid_low;\n      uint32_t xuid_high;\n      uint32_t section_number;\n      uint32_t sequence_bytes;\n      uint32_t uncompressed_sample_offset;\n  }\n")
local anonteam_0_118 = anonteam_0_5("$[1]", anonteam_0_117)
local anonteam_0_119 = anonteam_0_5("$*", anonteam_0_117)
local anonteam_0_120 = anonteam_0_5("  struct {\n      uint16_t tick_count;\n      char name[3];\n      uint16_t tick_count_shifted;\n  }\n")
local anonteam_0_121 = anonteam_0_5("$[1]", anonteam_0_120)
local anonteam_0_122 = anonteam_0_5("$*", anonteam_0_120)
local anonteam_0_123 = anonteam_0_56("engine.dll", "VEngineClient014", 8, anonteam_0_5("bool(__thiscall*)(void*, int, $)", anonteam_0_62))
local anonteam_0_124 = anonteam_0_56("engine.dll", "VEngineClient014", 78, "void*(__thiscall*)(void*)")
local anonteam_0_125 = anonteam_0_2(anonteam_0_61)

local function anonteam_0_126(arg_347_0)
	if not anonteam_0_123(arg_347_0, anonteam_0_125) then
		return nil
	end

	local anonteam_347_0 = anonteam_0_125[0]

	return {
		xuid = tonumber(anonteam_347_0.xuid),
		xuid_low = tonumber(anonteam_347_0.xuid_low),
		xuid_high = tonumber(anonteam_347_0.xuid_high),
		name = anonteam_0_0.string(anonteam_347_0.name),
		user_id = tonumber(anonteam_347_0.user_id),
		guid = anonteam_0_0.string(anonteam_347_0.guid)
	}
end

local anonteam_0_127 = (function()
	local anonteam_348_0 = false
	local anonteam_348_1 = table.unpack or unpack
	local anonteam_348_2 = table.concat
	local anonteam_348_3 = string.byte
	local anonteam_348_4 = string.char
	local anonteam_348_5 = string.rep
	local anonteam_348_6 = string.sub
	local anonteam_348_7 = string.gsub
	local anonteam_348_8 = string.gmatch
	local anonteam_348_9 = string.format
	local anonteam_348_10 = math.floor
	local anonteam_348_11 = math.ceil
	local anonteam_348_12 = math.min
	local anonteam_348_13 = math.max
	local anonteam_348_14 = tonumber
	local anonteam_348_15 = type
	local anonteam_348_16 = math.huge

	local function anonteam_348_17(arg_349_0)
		local anonteam_349_0 = 0
		local anonteam_349_1 = arg_349_0
		local anonteam_349_2 = arg_349_0
		local anonteam_349_3

		while true do
			local anonteam_349_4

			anonteam_349_0, anonteam_349_4, anonteam_349_1, anonteam_349_2 = anonteam_349_0 + 1, anonteam_349_1, anonteam_349_1 + anonteam_349_1 + 1, anonteam_349_2 + anonteam_349_2 + anonteam_349_0 % 2

			if anonteam_349_0 > 256 or anonteam_349_1 - (anonteam_349_1 - 1) ~= 1 or anonteam_349_2 - (anonteam_349_2 - 1) ~= 1 or anonteam_349_1 == anonteam_349_2 then
				return anonteam_349_0, false
			elseif anonteam_349_1 == anonteam_349_4 then
				return anonteam_349_0, true
			end
		end
	end

	local anonteam_348_18 = 0.6666666666666666
	local anonteam_348_19 = anonteam_348_18 * 5 > 3 and anonteam_348_18 * 4 < 3 and anonteam_348_17(1) >= 53

	assert(anonteam_348_19, "at least 53-bit floating point numbers are required")

	local anonteam_348_20, anonteam_348_21 = anonteam_348_17(1)
	local anonteam_348_22 = anonteam_348_21 and anonteam_348_20 == 64
	local anonteam_348_23 = anonteam_348_21 and anonteam_348_20 == 32

	assert(anonteam_348_22 or anonteam_348_23 or not anonteam_348_21, "Lua integers must be either 32-bit or 64-bit")

	local anonteam_348_24 = true
	local anonteam_348_25
	local anonteam_348_26
	local anonteam_348_27
	local anonteam_348_28
	local anonteam_348_29

	if anonteam_348_24 then
		anonteam_348_28 = anonteam_0_1
		anonteam_348_29 = "bit"

		local anonteam_348_30 = true
		local anonteam_348_31 = anonteam_348_27

		if anonteam_348_30 then
			anonteam_348_27 = anonteam_348_31
		end

		anonteam_348_25 = false
		anonteam_348_26 = anonteam_348_15(jit) == "table" and jit.arch or anonteam_348_27 and anonteam_348_27.arch or nil
	else
		for iter_348_0, iter_348_1 in ipairs(_VERSION == "Lua 5.2" and {
			"bit32",
			"bit"
		} or {
			"bit",
			"bit32"
		}) do
			if anonteam_348_15(_G[iter_348_1]) == "table" and _G[iter_348_1].bxor then
				anonteam_348_28 = _G[iter_348_1]
				anonteam_348_29 = iter_348_1

				break
			end
		end
	end

	if anonteam_348_0 then
		print("Abilities:")
		print("   Lua version:               " .. (anonteam_348_24 and "LuaJIT " .. (anonteam_348_25 and "2.1 " or "2.0 ") .. (anonteam_348_26 or "") .. (anonteam_348_27 and " with FFI" or " without FFI") or _VERSION))
		print("   Integer bitwise operators: " .. (anonteam_348_22 and "int64" or anonteam_348_23 and "int32" or "no"))
		print("   32-bit bitwise library:    " .. (anonteam_348_29 or "not found"))
	end

	local anonteam_348_32
	local anonteam_348_33
	local anonteam_348_34

	if anonteam_348_24 and anonteam_348_27 then
		anonteam_348_32 = "Using 'ffi' library of LuaJIT"
		anonteam_348_34 = "FFI"
	elseif anonteam_348_24 then
		anonteam_348_32 = "Using special code for sandboxed LuaJIT (no FFI)"
		anonteam_348_34 = "LJ"
	elseif anonteam_348_22 then
		anonteam_348_32 = "Using native int64 bitwise operators"
		anonteam_348_34 = "INT64"
	elseif anonteam_348_23 then
		anonteam_348_32 = "Using native int32 bitwise operators"
		anonteam_348_34 = "INT32"
	elseif anonteam_348_29 then
		anonteam_348_32 = "Using '" .. anonteam_348_29 .. "' library"
		anonteam_348_34 = "LIB32"
	else
		anonteam_348_32 = "Emulating bitwise operators using look-up table"
		anonteam_348_34 = "EMUL"
	end

	if anonteam_348_0 then
		print("Implementation selected:")
		print("   " .. anonteam_348_32)
	end

	local anonteam_348_35
	local anonteam_348_36
	local anonteam_348_37
	local anonteam_348_38
	local anonteam_348_39
	local anonteam_348_40
	local anonteam_348_41
	local anonteam_348_42
	local anonteam_348_43
	local anonteam_348_44
	local anonteam_348_45

	if anonteam_348_34 == "FFI" or anonteam_348_34 == "LJ" or anonteam_348_34 == "LIB32" then
		anonteam_348_35 = anonteam_348_28.band
		anonteam_348_36 = anonteam_348_28.bor
		anonteam_348_37 = anonteam_348_28.bxor
		anonteam_348_38 = anonteam_348_28.lshift
		anonteam_348_39 = anonteam_348_28.rshift
		anonteam_348_40 = anonteam_348_28.rol or anonteam_348_28.lrotate
		anonteam_348_41 = anonteam_348_28.ror or anonteam_348_28.rrotate
		anonteam_348_42 = anonteam_348_28.bnot
		anonteam_348_43 = anonteam_348_28.tobit
		anonteam_348_44 = anonteam_348_28.tohex

		assert(anonteam_348_35 and anonteam_348_36 and anonteam_348_37 and anonteam_348_38 and anonteam_348_39 and anonteam_348_40 and anonteam_348_41 and anonteam_348_42, "Library '" .. anonteam_348_29 .. "' is incomplete")

		anonteam_348_45 = anonteam_348_37
	end

	anonteam_348_44 = anonteam_348_44 or pcall(anonteam_348_9, "%x", 2147483648) and function(arg_350_0)
		return anonteam_348_9("%08x", arg_350_0 % 4294967296)
	end or function(arg_351_0)
		return anonteam_348_9("%08x", (arg_351_0 + 2147483648) % 4294967296 - 2147483648)
	end

	local function anonteam_348_46(arg_352_0, arg_352_1)
		return anonteam_348_37(arg_352_0, arg_352_1 or 2779096485) % 4294967296
	end

	local function anonteam_348_47()
		return {
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0,
			0
		}
	end

	local anonteam_348_48
	local anonteam_348_49
	local anonteam_348_50
	local anonteam_348_51
	local anonteam_348_52
	local anonteam_348_53
	local anonteam_348_54
	local anonteam_348_55
	local anonteam_348_56 = {}
	local anonteam_348_57 = {}
	local anonteam_348_58 = {}
	local anonteam_348_59 = {}
	local anonteam_348_60 = {}
	local anonteam_348_61 = {}
	local anonteam_348_62 = {
		[224] = {},
		[256] = anonteam_348_59
	}
	local anonteam_348_63 = {
		[384] = {},
		[512] = anonteam_348_58
	}
	local anonteam_348_64 = {
		[384] = {},
		[512] = anonteam_348_59
	}
	local anonteam_348_65 = {}
	local anonteam_348_66 = {
		1732584193,
		4023233417,
		2562383102,
		271733878,
		3285377520
	}
	local anonteam_348_67 = {
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		28,
		25,
		26,
		27,
		0,
		0,
		10,
		9,
		11,
		12,
		0,
		15,
		16,
		17,
		18,
		0,
		20,
		22,
		23,
		21
	}
	local anonteam_348_68
	local anonteam_348_69
	local anonteam_348_70 = {}
	local anonteam_348_71 = anonteam_348_70
	local anonteam_348_72 = anonteam_348_70
	local anonteam_348_73 = {}
	local anonteam_348_74 = 4294967296
	local anonteam_348_75 = 0
	local anonteam_348_76 = 0
	local anonteam_348_77 = {
		{
			1,
			2,
			3,
			4,
			5,
			6,
			7,
			8,
			9,
			10,
			11,
			12,
			13,
			14,
			15,
			16
		},
		{
			15,
			11,
			5,
			9,
			10,
			16,
			14,
			7,
			2,
			13,
			1,
			3,
			12,
			8,
			6,
			4
		},
		{
			12,
			9,
			13,
			1,
			6,
			3,
			16,
			14,
			11,
			15,
			4,
			7,
			8,
			2,
			10,
			5
		},
		{
			8,
			10,
			4,
			2,
			14,
			13,
			12,
			15,
			3,
			7,
			6,
			11,
			5,
			1,
			16,
			9
		},
		{
			10,
			1,
			6,
			8,
			3,
			5,
			11,
			16,
			15,
			2,
			12,
			13,
			7,
			9,
			4,
			14
		},
		{
			3,
			13,
			7,
			11,
			1,
			12,
			9,
			4,
			5,
			14,
			8,
			6,
			16,
			15,
			2,
			10
		},
		{
			13,
			6,
			2,
			16,
			15,
			14,
			5,
			11,
			1,
			8,
			7,
			4,
			10,
			3,
			9,
			12
		},
		{
			14,
			12,
			8,
			15,
			13,
			2,
			4,
			10,
			6,
			1,
			16,
			5,
			9,
			7,
			3,
			11
		},
		{
			7,
			16,
			15,
			10,
			12,
			4,
			1,
			9,
			13,
			3,
			14,
			8,
			2,
			5,
			11,
			6
		},
		{
			11,
			3,
			9,
			5,
			8,
			7,
			2,
			6,
			16,
			12,
			10,
			15,
			4,
			13,
			14,
			1
		}
	}

	anonteam_348_77[11], anonteam_348_77[12] = anonteam_348_77[1], anonteam_348_77[2]

	local anonteam_348_78 = {
		1,
		3,
		4,
		11,
		13,
		10,
		12,
		6,
		1,
		3,
		4,
		11,
		13,
		10,
		2,
		7,
		5,
		8,
		14,
		15,
		16,
		9,
		2,
		7,
		5,
		8,
		14,
		15
	}

	local function anonteam_348_79(arg_354_0)
		local anonteam_354_0 = {}

		for iter_354_0, iter_354_1 in ipairs({
			1,
			9,
			13,
			17,
			18,
			21
		}) do
			anonteam_354_0[iter_354_1] = "<" .. anonteam_348_5(arg_354_0, iter_354_1)
		end

		return anonteam_354_0
	end

	if anonteam_348_34 == "FFI" then
		local anonteam_348_80 = anonteam_348_27.new("int32_t[?]", 80)

		anonteam_348_72 = anonteam_348_80
		anonteam_348_73 = anonteam_348_27.new("int32_t[?]", 16)
		anonteam_348_78 = anonteam_348_27.new("uint8_t[?]", #anonteam_348_78 + 1, 0, anonteam_348_1(anonteam_348_78))

		for iter_348_2 = 1, 10 do
			anonteam_348_77[iter_348_2] = anonteam_348_27.new("uint8_t[?]", #anonteam_348_77[iter_348_2] + 1, 0, anonteam_348_1(anonteam_348_77[iter_348_2]))
		end

		anonteam_348_77[11], anonteam_348_77[12] = anonteam_348_77[1], anonteam_348_77[2]

		function anonteam_348_48(arg_355_0, arg_355_1, arg_355_2, arg_355_3)
			local anonteam_355_0 = anonteam_348_80
			local anonteam_355_1 = anonteam_348_57

			for iter_355_0 = arg_355_2, arg_355_2 + arg_355_3 - 1, 64 do
				for iter_355_1 = 0, 15 do
					iter_355_0 = iter_355_0 + 4

					local anonteam_355_2, anonteam_355_3, anonteam_355_4, anonteam_355_5 = anonteam_348_3(arg_355_1, iter_355_0 - 3, iter_355_0)

					anonteam_355_0[iter_355_1] = anonteam_348_36(anonteam_348_38(anonteam_355_2, 24), anonteam_348_38(anonteam_355_3, 16), anonteam_348_38(anonteam_355_4, 8), anonteam_355_5)
				end

				for iter_355_2 = 16, 63 do
					local anonteam_355_6 = anonteam_355_0[iter_355_2 - 15]
					local anonteam_355_7 = anonteam_355_0[iter_355_2 - 2]

					anonteam_355_0[iter_355_2] = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_355_6, 7), anonteam_348_40(anonteam_355_6, 14), anonteam_348_39(anonteam_355_6, 3)) + anonteam_348_37(anonteam_348_40(anonteam_355_7, 15), anonteam_348_40(anonteam_355_7, 13), anonteam_348_39(anonteam_355_7, 10)) + anonteam_355_0[iter_355_2 - 7] + anonteam_355_0[iter_355_2 - 16])
				end

				local anonteam_355_8 = arg_355_0[1]
				local anonteam_355_9 = arg_355_0[2]
				local anonteam_355_10 = arg_355_0[3]
				local anonteam_355_11 = arg_355_0[4]
				local anonteam_355_12 = arg_355_0[5]
				local anonteam_355_13 = arg_355_0[6]
				local anonteam_355_14 = arg_355_0[7]
				local anonteam_355_15 = arg_355_0[8]

				for iter_355_3 = 0, 63, 8 do
					local anonteam_355_16 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3] + anonteam_355_1[iter_355_3 + 1] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_16)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_16)

					local anonteam_355_17 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 1] + anonteam_355_1[iter_355_3 + 2] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_17)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_17)

					local anonteam_355_18 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 2] + anonteam_355_1[iter_355_3 + 3] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_18)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_18)

					local anonteam_355_19 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 3] + anonteam_355_1[iter_355_3 + 4] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_19)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_19)

					local anonteam_355_20 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 4] + anonteam_355_1[iter_355_3 + 5] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_20)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_20)

					local anonteam_355_21 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 5] + anonteam_355_1[iter_355_3 + 6] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_21)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_21)

					local anonteam_355_22 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 6] + anonteam_355_1[iter_355_3 + 7] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_22)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_22)

					local anonteam_355_23 = anonteam_348_43(anonteam_348_37(anonteam_355_14, anonteam_348_35(anonteam_355_12, anonteam_348_37(anonteam_355_13, anonteam_355_14))) + anonteam_348_37(anonteam_348_41(anonteam_355_12, 6), anonteam_348_41(anonteam_355_12, 11), anonteam_348_40(anonteam_355_12, 7)) + (anonteam_355_0[iter_355_3 + 7] + anonteam_355_1[iter_355_3 + 8] + anonteam_355_15))

					anonteam_355_15, anonteam_355_14, anonteam_355_13, anonteam_355_12 = anonteam_355_14, anonteam_355_13, anonteam_355_12, anonteam_348_43(anonteam_355_11 + anonteam_355_23)
					anonteam_355_11, anonteam_355_10, anonteam_355_9, anonteam_355_8 = anonteam_355_10, anonteam_355_9, anonteam_355_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_355_8, anonteam_348_37(anonteam_355_9, anonteam_355_10)), anonteam_348_35(anonteam_355_9, anonteam_355_10)) + anonteam_348_37(anonteam_348_41(anonteam_355_8, 2), anonteam_348_41(anonteam_355_8, 13), anonteam_348_40(anonteam_355_8, 10)) + anonteam_355_23)
				end

				arg_355_0[1], arg_355_0[2], arg_355_0[3], arg_355_0[4] = anonteam_348_43(anonteam_355_8 + arg_355_0[1]), anonteam_348_43(anonteam_355_9 + arg_355_0[2]), anonteam_348_43(anonteam_355_10 + arg_355_0[3]), anonteam_348_43(anonteam_355_11 + arg_355_0[4])
				arg_355_0[5], arg_355_0[6], arg_355_0[7], arg_355_0[8] = anonteam_348_43(anonteam_355_12 + arg_355_0[5]), anonteam_348_43(anonteam_355_13 + arg_355_0[6]), anonteam_348_43(anonteam_355_14 + arg_355_0[7]), anonteam_348_43(anonteam_355_15 + arg_355_0[8])
			end
		end

		local anonteam_348_81 = anonteam_348_27.new("int64_t[?]", 80)
		local anonteam_348_82 = anonteam_348_81
		local anonteam_348_83 = anonteam_348_27.typeof("int64_t")
		local anonteam_348_84 = anonteam_348_27.typeof("int32_t")
		local anonteam_348_85 = anonteam_348_27.typeof("uint32_t")

		anonteam_348_75 = anonteam_348_83(4294967296)

		if anonteam_348_25 then
			local anonteam_348_86 = anonteam_348_35
			local anonteam_348_87 = anonteam_348_36
			local anonteam_348_88 = anonteam_348_37
			local anonteam_348_89 = anonteam_348_42
			local anonteam_348_90 = anonteam_348_38
			local anonteam_348_91 = anonteam_348_39
			local anonteam_348_92 = anonteam_348_40
			local anonteam_348_93 = anonteam_348_41

			anonteam_348_68 = anonteam_348_44

			local anonteam_348_94 = anonteam_348_27.new("int64_t[?]", 16)
			local anonteam_348_95 = anonteam_348_82

			local function anonteam_348_96(arg_356_0, arg_356_1, arg_356_2, arg_356_3, arg_356_4, arg_356_5)
				local anonteam_356_0 = anonteam_348_94[arg_356_0]
				local anonteam_356_1 = anonteam_348_94[arg_356_1]
				local anonteam_356_2 = anonteam_348_94[arg_356_2]
				local anonteam_356_3 = anonteam_348_94[arg_356_3]
				local anonteam_356_4 = anonteam_348_95[arg_356_4] + (anonteam_356_0 + anonteam_356_1)
				local anonteam_356_5 = anonteam_348_93(anonteam_348_88(anonteam_356_3, anonteam_356_4), 32)
				local anonteam_356_6 = anonteam_356_2 + anonteam_356_5
				local anonteam_356_7 = anonteam_348_93(anonteam_348_88(anonteam_356_1, anonteam_356_6), 24)
				local anonteam_356_8 = anonteam_348_95[arg_356_5] + (anonteam_356_4 + anonteam_356_7)
				local anonteam_356_9 = anonteam_348_93(anonteam_348_88(anonteam_356_5, anonteam_356_8), 16)
				local anonteam_356_10 = anonteam_356_6 + anonteam_356_9
				local anonteam_356_11 = anonteam_348_92(anonteam_348_88(anonteam_356_7, anonteam_356_10), 1)

				anonteam_348_94[arg_356_0], anonteam_348_94[arg_356_1], anonteam_348_94[arg_356_2], anonteam_348_94[arg_356_3] = anonteam_356_8, anonteam_356_11, anonteam_356_10, anonteam_356_9
			end

			local function anonteam_348_97(arg_357_0, arg_357_1, arg_357_2, arg_357_3, arg_357_4, arg_357_5, arg_357_6, arg_357_7)
				local anonteam_357_0 = arg_357_0[1]
				local anonteam_357_1 = arg_357_0[2]
				local anonteam_357_2 = arg_357_0[3]
				local anonteam_357_3 = arg_357_0[4]
				local anonteam_357_4 = arg_357_0[5]
				local anonteam_357_5 = arg_357_0[6]
				local anonteam_357_6 = arg_357_0[7]
				local anonteam_357_7 = arg_357_0[8]

				for iter_357_0 = arg_357_3, arg_357_3 + arg_357_4 - 1, 128 do
					if arg_357_2 then
						for iter_357_1 = 1, 16 do
							iter_357_0 = iter_357_0 + 8

							local anonteam_357_8, anonteam_357_9, anonteam_357_10, anonteam_357_11, anonteam_357_12, anonteam_357_13, anonteam_357_14, anonteam_357_15 = anonteam_348_3(arg_357_2, iter_357_0 - 7, iter_357_0)

							anonteam_348_95[iter_357_1] = anonteam_348_88(anonteam_348_36(anonteam_348_38(anonteam_357_15, 24), anonteam_348_38(anonteam_357_14, 16), anonteam_348_38(anonteam_357_13, 8), anonteam_357_12) * anonteam_348_83(4294967296), anonteam_348_85(anonteam_348_84(anonteam_348_36(anonteam_348_38(anonteam_357_11, 24), anonteam_348_38(anonteam_357_10, 16), anonteam_348_38(anonteam_357_9, 8), anonteam_357_8))))
						end
					end

					anonteam_348_94[0], anonteam_348_94[1], anonteam_348_94[2], anonteam_348_94[3], anonteam_348_94[4], anonteam_348_94[5], anonteam_348_94[6], anonteam_348_94[7] = anonteam_357_0, anonteam_357_1, anonteam_357_2, anonteam_357_3, anonteam_357_4, anonteam_357_5, anonteam_357_6, anonteam_357_7
					anonteam_348_94[8], anonteam_348_94[9], anonteam_348_94[10], anonteam_348_94[11], anonteam_348_94[13], anonteam_348_94[14], anonteam_348_94[15] = anonteam_348_58[1], anonteam_348_58[2], anonteam_348_58[3], anonteam_348_58[4], anonteam_348_58[6], anonteam_348_58[7], anonteam_348_58[8]
					arg_357_5 = arg_357_5 + (arg_357_6 or 128)
					anonteam_348_94[12] = anonteam_348_88(anonteam_348_58[5], arg_357_5)

					if arg_357_6 then
						anonteam_348_94[14] = anonteam_348_89(anonteam_348_94[14])
					end

					if arg_357_7 then
						anonteam_348_94[15] = anonteam_348_89(anonteam_348_94[15])
					end

					for iter_357_2 = 1, 12 do
						local anonteam_357_16 = anonteam_348_77[iter_357_2]

						anonteam_348_96(0, 4, 8, 12, anonteam_357_16[1], anonteam_357_16[2])
						anonteam_348_96(1, 5, 9, 13, anonteam_357_16[3], anonteam_357_16[4])
						anonteam_348_96(2, 6, 10, 14, anonteam_357_16[5], anonteam_357_16[6])
						anonteam_348_96(3, 7, 11, 15, anonteam_357_16[7], anonteam_357_16[8])
						anonteam_348_96(0, 5, 10, 15, anonteam_357_16[9], anonteam_357_16[10])
						anonteam_348_96(1, 6, 11, 12, anonteam_357_16[11], anonteam_357_16[12])
						anonteam_348_96(2, 7, 8, 13, anonteam_357_16[13], anonteam_357_16[14])
						anonteam_348_96(3, 4, 9, 14, anonteam_357_16[15], anonteam_357_16[16])
					end

					anonteam_357_0 = anonteam_348_88(anonteam_357_0, anonteam_348_94[0], anonteam_348_94[8])
					anonteam_357_1 = anonteam_348_88(anonteam_357_1, anonteam_348_94[1], anonteam_348_94[9])
					anonteam_357_2 = anonteam_348_88(anonteam_357_2, anonteam_348_94[2], anonteam_348_94[10])
					anonteam_357_3 = anonteam_348_88(anonteam_357_3, anonteam_348_94[3], anonteam_348_94[11])
					anonteam_357_4 = anonteam_348_88(anonteam_357_4, anonteam_348_94[4], anonteam_348_94[12])
					anonteam_357_5 = anonteam_348_88(anonteam_357_5, anonteam_348_94[5], anonteam_348_94[13])
					anonteam_357_6 = anonteam_348_88(anonteam_357_6, anonteam_348_94[6], anonteam_348_94[14])
					anonteam_357_7 = anonteam_348_88(anonteam_357_7, anonteam_348_94[7], anonteam_348_94[15])
				end

				arg_357_0[1], arg_357_0[2], arg_357_0[3], arg_357_0[4], arg_357_0[5], arg_357_0[6], arg_357_0[7], arg_357_0[8] = anonteam_357_0, anonteam_357_1, anonteam_357_2, anonteam_357_3, anonteam_357_4, anonteam_357_5, anonteam_357_6, anonteam_357_7

				return arg_357_5
			end

			local anonteam_348_98 = anonteam_348_27.typeof("int64_t[?]")
			local anonteam_348_99 = 0

			anonteam_348_76 = anonteam_348_83(4294967296)

			local function anonteam_348_100()
				return anonteam_348_98(30)
			end

			local function anonteam_348_101(arg_359_0, arg_359_1, arg_359_2, arg_359_3, arg_359_4, arg_359_5)
				local anonteam_359_0 = anonteam_348_60
				local anonteam_359_1 = anonteam_348_39(arg_359_5, 3)

				for iter_359_0 = arg_359_3, arg_359_3 + arg_359_4 - 1, arg_359_5 do
					for iter_359_1 = 0, anonteam_359_1 - 1 do
						iter_359_0 = iter_359_0 + 8

						local anonteam_359_2, anonteam_359_3, anonteam_359_4, anonteam_359_5, anonteam_359_6, anonteam_359_7, anonteam_359_8, anonteam_359_9 = anonteam_348_3(arg_359_2, iter_359_0 - 7, iter_359_0)

						arg_359_0[iter_359_1] = anonteam_348_88(arg_359_0[iter_359_1], anonteam_348_87(anonteam_348_36(anonteam_348_38(anonteam_359_9, 24), anonteam_348_38(anonteam_359_8, 16), anonteam_348_38(anonteam_359_7, 8), anonteam_359_6) * anonteam_348_83(4294967296), anonteam_348_85(anonteam_348_84(anonteam_348_36(anonteam_348_38(anonteam_359_5, 24), anonteam_348_38(anonteam_359_4, 16), anonteam_348_38(anonteam_359_3, 8), anonteam_359_2)))))
					end

					for iter_359_2 = 1, 24 do
						for iter_359_3 = 0, 4 do
							arg_359_0[25 + iter_359_3] = anonteam_348_88(arg_359_0[iter_359_3], arg_359_0[iter_359_3 + 5], arg_359_0[iter_359_3 + 10], arg_359_0[iter_359_3 + 15], arg_359_0[iter_359_3 + 20])
						end

						local anonteam_359_10 = anonteam_348_88(arg_359_0[25], anonteam_348_92(arg_359_0[27], 1))

						arg_359_0[1], arg_359_0[6], arg_359_0[11], arg_359_0[16] = anonteam_348_92(anonteam_348_88(anonteam_359_10, arg_359_0[6]), 44), anonteam_348_92(anonteam_348_88(anonteam_359_10, arg_359_0[16]), 45), anonteam_348_92(anonteam_348_88(anonteam_359_10, arg_359_0[1]), 1), anonteam_348_92(anonteam_348_88(anonteam_359_10, arg_359_0[11]), 10)
						arg_359_0[21] = anonteam_348_92(anonteam_348_88(anonteam_359_10, arg_359_0[21]), 2)

						local anonteam_359_11 = anonteam_348_88(arg_359_0[26], anonteam_348_92(arg_359_0[28], 1))

						arg_359_0[2], arg_359_0[7], arg_359_0[12], arg_359_0[22] = anonteam_348_92(anonteam_348_88(anonteam_359_11, arg_359_0[12]), 43), anonteam_348_92(anonteam_348_88(anonteam_359_11, arg_359_0[22]), 61), anonteam_348_92(anonteam_348_88(anonteam_359_11, arg_359_0[7]), 6), anonteam_348_92(anonteam_348_88(anonteam_359_11, arg_359_0[2]), 62)
						arg_359_0[17] = anonteam_348_92(anonteam_348_88(anonteam_359_11, arg_359_0[17]), 15)

						local anonteam_359_12 = anonteam_348_88(arg_359_0[27], anonteam_348_92(arg_359_0[29], 1))

						arg_359_0[3], arg_359_0[8], arg_359_0[18], arg_359_0[23] = anonteam_348_92(anonteam_348_88(anonteam_359_12, arg_359_0[18]), 21), anonteam_348_92(anonteam_348_88(anonteam_359_12, arg_359_0[3]), 28), anonteam_348_92(anonteam_348_88(anonteam_359_12, arg_359_0[23]), 56), anonteam_348_92(anonteam_348_88(anonteam_359_12, arg_359_0[8]), 55)
						arg_359_0[13] = anonteam_348_92(anonteam_348_88(anonteam_359_12, arg_359_0[13]), 25)

						local anonteam_359_13 = anonteam_348_88(arg_359_0[28], anonteam_348_92(arg_359_0[25], 1))

						arg_359_0[4], arg_359_0[14], arg_359_0[19], arg_359_0[24] = anonteam_348_92(anonteam_348_88(anonteam_359_13, arg_359_0[24]), 14), anonteam_348_92(anonteam_348_88(anonteam_359_13, arg_359_0[19]), 8), anonteam_348_92(anonteam_348_88(anonteam_359_13, arg_359_0[4]), 27), anonteam_348_92(anonteam_348_88(anonteam_359_13, arg_359_0[14]), 39)
						arg_359_0[9] = anonteam_348_92(anonteam_348_88(anonteam_359_13, arg_359_0[9]), 20)

						local anonteam_359_14 = anonteam_348_88(arg_359_0[29], anonteam_348_92(arg_359_0[26], 1))

						arg_359_0[5], arg_359_0[10], arg_359_0[15], arg_359_0[20] = anonteam_348_92(anonteam_348_88(anonteam_359_14, arg_359_0[10]), 3), anonteam_348_92(anonteam_348_88(anonteam_359_14, arg_359_0[20]), 18), anonteam_348_92(anonteam_348_88(anonteam_359_14, arg_359_0[5]), 36), anonteam_348_92(anonteam_348_88(anonteam_359_14, arg_359_0[15]), 41)
						arg_359_0[0] = anonteam_348_88(anonteam_359_14, arg_359_0[0])
						arg_359_0[0], arg_359_0[1], arg_359_0[2], arg_359_0[3], arg_359_0[4] = anonteam_348_88(arg_359_0[0], anonteam_348_86(anonteam_348_89(arg_359_0[1]), arg_359_0[2]), anonteam_359_0[iter_359_2]), anonteam_348_88(arg_359_0[1], anonteam_348_86(anonteam_348_89(arg_359_0[2]), arg_359_0[3])), anonteam_348_88(arg_359_0[2], anonteam_348_86(anonteam_348_89(arg_359_0[3]), arg_359_0[4])), anonteam_348_88(arg_359_0[3], anonteam_348_86(anonteam_348_89(arg_359_0[4]), arg_359_0[0])), anonteam_348_88(arg_359_0[4], anonteam_348_86(anonteam_348_89(arg_359_0[0]), arg_359_0[1]))
						arg_359_0[5], arg_359_0[6], arg_359_0[7], arg_359_0[8], arg_359_0[9] = anonteam_348_88(arg_359_0[8], anonteam_348_86(anonteam_348_89(arg_359_0[9]), arg_359_0[5])), anonteam_348_88(arg_359_0[9], anonteam_348_86(anonteam_348_89(arg_359_0[5]), arg_359_0[6])), anonteam_348_88(arg_359_0[5], anonteam_348_86(anonteam_348_89(arg_359_0[6]), arg_359_0[7])), anonteam_348_88(arg_359_0[6], anonteam_348_86(anonteam_348_89(arg_359_0[7]), arg_359_0[8])), anonteam_348_88(arg_359_0[7], anonteam_348_86(anonteam_348_89(arg_359_0[8]), arg_359_0[9]))
						arg_359_0[10], arg_359_0[11], arg_359_0[12], arg_359_0[13], arg_359_0[14] = anonteam_348_88(arg_359_0[11], anonteam_348_86(anonteam_348_89(arg_359_0[12]), arg_359_0[13])), anonteam_348_88(arg_359_0[12], anonteam_348_86(anonteam_348_89(arg_359_0[13]), arg_359_0[14])), anonteam_348_88(arg_359_0[13], anonteam_348_86(anonteam_348_89(arg_359_0[14]), arg_359_0[10])), anonteam_348_88(arg_359_0[14], anonteam_348_86(anonteam_348_89(arg_359_0[10]), arg_359_0[11])), anonteam_348_88(arg_359_0[10], anonteam_348_86(anonteam_348_89(arg_359_0[11]), arg_359_0[12]))
						arg_359_0[15], arg_359_0[16], arg_359_0[17], arg_359_0[18], arg_359_0[19] = anonteam_348_88(arg_359_0[19], anonteam_348_86(anonteam_348_89(arg_359_0[15]), arg_359_0[16])), anonteam_348_88(arg_359_0[15], anonteam_348_86(anonteam_348_89(arg_359_0[16]), arg_359_0[17])), anonteam_348_88(arg_359_0[16], anonteam_348_86(anonteam_348_89(arg_359_0[17]), arg_359_0[18])), anonteam_348_88(arg_359_0[17], anonteam_348_86(anonteam_348_89(arg_359_0[18]), arg_359_0[19])), anonteam_348_88(arg_359_0[18], anonteam_348_86(anonteam_348_89(arg_359_0[19]), arg_359_0[15]))
						arg_359_0[20], arg_359_0[21], arg_359_0[22], arg_359_0[23], arg_359_0[24] = anonteam_348_88(arg_359_0[22], anonteam_348_86(anonteam_348_89(arg_359_0[23]), arg_359_0[24])), anonteam_348_88(arg_359_0[23], anonteam_348_86(anonteam_348_89(arg_359_0[24]), arg_359_0[20])), anonteam_348_88(arg_359_0[24], anonteam_348_86(anonteam_348_89(arg_359_0[20]), arg_359_0[21])), anonteam_348_88(arg_359_0[20], anonteam_348_86(anonteam_348_89(arg_359_0[21]), arg_359_0[22])), anonteam_348_88(arg_359_0[21], anonteam_348_86(anonteam_348_89(arg_359_0[22]), arg_359_0[23]))
					end
				end
			end

			local anonteam_348_102 = 2779096485 * anonteam_348_83(4294967297)

			function anonteam_348_46(arg_360_0, arg_360_1)
				return anonteam_348_88(arg_360_0, arg_360_1 or anonteam_348_102)
			end

			function anonteam_348_49(arg_361_0, arg_361_1, arg_361_2, arg_361_3, arg_361_4)
				local anonteam_361_0 = anonteam_348_81
				local anonteam_361_1 = anonteam_348_56

				for iter_361_0 = arg_361_3, arg_361_3 + arg_361_4 - 1, 128 do
					for iter_361_1 = 0, 15 do
						iter_361_0 = iter_361_0 + 8

						local anonteam_361_2, anonteam_361_3, anonteam_361_4, anonteam_361_5, anonteam_361_6, anonteam_361_7, anonteam_361_8, anonteam_361_9 = anonteam_348_3(arg_361_2, iter_361_0 - 7, iter_361_0)

						anonteam_361_0[iter_361_1] = anonteam_348_87(anonteam_348_36(anonteam_348_38(anonteam_361_2, 24), anonteam_348_38(anonteam_361_3, 16), anonteam_348_38(anonteam_361_4, 8), anonteam_361_5) * anonteam_348_83(4294967296), anonteam_348_85(anonteam_348_84(anonteam_348_36(anonteam_348_38(anonteam_361_6, 24), anonteam_348_38(anonteam_361_7, 16), anonteam_348_38(anonteam_361_8, 8), anonteam_361_9))))
					end

					for iter_361_2 = 16, 79 do
						local anonteam_361_10 = anonteam_361_0[iter_361_2 - 15]
						local anonteam_361_11 = anonteam_361_0[iter_361_2 - 2]

						anonteam_361_0[iter_361_2] = anonteam_348_88(anonteam_348_93(anonteam_361_10, 1), anonteam_348_93(anonteam_361_10, 8), anonteam_348_91(anonteam_361_10, 7)) + anonteam_348_88(anonteam_348_93(anonteam_361_11, 19), anonteam_348_92(anonteam_361_11, 3), anonteam_348_91(anonteam_361_11, 6)) + anonteam_361_0[iter_361_2 - 7] + anonteam_361_0[iter_361_2 - 16]
					end

					local anonteam_361_12 = arg_361_0[1]
					local anonteam_361_13 = arg_361_0[2]
					local anonteam_361_14 = arg_361_0[3]
					local anonteam_361_15 = arg_361_0[4]
					local anonteam_361_16 = arg_361_0[5]
					local anonteam_361_17 = arg_361_0[6]
					local anonteam_361_18 = arg_361_0[7]
					local anonteam_361_19 = arg_361_0[8]

					for iter_361_3 = 0, 79, 8 do
						local anonteam_361_20 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 1] + anonteam_361_0[iter_361_3]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_20 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_20

						local anonteam_361_21 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 2] + anonteam_361_0[iter_361_3 + 1]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_21 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_21

						local anonteam_361_22 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 3] + anonteam_361_0[iter_361_3 + 2]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_22 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_22

						local anonteam_361_23 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 4] + anonteam_361_0[iter_361_3 + 3]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_23 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_23

						local anonteam_361_24 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 5] + anonteam_361_0[iter_361_3 + 4]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_24 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_24

						local anonteam_361_25 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 6] + anonteam_361_0[iter_361_3 + 5]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_25 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_25

						local anonteam_361_26 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 7] + anonteam_361_0[iter_361_3 + 6]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_26 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_26

						local anonteam_361_27 = anonteam_348_88(anonteam_348_93(anonteam_361_16, 14), anonteam_348_93(anonteam_361_16, 18), anonteam_348_92(anonteam_361_16, 23)) + anonteam_348_88(anonteam_361_18, anonteam_348_86(anonteam_361_16, anonteam_348_88(anonteam_361_17, anonteam_361_18))) + anonteam_361_19 + anonteam_361_1[iter_361_3 + 8] + anonteam_361_0[iter_361_3 + 7]

						anonteam_361_19, anonteam_361_18, anonteam_361_17, anonteam_361_16 = anonteam_361_18, anonteam_361_17, anonteam_361_16, anonteam_361_27 + anonteam_361_15
						anonteam_361_15, anonteam_361_14, anonteam_361_13, anonteam_361_12 = anonteam_361_14, anonteam_361_13, anonteam_361_12, anonteam_348_88(anonteam_348_86(anonteam_348_88(anonteam_361_12, anonteam_361_13), anonteam_361_14), anonteam_348_86(anonteam_361_12, anonteam_361_13)) + anonteam_348_88(anonteam_348_93(anonteam_361_12, 28), anonteam_348_92(anonteam_361_12, 25), anonteam_348_92(anonteam_361_12, 30)) + anonteam_361_27
					end

					arg_361_0[1] = anonteam_361_12 + arg_361_0[1]
					arg_361_0[2] = anonteam_361_13 + arg_361_0[2]
					arg_361_0[3] = anonteam_361_14 + arg_361_0[3]
					arg_361_0[4] = anonteam_361_15 + arg_361_0[4]
					arg_361_0[5] = anonteam_361_16 + arg_361_0[5]
					arg_361_0[6] = anonteam_361_17 + arg_361_0[6]
					arg_361_0[7] = anonteam_361_18 + arg_361_0[7]
					arg_361_0[8] = anonteam_361_19 + arg_361_0[8]
				end
			end
		else
			local anonteam_348_103 = anonteam_348_27.new("union{int64_t i64; struct{int32_t " .. (anonteam_348_27.abi("le") and "lo, hi" or "hi, lo") .. ";} i32;}[3]")

			local function anonteam_348_104(arg_362_0)
				anonteam_348_103[0].i64 = arg_362_0

				local anonteam_362_0 = anonteam_348_103[0].i32.lo
				local anonteam_362_1 = anonteam_348_103[0].i32.hi
				local anonteam_362_2 = anonteam_348_37(anonteam_348_39(anonteam_362_0, 1), anonteam_348_38(anonteam_362_1, 31), anonteam_348_39(anonteam_362_0, 8), anonteam_348_38(anonteam_362_1, 24), anonteam_348_39(anonteam_362_0, 7), anonteam_348_38(anonteam_362_1, 25))

				return anonteam_348_37(anonteam_348_39(anonteam_362_1, 1), anonteam_348_38(anonteam_362_0, 31), anonteam_348_39(anonteam_362_1, 8), anonteam_348_38(anonteam_362_0, 24), anonteam_348_39(anonteam_362_1, 7)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_362_2))
			end

			local function anonteam_348_105(arg_363_0)
				anonteam_348_103[0].i64 = arg_363_0

				local anonteam_363_0 = anonteam_348_103[0].i32.lo
				local anonteam_363_1 = anonteam_348_103[0].i32.hi
				local anonteam_363_2 = anonteam_348_37(anonteam_348_39(anonteam_363_0, 19), anonteam_348_38(anonteam_363_1, 13), anonteam_348_38(anonteam_363_0, 3), anonteam_348_39(anonteam_363_1, 29), anonteam_348_39(anonteam_363_0, 6), anonteam_348_38(anonteam_363_1, 26))

				return anonteam_348_37(anonteam_348_39(anonteam_363_1, 19), anonteam_348_38(anonteam_363_0, 13), anonteam_348_38(anonteam_363_1, 3), anonteam_348_39(anonteam_363_0, 29), anonteam_348_39(anonteam_363_1, 6)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_363_2))
			end

			local function anonteam_348_106(arg_364_0)
				anonteam_348_103[0].i64 = arg_364_0

				local anonteam_364_0 = anonteam_348_103[0].i32.lo
				local anonteam_364_1 = anonteam_348_103[0].i32.hi
				local anonteam_364_2 = anonteam_348_37(anonteam_348_39(anonteam_364_0, 14), anonteam_348_38(anonteam_364_1, 18), anonteam_348_39(anonteam_364_0, 18), anonteam_348_38(anonteam_364_1, 14), anonteam_348_38(anonteam_364_0, 23), anonteam_348_39(anonteam_364_1, 9))

				return anonteam_348_37(anonteam_348_39(anonteam_364_1, 14), anonteam_348_38(anonteam_364_0, 18), anonteam_348_39(anonteam_364_1, 18), anonteam_348_38(anonteam_364_0, 14), anonteam_348_38(anonteam_364_1, 23), anonteam_348_39(anonteam_364_0, 9)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_364_2))
			end

			local function anonteam_348_107(arg_365_0)
				anonteam_348_103[0].i64 = arg_365_0

				local anonteam_365_0 = anonteam_348_103[0].i32.lo
				local anonteam_365_1 = anonteam_348_103[0].i32.hi
				local anonteam_365_2 = anonteam_348_37(anonteam_348_39(anonteam_365_0, 28), anonteam_348_38(anonteam_365_1, 4), anonteam_348_38(anonteam_365_0, 30), anonteam_348_39(anonteam_365_1, 2), anonteam_348_38(anonteam_365_0, 25), anonteam_348_39(anonteam_365_1, 7))

				return anonteam_348_37(anonteam_348_39(anonteam_365_1, 28), anonteam_348_38(anonteam_365_0, 4), anonteam_348_38(anonteam_365_1, 30), anonteam_348_39(anonteam_365_0, 2), anonteam_348_38(anonteam_365_1, 25), anonteam_348_39(anonteam_365_0, 7)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_365_2))
			end

			local function anonteam_348_108(arg_366_0, arg_366_1, arg_366_2)
				anonteam_348_103[0].i64 = arg_366_1
				anonteam_348_103[1].i64 = arg_366_2
				anonteam_348_103[2].i64 = arg_366_0

				local anonteam_366_0 = anonteam_348_103[0].i32.lo
				local anonteam_366_1 = anonteam_348_103[0].i32.hi
				local anonteam_366_2 = anonteam_348_103[1].i32.lo
				local anonteam_366_3 = anonteam_348_103[1].i32.hi
				local anonteam_366_4 = anonteam_348_103[2].i32.lo
				local anonteam_366_5 = anonteam_348_103[2].i32.hi
				local anonteam_366_6 = anonteam_348_37(anonteam_366_2, anonteam_348_35(anonteam_366_4, anonteam_348_37(anonteam_366_0, anonteam_366_2)))

				return anonteam_348_37(anonteam_366_3, anonteam_348_35(anonteam_366_5, anonteam_348_37(anonteam_366_1, anonteam_366_3))) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_366_6))
			end

			local function anonteam_348_109(arg_367_0, arg_367_1, arg_367_2)
				anonteam_348_103[0].i64 = arg_367_0
				anonteam_348_103[1].i64 = arg_367_1
				anonteam_348_103[2].i64 = arg_367_2

				local anonteam_367_0 = anonteam_348_103[0].i32.lo
				local anonteam_367_1 = anonteam_348_103[0].i32.hi
				local anonteam_367_2 = anonteam_348_103[1].i32.lo
				local anonteam_367_3 = anonteam_348_103[1].i32.hi
				local anonteam_367_4 = anonteam_348_103[2].i32.lo
				local anonteam_367_5 = anonteam_348_103[2].i32.hi
				local anonteam_367_6 = anonteam_348_37(anonteam_348_35(anonteam_348_37(anonteam_367_0, anonteam_367_2), anonteam_367_4), anonteam_348_35(anonteam_367_0, anonteam_367_2))

				return anonteam_348_37(anonteam_348_35(anonteam_348_37(anonteam_367_1, anonteam_367_3), anonteam_367_5), anonteam_348_35(anonteam_367_1, anonteam_367_3)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_367_6))
			end

			local function anonteam_348_110(arg_368_0, arg_368_1, arg_368_2)
				anonteam_348_103[0].i64 = arg_368_0
				anonteam_348_103[1].i64 = arg_368_1

				local anonteam_368_0 = anonteam_348_103[0].i32.lo
				local anonteam_368_1 = anonteam_348_103[0].i32.hi
				local anonteam_368_2 = anonteam_348_103[1].i32.lo
				local anonteam_368_3 = anonteam_348_103[1].i32.hi
				local anonteam_368_4 = anonteam_348_37(anonteam_368_0, anonteam_368_2)
				local anonteam_368_5 = anonteam_348_37(anonteam_368_1, anonteam_368_3)
				local anonteam_368_6 = anonteam_348_37(anonteam_348_39(anonteam_368_4, arg_368_2), anonteam_348_38(anonteam_368_5, -arg_368_2))

				return anonteam_348_37(anonteam_348_39(anonteam_368_5, arg_368_2), anonteam_348_38(anonteam_368_4, -arg_368_2)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_368_6))
			end

			local function anonteam_348_111(arg_369_0, arg_369_1)
				anonteam_348_103[0].i64 = arg_369_0
				anonteam_348_103[1].i64 = arg_369_1

				local anonteam_369_0 = anonteam_348_103[0].i32.lo
				local anonteam_369_1 = anonteam_348_103[0].i32.hi
				local anonteam_369_2 = anonteam_348_103[1].i32.lo
				local anonteam_369_3 = anonteam_348_103[1].i32.hi
				local anonteam_369_4 = anonteam_348_37(anonteam_369_0, anonteam_369_2)
				local anonteam_369_5 = anonteam_348_37(anonteam_369_1, anonteam_369_3)
				local anonteam_369_6 = anonteam_348_37(anonteam_348_38(anonteam_369_4, 1), anonteam_348_39(anonteam_369_5, 31))

				return anonteam_348_37(anonteam_348_38(anonteam_369_5, 1), anonteam_348_39(anonteam_369_4, 31)) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_369_6))
			end

			local function anonteam_348_112(arg_370_0, arg_370_1)
				anonteam_348_103[0].i64 = arg_370_0
				anonteam_348_103[1].i64 = arg_370_1

				local anonteam_370_0 = anonteam_348_103[0].i32.lo
				local anonteam_370_1 = anonteam_348_103[0].i32.hi
				local anonteam_370_2 = anonteam_348_103[1].i32.lo
				local anonteam_370_3 = anonteam_348_103[1].i32.hi
				local anonteam_370_4 = anonteam_348_37(anonteam_370_0, anonteam_370_2)
				local anonteam_370_5 = anonteam_348_37(anonteam_370_1, anonteam_370_3)

				return anonteam_370_4 * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_370_5))
			end

			local function anonteam_348_113(arg_371_0, arg_371_1)
				anonteam_348_103[0].i64 = arg_371_0
				anonteam_348_103[1].i64 = arg_371_1

				local anonteam_371_0 = anonteam_348_103[0].i32.lo
				local anonteam_371_1 = anonteam_348_103[0].i32.hi
				local anonteam_371_2 = anonteam_348_103[1].i32.lo
				local anonteam_371_3 = anonteam_348_103[1].i32.hi
				local anonteam_371_4 = anonteam_348_37(anonteam_371_0, anonteam_371_2)

				return anonteam_348_37(anonteam_371_1, anonteam_371_3) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_371_4))
			end

			local function anonteam_348_114(arg_372_0, arg_372_1, arg_372_2)
				anonteam_348_103[0].i64 = arg_372_0
				anonteam_348_103[1].i64 = arg_372_1
				anonteam_348_103[2].i64 = arg_372_2

				local anonteam_372_0 = anonteam_348_103[0].i32.lo
				local anonteam_372_1 = anonteam_348_103[0].i32.hi
				local anonteam_372_2 = anonteam_348_103[1].i32.lo
				local anonteam_372_3 = anonteam_348_103[1].i32.hi
				local anonteam_372_4 = anonteam_348_103[2].i32.lo
				local anonteam_372_5 = anonteam_348_103[2].i32.hi
				local anonteam_372_6 = anonteam_348_37(anonteam_372_0, anonteam_372_2, anonteam_372_4)

				return anonteam_348_37(anonteam_372_1, anonteam_372_3, anonteam_372_5) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_372_6))
			end

			function anonteam_348_46(arg_373_0, arg_373_1)
				anonteam_348_103[0].i64 = arg_373_0

				local anonteam_373_0 = anonteam_348_103[0].i32.lo
				local anonteam_373_1 = anonteam_348_103[0].i32.hi
				local anonteam_373_2 = 2779096485
				local anonteam_373_3 = 2779096485

				if arg_373_1 then
					anonteam_348_103[1].i64 = arg_373_1
					anonteam_373_2, anonteam_373_3 = anonteam_348_103[1].i32.lo, anonteam_348_103[1].i32.hi
				end

				local anonteam_373_4 = anonteam_348_37(anonteam_373_0, anonteam_373_2)

				return anonteam_348_37(anonteam_373_1, anonteam_373_3) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_373_4))
			end

			function anonteam_348_68(arg_374_0)
				anonteam_348_103[0].i64 = arg_374_0

				return anonteam_348_44(anonteam_348_103[0].i32.hi) .. anonteam_348_44(anonteam_348_103[0].i32.lo)
			end

			function anonteam_348_49(arg_375_0, arg_375_1, arg_375_2, arg_375_3, arg_375_4)
				local anonteam_375_0 = anonteam_348_81
				local anonteam_375_1 = anonteam_348_56

				for iter_375_0 = arg_375_3, arg_375_3 + arg_375_4 - 1, 128 do
					for iter_375_1 = 0, 15 do
						iter_375_0 = iter_375_0 + 8

						local anonteam_375_2, anonteam_375_3, anonteam_375_4, anonteam_375_5, anonteam_375_6, anonteam_375_7, anonteam_375_8, anonteam_375_9 = anonteam_348_3(arg_375_2, iter_375_0 - 7, iter_375_0)

						anonteam_375_0[iter_375_1] = anonteam_348_36(anonteam_348_38(anonteam_375_2, 24), anonteam_348_38(anonteam_375_3, 16), anonteam_348_38(anonteam_375_4, 8), anonteam_375_5) * anonteam_348_83(4294967296) + anonteam_348_85(anonteam_348_84(anonteam_348_36(anonteam_348_38(anonteam_375_6, 24), anonteam_348_38(anonteam_375_7, 16), anonteam_348_38(anonteam_375_8, 8), anonteam_375_9)))
					end

					for iter_375_2 = 16, 79 do
						anonteam_375_0[iter_375_2] = anonteam_348_104(anonteam_375_0[iter_375_2 - 15]) + anonteam_348_105(anonteam_375_0[iter_375_2 - 2]) + anonteam_375_0[iter_375_2 - 7] + anonteam_375_0[iter_375_2 - 16]
					end

					local anonteam_375_10 = arg_375_0[1]
					local anonteam_375_11 = arg_375_0[2]
					local anonteam_375_12 = arg_375_0[3]
					local anonteam_375_13 = arg_375_0[4]
					local anonteam_375_14 = arg_375_0[5]
					local anonteam_375_15 = arg_375_0[6]
					local anonteam_375_16 = arg_375_0[7]
					local anonteam_375_17 = arg_375_0[8]

					for iter_375_3 = 0, 79, 8 do
						local anonteam_375_18 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 1] + anonteam_375_0[iter_375_3]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_18 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_18

						local anonteam_375_19 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 2] + anonteam_375_0[iter_375_3 + 1]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_19 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_19

						local anonteam_375_20 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 3] + anonteam_375_0[iter_375_3 + 2]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_20 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_20

						local anonteam_375_21 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 4] + anonteam_375_0[iter_375_3 + 3]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_21 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_21

						local anonteam_375_22 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 5] + anonteam_375_0[iter_375_3 + 4]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_22 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_22

						local anonteam_375_23 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 6] + anonteam_375_0[iter_375_3 + 5]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_23 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_23

						local anonteam_375_24 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 7] + anonteam_375_0[iter_375_3 + 6]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_24 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_24

						local anonteam_375_25 = anonteam_348_106(anonteam_375_14) + anonteam_348_108(anonteam_375_14, anonteam_375_15, anonteam_375_16) + anonteam_375_17 + anonteam_375_1[iter_375_3 + 8] + anonteam_375_0[iter_375_3 + 7]

						anonteam_375_17, anonteam_375_16, anonteam_375_15, anonteam_375_14 = anonteam_375_16, anonteam_375_15, anonteam_375_14, anonteam_375_25 + anonteam_375_13
						anonteam_375_13, anonteam_375_12, anonteam_375_11, anonteam_375_10 = anonteam_375_12, anonteam_375_11, anonteam_375_10, anonteam_348_109(anonteam_375_10, anonteam_375_11, anonteam_375_12) + anonteam_348_107(anonteam_375_10) + anonteam_375_25
					end

					arg_375_0[1] = anonteam_375_10 + arg_375_0[1]
					arg_375_0[2] = anonteam_375_11 + arg_375_0[2]
					arg_375_0[3] = anonteam_375_12 + arg_375_0[3]
					arg_375_0[4] = anonteam_375_13 + arg_375_0[4]
					arg_375_0[5] = anonteam_375_14 + arg_375_0[5]
					arg_375_0[6] = anonteam_375_15 + arg_375_0[6]
					arg_375_0[7] = anonteam_375_16 + arg_375_0[7]
					arg_375_0[8] = anonteam_375_17 + arg_375_0[8]
				end
			end

			local anonteam_348_115 = anonteam_348_27.new("int64_t[?]", 16)
			local anonteam_348_116 = anonteam_348_82

			local function anonteam_348_117(arg_376_0, arg_376_1, arg_376_2, arg_376_3, arg_376_4, arg_376_5)
				local anonteam_376_0 = anonteam_348_115[arg_376_0]
				local anonteam_376_1 = anonteam_348_115[arg_376_1]
				local anonteam_376_2 = anonteam_348_115[arg_376_2]
				local anonteam_376_3 = anonteam_348_115[arg_376_3]
				local anonteam_376_4 = anonteam_348_116[arg_376_4] + (anonteam_376_0 + anonteam_376_1)
				local anonteam_376_5 = anonteam_348_112(anonteam_376_3, anonteam_376_4)
				local anonteam_376_6 = anonteam_376_2 + anonteam_376_5
				local anonteam_376_7 = anonteam_348_110(anonteam_376_1, anonteam_376_6, 24)
				local anonteam_376_8 = anonteam_348_116[arg_376_5] + (anonteam_376_4 + anonteam_376_7)
				local anonteam_376_9 = anonteam_348_110(anonteam_376_5, anonteam_376_8, 16)
				local anonteam_376_10 = anonteam_376_6 + anonteam_376_9
				local anonteam_376_11 = anonteam_348_111(anonteam_376_7, anonteam_376_10)

				anonteam_348_115[arg_376_0], anonteam_348_115[arg_376_1], anonteam_348_115[arg_376_2], anonteam_348_115[arg_376_3] = anonteam_376_8, anonteam_376_11, anonteam_376_10, anonteam_376_9
			end

			local function anonteam_348_118(arg_377_0, arg_377_1, arg_377_2, arg_377_3, arg_377_4, arg_377_5, arg_377_6, arg_377_7)
				local anonteam_377_0 = arg_377_0[1]
				local anonteam_377_1 = arg_377_0[2]
				local anonteam_377_2 = arg_377_0[3]
				local anonteam_377_3 = arg_377_0[4]
				local anonteam_377_4 = arg_377_0[5]
				local anonteam_377_5 = arg_377_0[6]
				local anonteam_377_6 = arg_377_0[7]
				local anonteam_377_7 = arg_377_0[8]

				for iter_377_0 = arg_377_3, arg_377_3 + arg_377_4 - 1, 128 do
					if arg_377_2 then
						for iter_377_1 = 1, 16 do
							iter_377_0 = iter_377_0 + 8

							local anonteam_377_8, anonteam_377_9, anonteam_377_10, anonteam_377_11, anonteam_377_12, anonteam_377_13, anonteam_377_14, anonteam_377_15 = anonteam_348_3(arg_377_2, iter_377_0 - 7, iter_377_0)

							anonteam_348_116[iter_377_1] = anonteam_348_113(anonteam_348_36(anonteam_348_38(anonteam_377_15, 24), anonteam_348_38(anonteam_377_14, 16), anonteam_348_38(anonteam_377_13, 8), anonteam_377_12) * anonteam_348_83(4294967296), anonteam_348_85(anonteam_348_84(anonteam_348_36(anonteam_348_38(anonteam_377_11, 24), anonteam_348_38(anonteam_377_10, 16), anonteam_348_38(anonteam_377_9, 8), anonteam_377_8))))
						end
					end

					anonteam_348_115[0], anonteam_348_115[1], anonteam_348_115[2], anonteam_348_115[3], anonteam_348_115[4], anonteam_348_115[5], anonteam_348_115[6], anonteam_348_115[7] = anonteam_377_0, anonteam_377_1, anonteam_377_2, anonteam_377_3, anonteam_377_4, anonteam_377_5, anonteam_377_6, anonteam_377_7
					anonteam_348_115[8], anonteam_348_115[9], anonteam_348_115[10], anonteam_348_115[11], anonteam_348_115[13], anonteam_348_115[14], anonteam_348_115[15] = anonteam_348_58[1], anonteam_348_58[2], anonteam_348_58[3], anonteam_348_58[4], anonteam_348_58[6], anonteam_348_58[7], anonteam_348_58[8]
					arg_377_5 = arg_377_5 + (arg_377_6 or 128)
					anonteam_348_115[12] = anonteam_348_113(anonteam_348_58[5], arg_377_5)

					if arg_377_6 then
						anonteam_348_115[14] = -1 - anonteam_348_115[14]
					end

					if arg_377_7 then
						anonteam_348_115[15] = -1 - anonteam_348_115[15]
					end

					for iter_377_2 = 1, 12 do
						local anonteam_377_16 = anonteam_348_77[iter_377_2]

						anonteam_348_117(0, 4, 8, 12, anonteam_377_16[1], anonteam_377_16[2])
						anonteam_348_117(1, 5, 9, 13, anonteam_377_16[3], anonteam_377_16[4])
						anonteam_348_117(2, 6, 10, 14, anonteam_377_16[5], anonteam_377_16[6])
						anonteam_348_117(3, 7, 11, 15, anonteam_377_16[7], anonteam_377_16[8])
						anonteam_348_117(0, 5, 10, 15, anonteam_377_16[9], anonteam_377_16[10])
						anonteam_348_117(1, 6, 11, 12, anonteam_377_16[11], anonteam_377_16[12])
						anonteam_348_117(2, 7, 8, 13, anonteam_377_16[13], anonteam_377_16[14])
						anonteam_348_117(3, 4, 9, 14, anonteam_377_16[15], anonteam_377_16[16])
					end

					anonteam_377_0 = anonteam_348_114(anonteam_377_0, anonteam_348_115[0], anonteam_348_115[8])
					anonteam_377_1 = anonteam_348_114(anonteam_377_1, anonteam_348_115[1], anonteam_348_115[9])
					anonteam_377_2 = anonteam_348_114(anonteam_377_2, anonteam_348_115[2], anonteam_348_115[10])
					anonteam_377_3 = anonteam_348_114(anonteam_377_3, anonteam_348_115[3], anonteam_348_115[11])
					anonteam_377_4 = anonteam_348_114(anonteam_377_4, anonteam_348_115[4], anonteam_348_115[12])
					anonteam_377_5 = anonteam_348_114(anonteam_377_5, anonteam_348_115[5], anonteam_348_115[13])
					anonteam_377_6 = anonteam_348_114(anonteam_377_6, anonteam_348_115[6], anonteam_348_115[14])
					anonteam_377_7 = anonteam_348_114(anonteam_377_7, anonteam_348_115[7], anonteam_348_115[15])
				end

				arg_377_0[1], arg_377_0[2], arg_377_0[3], arg_377_0[4], arg_377_0[5], arg_377_0[6], arg_377_0[7], arg_377_0[8] = anonteam_377_0, anonteam_377_1, anonteam_377_2, anonteam_377_3, anonteam_377_4, anonteam_377_5, anonteam_377_6, anonteam_377_7

				return arg_377_5
			end
		end

		local function anonteam_348_119(arg_378_0, arg_378_1, arg_378_2, arg_378_3)
			local anonteam_378_0 = anonteam_348_80
			local anonteam_378_1 = anonteam_348_65

			for iter_378_0 = arg_378_2, arg_378_2 + arg_378_3 - 1, 64 do
				for iter_378_1 = 0, 15 do
					iter_378_0 = iter_378_0 + 4

					local anonteam_378_2, anonteam_378_3, anonteam_378_4, anonteam_378_5 = anonteam_348_3(arg_378_1, iter_378_0 - 3, iter_378_0)

					anonteam_378_0[iter_378_1] = anonteam_348_36(anonteam_348_38(anonteam_378_5, 24), anonteam_348_38(anonteam_378_4, 16), anonteam_348_38(anonteam_378_3, 8), anonteam_378_2)
				end

				local anonteam_378_6 = arg_378_0[1]
				local anonteam_378_7 = arg_378_0[2]
				local anonteam_378_8 = arg_378_0[3]
				local anonteam_378_9 = arg_378_0[4]

				for iter_378_2 = 0, 15, 4 do
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_9, anonteam_348_35(anonteam_378_7, anonteam_348_37(anonteam_378_8, anonteam_378_9))) + (anonteam_378_1[iter_378_2 + 1] + anonteam_378_0[iter_378_2] + anonteam_378_6), 7) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_9, anonteam_348_35(anonteam_378_7, anonteam_348_37(anonteam_378_8, anonteam_378_9))) + (anonteam_378_1[iter_378_2 + 2] + anonteam_378_0[iter_378_2 + 1] + anonteam_378_6), 12) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_9, anonteam_348_35(anonteam_378_7, anonteam_348_37(anonteam_378_8, anonteam_378_9))) + (anonteam_378_1[iter_378_2 + 3] + anonteam_378_0[iter_378_2 + 2] + anonteam_378_6), 17) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_9, anonteam_348_35(anonteam_378_7, anonteam_348_37(anonteam_378_8, anonteam_378_9))) + (anonteam_378_1[iter_378_2 + 4] + anonteam_378_0[iter_378_2 + 3] + anonteam_378_6), 22) + anonteam_378_7)
				end

				for iter_378_3 = 16, 31, 4 do
					local anonteam_378_10 = 5 * iter_378_3

					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_35(anonteam_378_9, anonteam_348_37(anonteam_378_7, anonteam_378_8))) + (anonteam_378_1[iter_378_3 + 1] + anonteam_378_0[anonteam_348_35(anonteam_378_10 + 1, 15)] + anonteam_378_6), 5) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_35(anonteam_378_9, anonteam_348_37(anonteam_378_7, anonteam_378_8))) + (anonteam_378_1[iter_378_3 + 2] + anonteam_378_0[anonteam_348_35(anonteam_378_10 + 6, 15)] + anonteam_378_6), 9) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_35(anonteam_378_9, anonteam_348_37(anonteam_378_7, anonteam_378_8))) + (anonteam_378_1[iter_378_3 + 3] + anonteam_378_0[anonteam_348_35(anonteam_378_10 - 5, 15)] + anonteam_378_6), 14) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_35(anonteam_378_9, anonteam_348_37(anonteam_378_7, anonteam_378_8))) + (anonteam_378_1[iter_378_3 + 4] + anonteam_378_0[anonteam_348_35(anonteam_378_10, 15)] + anonteam_378_6), 20) + anonteam_378_7)
				end

				for iter_378_4 = 32, 47, 4 do
					local anonteam_378_11 = 3 * iter_378_4

					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_7, anonteam_378_8, anonteam_378_9) + (anonteam_378_1[iter_378_4 + 1] + anonteam_378_0[anonteam_348_35(anonteam_378_11 + 5, 15)] + anonteam_378_6), 4) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_7, anonteam_378_8, anonteam_378_9) + (anonteam_378_1[iter_378_4 + 2] + anonteam_378_0[anonteam_348_35(anonteam_378_11 + 8, 15)] + anonteam_378_6), 11) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_7, anonteam_378_8, anonteam_378_9) + (anonteam_378_1[iter_378_4 + 3] + anonteam_378_0[anonteam_348_35(anonteam_378_11 - 5, 15)] + anonteam_378_6), 16) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_7, anonteam_378_8, anonteam_378_9) + (anonteam_378_1[iter_378_4 + 4] + anonteam_378_0[anonteam_348_35(anonteam_378_11 - 2, 15)] + anonteam_378_6), 23) + anonteam_378_7)
				end

				for iter_378_5 = 48, 63, 4 do
					local anonteam_378_12 = 7 * iter_378_5

					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_36(anonteam_378_7, anonteam_348_42(anonteam_378_9))) + (anonteam_378_1[iter_378_5 + 1] + anonteam_378_0[anonteam_348_35(anonteam_378_12, 15)] + anonteam_378_6), 6) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_36(anonteam_378_7, anonteam_348_42(anonteam_378_9))) + (anonteam_378_1[iter_378_5 + 2] + anonteam_378_0[anonteam_348_35(anonteam_378_12 + 7, 15)] + anonteam_378_6), 10) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_36(anonteam_378_7, anonteam_348_42(anonteam_378_9))) + (anonteam_378_1[iter_378_5 + 3] + anonteam_378_0[anonteam_348_35(anonteam_378_12 - 2, 15)] + anonteam_378_6), 15) + anonteam_378_7)
					anonteam_378_6, anonteam_378_9, anonteam_378_8, anonteam_378_7 = anonteam_378_9, anonteam_378_8, anonteam_378_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_378_8, anonteam_348_36(anonteam_378_7, anonteam_348_42(anonteam_378_9))) + (anonteam_378_1[iter_378_5 + 4] + anonteam_378_0[anonteam_348_35(anonteam_378_12 + 5, 15)] + anonteam_378_6), 21) + anonteam_378_7)
				end

				arg_378_0[1], arg_378_0[2], arg_378_0[3], arg_378_0[4] = anonteam_348_43(anonteam_378_6 + arg_378_0[1]), anonteam_348_43(anonteam_378_7 + arg_378_0[2]), anonteam_348_43(anonteam_378_8 + arg_378_0[3]), anonteam_348_43(anonteam_378_9 + arg_378_0[4])
			end
		end

		local function anonteam_348_120(arg_379_0, arg_379_1, arg_379_2, arg_379_3)
			local anonteam_379_0 = anonteam_348_80

			for iter_379_0 = arg_379_2, arg_379_2 + arg_379_3 - 1, 64 do
				for iter_379_1 = 0, 15 do
					iter_379_0 = iter_379_0 + 4

					local anonteam_379_1, anonteam_379_2, anonteam_379_3, anonteam_379_4 = anonteam_348_3(arg_379_1, iter_379_0 - 3, iter_379_0)

					anonteam_379_0[iter_379_1] = anonteam_348_36(anonteam_348_38(anonteam_379_1, 24), anonteam_348_38(anonteam_379_2, 16), anonteam_348_38(anonteam_379_3, 8), anonteam_379_4)
				end

				for iter_379_2 = 16, 79 do
					anonteam_379_0[iter_379_2] = anonteam_348_40(anonteam_348_37(anonteam_379_0[iter_379_2 - 3], anonteam_379_0[iter_379_2 - 8], anonteam_379_0[iter_379_2 - 14], anonteam_379_0[iter_379_2 - 16]), 1)
				end

				local anonteam_379_5 = arg_379_0[1]
				local anonteam_379_6 = arg_379_0[2]
				local anonteam_379_7 = arg_379_0[3]
				local anonteam_379_8 = arg_379_0[4]
				local anonteam_379_9 = arg_379_0[5]

				for iter_379_3 = 0, 19, 5 do
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_8, anonteam_348_35(anonteam_379_6, anonteam_348_37(anonteam_379_8, anonteam_379_7))) + (anonteam_379_0[iter_379_3] + 1518500249 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_8, anonteam_348_35(anonteam_379_6, anonteam_348_37(anonteam_379_8, anonteam_379_7))) + (anonteam_379_0[iter_379_3 + 1] + 1518500249 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_8, anonteam_348_35(anonteam_379_6, anonteam_348_37(anonteam_379_8, anonteam_379_7))) + (anonteam_379_0[iter_379_3 + 2] + 1518500249 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_8, anonteam_348_35(anonteam_379_6, anonteam_348_37(anonteam_379_8, anonteam_379_7))) + (anonteam_379_0[iter_379_3 + 3] + 1518500249 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_8, anonteam_348_35(anonteam_379_6, anonteam_348_37(anonteam_379_8, anonteam_379_7))) + (anonteam_379_0[iter_379_3 + 4] + 1518500249 + anonteam_379_9))
				end

				for iter_379_4 = 20, 39, 5 do
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_4] + 1859775393 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_4 + 1] + 1859775393 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_4 + 2] + 1859775393 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_4 + 3] + 1859775393 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_4 + 4] + 1859775393 + anonteam_379_9))
				end

				for iter_379_5 = 40, 59, 5 do
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_379_8, anonteam_348_37(anonteam_379_6, anonteam_379_7)), anonteam_348_35(anonteam_379_6, anonteam_379_7)) + (anonteam_379_0[iter_379_5] + 2400959708 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_379_8, anonteam_348_37(anonteam_379_6, anonteam_379_7)), anonteam_348_35(anonteam_379_6, anonteam_379_7)) + (anonteam_379_0[iter_379_5 + 1] + 2400959708 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_379_8, anonteam_348_37(anonteam_379_6, anonteam_379_7)), anonteam_348_35(anonteam_379_6, anonteam_379_7)) + (anonteam_379_0[iter_379_5 + 2] + 2400959708 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_379_8, anonteam_348_37(anonteam_379_6, anonteam_379_7)), anonteam_348_35(anonteam_379_6, anonteam_379_7)) + (anonteam_379_0[iter_379_5 + 3] + 2400959708 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_379_8, anonteam_348_37(anonteam_379_6, anonteam_379_7)), anonteam_348_35(anonteam_379_6, anonteam_379_7)) + (anonteam_379_0[iter_379_5 + 4] + 2400959708 + anonteam_379_9))
				end

				for iter_379_6 = 60, 79, 5 do
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_6] + 3395469782 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_6 + 1] + 3395469782 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_6 + 2] + 3395469782 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_6 + 3] + 3395469782 + anonteam_379_9))
					anonteam_379_9, anonteam_379_8, anonteam_379_7, anonteam_379_6, anonteam_379_5 = anonteam_379_8, anonteam_379_7, anonteam_348_41(anonteam_379_6, 2), anonteam_379_5, anonteam_348_43(anonteam_348_40(anonteam_379_5, 5) + anonteam_348_37(anonteam_379_6, anonteam_379_7, anonteam_379_8) + (anonteam_379_0[iter_379_6 + 4] + 3395469782 + anonteam_379_9))
				end

				arg_379_0[1], arg_379_0[2], arg_379_0[3], arg_379_0[4], arg_379_0[5] = anonteam_348_43(anonteam_379_5 + arg_379_0[1]), anonteam_348_43(anonteam_379_6 + arg_379_0[2]), anonteam_348_43(anonteam_379_7 + arg_379_0[3]), anonteam_348_43(anonteam_379_8 + arg_379_0[4]), anonteam_348_43(anonteam_379_9 + arg_379_0[5])
			end
		end
	end

	if anonteam_348_34 == "FFI" and not anonteam_348_25 or anonteam_348_34 == "LJ" then
		if anonteam_348_34 == "FFI" then
			local anonteam_348_121 = anonteam_348_27.typeof("int32_t[?]")

			local function anonteam_348_122()
				return anonteam_348_121(31)
			end
		end

		local function anonteam_348_123(arg_381_0, arg_381_1, arg_381_2, arg_381_3, arg_381_4, arg_381_5)
			local anonteam_381_0 = anonteam_348_60
			local anonteam_381_1 = anonteam_348_61
			local anonteam_381_2 = anonteam_348_39(arg_381_5, 3)

			for iter_381_0 = arg_381_3, arg_381_3 + arg_381_4 - 1, arg_381_5 do
				for iter_381_1 = 1, anonteam_381_2 do
					local anonteam_381_3, anonteam_381_4, anonteam_381_5, anonteam_381_6 = anonteam_348_3(arg_381_2, iter_381_0 + 1, iter_381_0 + 4)

					arg_381_0[iter_381_1] = anonteam_348_37(arg_381_0[iter_381_1], anonteam_348_36(anonteam_348_38(anonteam_381_6, 24), anonteam_348_38(anonteam_381_5, 16), anonteam_348_38(anonteam_381_4, 8), anonteam_381_3))
					iter_381_0 = iter_381_0 + 8

					local anonteam_381_7, anonteam_381_8, anonteam_381_9, anonteam_381_10 = anonteam_348_3(arg_381_2, iter_381_0 - 3, iter_381_0)

					arg_381_1[iter_381_1] = anonteam_348_37(arg_381_1[iter_381_1], anonteam_348_36(anonteam_348_38(anonteam_381_10, 24), anonteam_348_38(anonteam_381_9, 16), anonteam_348_38(anonteam_381_8, 8), anonteam_381_7))
				end

				for iter_381_2 = 1, 24 do
					for iter_381_3 = 1, 5 do
						arg_381_0[25 + iter_381_3] = anonteam_348_37(arg_381_0[iter_381_3], arg_381_0[iter_381_3 + 5], arg_381_0[iter_381_3 + 10], arg_381_0[iter_381_3 + 15], arg_381_0[iter_381_3 + 20])
					end

					for iter_381_4 = 1, 5 do
						arg_381_1[25 + iter_381_4] = anonteam_348_37(arg_381_1[iter_381_4], arg_381_1[iter_381_4 + 5], arg_381_1[iter_381_4 + 10], arg_381_1[iter_381_4 + 15], arg_381_1[iter_381_4 + 20])
					end

					local anonteam_381_11 = anonteam_348_37(arg_381_0[26], anonteam_348_38(arg_381_0[28], 1), anonteam_348_39(arg_381_1[28], 31))
					local anonteam_381_12 = anonteam_348_37(arg_381_1[26], anonteam_348_38(arg_381_1[28], 1), anonteam_348_39(arg_381_0[28], 31))

					arg_381_0[2], arg_381_1[2], arg_381_0[7], arg_381_1[7], arg_381_0[12], arg_381_1[12], arg_381_0[17], arg_381_1[17] = anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_11, arg_381_0[7]), 20), anonteam_348_38(anonteam_348_37(anonteam_381_12, arg_381_1[7]), 12)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_12, arg_381_1[7]), 20), anonteam_348_38(anonteam_348_37(anonteam_381_11, arg_381_0[7]), 12)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_11, arg_381_0[17]), 19), anonteam_348_38(anonteam_348_37(anonteam_381_12, arg_381_1[17]), 13)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_12, arg_381_1[17]), 19), anonteam_348_38(anonteam_348_37(anonteam_381_11, arg_381_0[17]), 13)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_11, arg_381_0[2]), 1), anonteam_348_39(anonteam_348_37(anonteam_381_12, arg_381_1[2]), 31)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_12, arg_381_1[2]), 1), anonteam_348_39(anonteam_348_37(anonteam_381_11, arg_381_0[2]), 31)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_11, arg_381_0[12]), 10), anonteam_348_39(anonteam_348_37(anonteam_381_12, arg_381_1[12]), 22)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_12, arg_381_1[12]), 10), anonteam_348_39(anonteam_348_37(anonteam_381_11, arg_381_0[12]), 22))

					local anonteam_381_13 = anonteam_348_37(anonteam_381_11, arg_381_0[22])
					local anonteam_381_14 = anonteam_348_37(anonteam_381_12, arg_381_1[22])

					arg_381_0[22], arg_381_1[22] = anonteam_348_37(anonteam_348_38(anonteam_381_13, 2), anonteam_348_39(anonteam_381_14, 30)), anonteam_348_37(anonteam_348_38(anonteam_381_14, 2), anonteam_348_39(anonteam_381_13, 30))

					local anonteam_381_15 = anonteam_348_37(arg_381_0[27], anonteam_348_38(arg_381_0[29], 1), anonteam_348_39(arg_381_1[29], 31))
					local anonteam_381_16 = anonteam_348_37(arg_381_1[27], anonteam_348_38(arg_381_1[29], 1), anonteam_348_39(arg_381_0[29], 31))

					arg_381_0[3], arg_381_1[3], arg_381_0[8], arg_381_1[8], arg_381_0[13], arg_381_1[13], arg_381_0[23], arg_381_1[23] = anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_15, arg_381_0[13]), 21), anonteam_348_38(anonteam_348_37(anonteam_381_16, arg_381_1[13]), 11)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_16, arg_381_1[13]), 21), anonteam_348_38(anonteam_348_37(anonteam_381_15, arg_381_0[13]), 11)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_15, arg_381_0[23]), 3), anonteam_348_38(anonteam_348_37(anonteam_381_16, arg_381_1[23]), 29)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_16, arg_381_1[23]), 3), anonteam_348_38(anonteam_348_37(anonteam_381_15, arg_381_0[23]), 29)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_15, arg_381_0[8]), 6), anonteam_348_39(anonteam_348_37(anonteam_381_16, arg_381_1[8]), 26)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_16, arg_381_1[8]), 6), anonteam_348_39(anonteam_348_37(anonteam_381_15, arg_381_0[8]), 26)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_15, arg_381_0[3]), 2), anonteam_348_38(anonteam_348_37(anonteam_381_16, arg_381_1[3]), 30)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_16, arg_381_1[3]), 2), anonteam_348_38(anonteam_348_37(anonteam_381_15, arg_381_0[3]), 30))

					local anonteam_381_17, anonteam_381_18 = anonteam_348_37(anonteam_381_15, arg_381_0[18]), anonteam_348_37(anonteam_381_16, arg_381_1[18])

					arg_381_0[18], arg_381_1[18] = anonteam_348_37(anonteam_348_38(anonteam_381_17, 15), anonteam_348_39(anonteam_381_18, 17)), anonteam_348_37(anonteam_348_38(anonteam_381_18, 15), anonteam_348_39(anonteam_381_17, 17))

					local anonteam_381_19 = anonteam_348_37(arg_381_0[28], anonteam_348_38(arg_381_0[30], 1), anonteam_348_39(arg_381_1[30], 31))
					local anonteam_381_20 = anonteam_348_37(arg_381_1[28], anonteam_348_38(arg_381_1[30], 1), anonteam_348_39(arg_381_0[30], 31))

					arg_381_0[4], arg_381_1[4], arg_381_0[9], arg_381_1[9], arg_381_0[19], arg_381_1[19], arg_381_0[24], arg_381_1[24] = anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_19, arg_381_0[19]), 21), anonteam_348_39(anonteam_348_37(anonteam_381_20, arg_381_1[19]), 11)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_20, arg_381_1[19]), 21), anonteam_348_39(anonteam_348_37(anonteam_381_19, arg_381_0[19]), 11)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_19, arg_381_0[4]), 28), anonteam_348_39(anonteam_348_37(anonteam_381_20, arg_381_1[4]), 4)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_20, arg_381_1[4]), 28), anonteam_348_39(anonteam_348_37(anonteam_381_19, arg_381_0[4]), 4)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_19, arg_381_0[24]), 8), anonteam_348_38(anonteam_348_37(anonteam_381_20, arg_381_1[24]), 24)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_20, arg_381_1[24]), 8), anonteam_348_38(anonteam_348_37(anonteam_381_19, arg_381_0[24]), 24)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_19, arg_381_0[9]), 9), anonteam_348_38(anonteam_348_37(anonteam_381_20, arg_381_1[9]), 23)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_20, arg_381_1[9]), 9), anonteam_348_38(anonteam_348_37(anonteam_381_19, arg_381_0[9]), 23))

					local anonteam_381_21, anonteam_381_22 = anonteam_348_37(anonteam_381_19, arg_381_0[14]), anonteam_348_37(anonteam_381_20, arg_381_1[14])

					arg_381_0[14], arg_381_1[14] = anonteam_348_37(anonteam_348_38(anonteam_381_21, 25), anonteam_348_39(anonteam_381_22, 7)), anonteam_348_37(anonteam_348_38(anonteam_381_22, 25), anonteam_348_39(anonteam_381_21, 7))

					local anonteam_381_23 = anonteam_348_37(arg_381_0[29], anonteam_348_38(arg_381_0[26], 1), anonteam_348_39(arg_381_1[26], 31))
					local anonteam_381_24 = anonteam_348_37(arg_381_1[29], anonteam_348_38(arg_381_1[26], 1), anonteam_348_39(arg_381_0[26], 31))

					arg_381_0[5], arg_381_1[5], arg_381_0[15], arg_381_1[15], arg_381_0[20], arg_381_1[20], arg_381_0[25], arg_381_1[25] = anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_23, arg_381_0[25]), 14), anonteam_348_39(anonteam_348_37(anonteam_381_24, arg_381_1[25]), 18)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_24, arg_381_1[25]), 14), anonteam_348_39(anonteam_348_37(anonteam_381_23, arg_381_0[25]), 18)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_23, arg_381_0[20]), 8), anonteam_348_39(anonteam_348_37(anonteam_381_24, arg_381_1[20]), 24)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_24, arg_381_1[20]), 8), anonteam_348_39(anonteam_348_37(anonteam_381_23, arg_381_0[20]), 24)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_23, arg_381_0[5]), 27), anonteam_348_39(anonteam_348_37(anonteam_381_24, arg_381_1[5]), 5)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_24, arg_381_1[5]), 27), anonteam_348_39(anonteam_348_37(anonteam_381_23, arg_381_0[5]), 5)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_23, arg_381_0[15]), 25), anonteam_348_38(anonteam_348_37(anonteam_381_24, arg_381_1[15]), 7)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_24, arg_381_1[15]), 25), anonteam_348_38(anonteam_348_37(anonteam_381_23, arg_381_0[15]), 7))

					local anonteam_381_25, anonteam_381_26 = anonteam_348_37(anonteam_381_23, arg_381_0[10]), anonteam_348_37(anonteam_381_24, arg_381_1[10])

					arg_381_0[10], arg_381_1[10] = anonteam_348_37(anonteam_348_38(anonteam_381_25, 20), anonteam_348_39(anonteam_381_26, 12)), anonteam_348_37(anonteam_348_38(anonteam_381_26, 20), anonteam_348_39(anonteam_381_25, 12))

					local anonteam_381_27 = anonteam_348_37(arg_381_0[30], anonteam_348_38(arg_381_0[27], 1), anonteam_348_39(arg_381_1[27], 31))
					local anonteam_381_28 = anonteam_348_37(arg_381_1[30], anonteam_348_38(arg_381_1[27], 1), anonteam_348_39(arg_381_0[27], 31))

					arg_381_0[6], arg_381_1[6], arg_381_0[11], arg_381_1[11], arg_381_0[16], arg_381_1[16], arg_381_0[21], arg_381_1[21] = anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_27, arg_381_0[11]), 3), anonteam_348_39(anonteam_348_37(anonteam_381_28, arg_381_1[11]), 29)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_28, arg_381_1[11]), 3), anonteam_348_39(anonteam_348_37(anonteam_381_27, arg_381_0[11]), 29)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_27, arg_381_0[21]), 18), anonteam_348_39(anonteam_348_37(anonteam_381_28, arg_381_1[21]), 14)), anonteam_348_37(anonteam_348_38(anonteam_348_37(anonteam_381_28, arg_381_1[21]), 18), anonteam_348_39(anonteam_348_37(anonteam_381_27, arg_381_0[21]), 14)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_27, arg_381_0[6]), 28), anonteam_348_38(anonteam_348_37(anonteam_381_28, arg_381_1[6]), 4)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_28, arg_381_1[6]), 28), anonteam_348_38(anonteam_348_37(anonteam_381_27, arg_381_0[6]), 4)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_27, arg_381_0[16]), 23), anonteam_348_38(anonteam_348_37(anonteam_381_28, arg_381_1[16]), 9)), anonteam_348_37(anonteam_348_39(anonteam_348_37(anonteam_381_28, arg_381_1[16]), 23), anonteam_348_38(anonteam_348_37(anonteam_381_27, arg_381_0[16]), 9))
					arg_381_0[1], arg_381_1[1] = anonteam_348_37(anonteam_381_27, arg_381_0[1]), anonteam_348_37(anonteam_381_28, arg_381_1[1])
					arg_381_0[1], arg_381_0[2], arg_381_0[3], arg_381_0[4], arg_381_0[5] = anonteam_348_37(arg_381_0[1], anonteam_348_35(anonteam_348_42(arg_381_0[2]), arg_381_0[3]), anonteam_381_0[iter_381_2]), anonteam_348_37(arg_381_0[2], anonteam_348_35(anonteam_348_42(arg_381_0[3]), arg_381_0[4])), anonteam_348_37(arg_381_0[3], anonteam_348_35(anonteam_348_42(arg_381_0[4]), arg_381_0[5])), anonteam_348_37(arg_381_0[4], anonteam_348_35(anonteam_348_42(arg_381_0[5]), arg_381_0[1])), anonteam_348_37(arg_381_0[5], anonteam_348_35(anonteam_348_42(arg_381_0[1]), arg_381_0[2]))
					arg_381_0[6], arg_381_0[7], arg_381_0[8], arg_381_0[9], arg_381_0[10] = anonteam_348_37(arg_381_0[9], anonteam_348_35(anonteam_348_42(arg_381_0[10]), arg_381_0[6])), anonteam_348_37(arg_381_0[10], anonteam_348_35(anonteam_348_42(arg_381_0[6]), arg_381_0[7])), anonteam_348_37(arg_381_0[6], anonteam_348_35(anonteam_348_42(arg_381_0[7]), arg_381_0[8])), anonteam_348_37(arg_381_0[7], anonteam_348_35(anonteam_348_42(arg_381_0[8]), arg_381_0[9])), anonteam_348_37(arg_381_0[8], anonteam_348_35(anonteam_348_42(arg_381_0[9]), arg_381_0[10]))
					arg_381_0[11], arg_381_0[12], arg_381_0[13], arg_381_0[14], arg_381_0[15] = anonteam_348_37(arg_381_0[12], anonteam_348_35(anonteam_348_42(arg_381_0[13]), arg_381_0[14])), anonteam_348_37(arg_381_0[13], anonteam_348_35(anonteam_348_42(arg_381_0[14]), arg_381_0[15])), anonteam_348_37(arg_381_0[14], anonteam_348_35(anonteam_348_42(arg_381_0[15]), arg_381_0[11])), anonteam_348_37(arg_381_0[15], anonteam_348_35(anonteam_348_42(arg_381_0[11]), arg_381_0[12])), anonteam_348_37(arg_381_0[11], anonteam_348_35(anonteam_348_42(arg_381_0[12]), arg_381_0[13]))
					arg_381_0[16], arg_381_0[17], arg_381_0[18], arg_381_0[19], arg_381_0[20] = anonteam_348_37(arg_381_0[20], anonteam_348_35(anonteam_348_42(arg_381_0[16]), arg_381_0[17])), anonteam_348_37(arg_381_0[16], anonteam_348_35(anonteam_348_42(arg_381_0[17]), arg_381_0[18])), anonteam_348_37(arg_381_0[17], anonteam_348_35(anonteam_348_42(arg_381_0[18]), arg_381_0[19])), anonteam_348_37(arg_381_0[18], anonteam_348_35(anonteam_348_42(arg_381_0[19]), arg_381_0[20])), anonteam_348_37(arg_381_0[19], anonteam_348_35(anonteam_348_42(arg_381_0[20]), arg_381_0[16]))
					arg_381_0[21], arg_381_0[22], arg_381_0[23], arg_381_0[24], arg_381_0[25] = anonteam_348_37(arg_381_0[23], anonteam_348_35(anonteam_348_42(arg_381_0[24]), arg_381_0[25])), anonteam_348_37(arg_381_0[24], anonteam_348_35(anonteam_348_42(arg_381_0[25]), arg_381_0[21])), anonteam_348_37(arg_381_0[25], anonteam_348_35(anonteam_348_42(arg_381_0[21]), arg_381_0[22])), anonteam_348_37(arg_381_0[21], anonteam_348_35(anonteam_348_42(arg_381_0[22]), arg_381_0[23])), anonteam_348_37(arg_381_0[22], anonteam_348_35(anonteam_348_42(arg_381_0[23]), arg_381_0[24]))
					arg_381_1[1], arg_381_1[2], arg_381_1[3], arg_381_1[4], arg_381_1[5] = anonteam_348_37(arg_381_1[1], anonteam_348_35(anonteam_348_42(arg_381_1[2]), arg_381_1[3]), anonteam_381_1[iter_381_2]), anonteam_348_37(arg_381_1[2], anonteam_348_35(anonteam_348_42(arg_381_1[3]), arg_381_1[4])), anonteam_348_37(arg_381_1[3], anonteam_348_35(anonteam_348_42(arg_381_1[4]), arg_381_1[5])), anonteam_348_37(arg_381_1[4], anonteam_348_35(anonteam_348_42(arg_381_1[5]), arg_381_1[1])), anonteam_348_37(arg_381_1[5], anonteam_348_35(anonteam_348_42(arg_381_1[1]), arg_381_1[2]))
					arg_381_1[6], arg_381_1[7], arg_381_1[8], arg_381_1[9], arg_381_1[10] = anonteam_348_37(arg_381_1[9], anonteam_348_35(anonteam_348_42(arg_381_1[10]), arg_381_1[6])), anonteam_348_37(arg_381_1[10], anonteam_348_35(anonteam_348_42(arg_381_1[6]), arg_381_1[7])), anonteam_348_37(arg_381_1[6], anonteam_348_35(anonteam_348_42(arg_381_1[7]), arg_381_1[8])), anonteam_348_37(arg_381_1[7], anonteam_348_35(anonteam_348_42(arg_381_1[8]), arg_381_1[9])), anonteam_348_37(arg_381_1[8], anonteam_348_35(anonteam_348_42(arg_381_1[9]), arg_381_1[10]))
					arg_381_1[11], arg_381_1[12], arg_381_1[13], arg_381_1[14], arg_381_1[15] = anonteam_348_37(arg_381_1[12], anonteam_348_35(anonteam_348_42(arg_381_1[13]), arg_381_1[14])), anonteam_348_37(arg_381_1[13], anonteam_348_35(anonteam_348_42(arg_381_1[14]), arg_381_1[15])), anonteam_348_37(arg_381_1[14], anonteam_348_35(anonteam_348_42(arg_381_1[15]), arg_381_1[11])), anonteam_348_37(arg_381_1[15], anonteam_348_35(anonteam_348_42(arg_381_1[11]), arg_381_1[12])), anonteam_348_37(arg_381_1[11], anonteam_348_35(anonteam_348_42(arg_381_1[12]), arg_381_1[13]))
					arg_381_1[16], arg_381_1[17], arg_381_1[18], arg_381_1[19], arg_381_1[20] = anonteam_348_37(arg_381_1[20], anonteam_348_35(anonteam_348_42(arg_381_1[16]), arg_381_1[17])), anonteam_348_37(arg_381_1[16], anonteam_348_35(anonteam_348_42(arg_381_1[17]), arg_381_1[18])), anonteam_348_37(arg_381_1[17], anonteam_348_35(anonteam_348_42(arg_381_1[18]), arg_381_1[19])), anonteam_348_37(arg_381_1[18], anonteam_348_35(anonteam_348_42(arg_381_1[19]), arg_381_1[20])), anonteam_348_37(arg_381_1[19], anonteam_348_35(anonteam_348_42(arg_381_1[20]), arg_381_1[16]))
					arg_381_1[21], arg_381_1[22], arg_381_1[23], arg_381_1[24], arg_381_1[25] = anonteam_348_37(arg_381_1[23], anonteam_348_35(anonteam_348_42(arg_381_1[24]), arg_381_1[25])), anonteam_348_37(arg_381_1[24], anonteam_348_35(anonteam_348_42(arg_381_1[25]), arg_381_1[21])), anonteam_348_37(arg_381_1[25], anonteam_348_35(anonteam_348_42(arg_381_1[21]), arg_381_1[22])), anonteam_348_37(arg_381_1[21], anonteam_348_35(anonteam_348_42(arg_381_1[22]), arg_381_1[23])), anonteam_348_37(arg_381_1[22], anonteam_348_35(anonteam_348_42(arg_381_1[23]), arg_381_1[24]))
				end
			end
		end
	end

	if anonteam_348_34 == "LJ" then
		function anonteam_348_48(arg_382_0, arg_382_1, arg_382_2, arg_382_3)
			local anonteam_382_0 = anonteam_348_70
			local anonteam_382_1 = anonteam_348_57

			for iter_382_0 = arg_382_2, arg_382_2 + arg_382_3 - 1, 64 do
				for iter_382_1 = 1, 16 do
					iter_382_0 = iter_382_0 + 4

					local anonteam_382_2, anonteam_382_3, anonteam_382_4, anonteam_382_5 = anonteam_348_3(arg_382_1, iter_382_0 - 3, iter_382_0)

					anonteam_382_0[iter_382_1] = anonteam_348_36(anonteam_348_38(anonteam_382_2, 24), anonteam_348_38(anonteam_382_3, 16), anonteam_348_38(anonteam_382_4, 8), anonteam_382_5)
				end

				for iter_382_2 = 17, 64 do
					local anonteam_382_6 = anonteam_382_0[iter_382_2 - 15]
					local anonteam_382_7 = anonteam_382_0[iter_382_2 - 2]

					anonteam_382_0[iter_382_2] = anonteam_348_43(anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_6, 7), anonteam_348_40(anonteam_382_6, 14), anonteam_348_39(anonteam_382_6, 3)) + anonteam_348_37(anonteam_348_40(anonteam_382_7, 15), anonteam_348_40(anonteam_382_7, 13), anonteam_348_39(anonteam_382_7, 10))) + anonteam_348_43(anonteam_382_0[iter_382_2 - 7] + anonteam_382_0[iter_382_2 - 16]))
				end

				local anonteam_382_8 = arg_382_0[1]
				local anonteam_382_9 = arg_382_0[2]
				local anonteam_382_10 = arg_382_0[3]
				local anonteam_382_11 = arg_382_0[4]
				local anonteam_382_12 = arg_382_0[5]
				local anonteam_382_13 = arg_382_0[6]
				local anonteam_382_14 = arg_382_0[7]
				local anonteam_382_15 = arg_382_0[8]

				for iter_382_3 = 1, 64, 8 do
					local anonteam_382_16 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3] + anonteam_382_0[iter_382_3] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_16)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_16)

					local anonteam_382_17 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 1] + anonteam_382_0[iter_382_3 + 1] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_17)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_17)

					local anonteam_382_18 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 2] + anonteam_382_0[iter_382_3 + 2] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_18)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_18)

					local anonteam_382_19 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 3] + anonteam_382_0[iter_382_3 + 3] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_19)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_19)

					local anonteam_382_20 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 4] + anonteam_382_0[iter_382_3 + 4] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_20)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_20)

					local anonteam_382_21 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 5] + anonteam_382_0[iter_382_3 + 5] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_21)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_21)

					local anonteam_382_22 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 6] + anonteam_382_0[iter_382_3 + 6] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_22)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_22)

					local anonteam_382_23 = anonteam_348_43(anonteam_348_37(anonteam_348_41(anonteam_382_12, 6), anonteam_348_41(anonteam_382_12, 11), anonteam_348_40(anonteam_382_12, 7)) + anonteam_348_37(anonteam_382_14, anonteam_348_35(anonteam_382_12, anonteam_348_37(anonteam_382_13, anonteam_382_14))) + (anonteam_382_1[iter_382_3 + 7] + anonteam_382_0[iter_382_3 + 7] + anonteam_382_15))

					anonteam_382_15, anonteam_382_14, anonteam_382_13, anonteam_382_12 = anonteam_382_14, anonteam_382_13, anonteam_382_12, anonteam_348_43(anonteam_382_11 + anonteam_382_23)
					anonteam_382_11, anonteam_382_10, anonteam_382_9, anonteam_382_8 = anonteam_382_10, anonteam_382_9, anonteam_382_8, anonteam_348_43(anonteam_348_37(anonteam_348_35(anonteam_382_8, anonteam_348_37(anonteam_382_9, anonteam_382_10)), anonteam_348_35(anonteam_382_9, anonteam_382_10)) + anonteam_348_37(anonteam_348_41(anonteam_382_8, 2), anonteam_348_41(anonteam_382_8, 13), anonteam_348_40(anonteam_382_8, 10)) + anonteam_382_23)
				end

				arg_382_0[1], arg_382_0[2], arg_382_0[3], arg_382_0[4] = anonteam_348_43(anonteam_382_8 + arg_382_0[1]), anonteam_348_43(anonteam_382_9 + arg_382_0[2]), anonteam_348_43(anonteam_382_10 + arg_382_0[3]), anonteam_348_43(anonteam_382_11 + arg_382_0[4])
				arg_382_0[5], arg_382_0[6], arg_382_0[7], arg_382_0[8] = anonteam_348_43(anonteam_382_12 + arg_382_0[5]), anonteam_348_43(anonteam_382_13 + arg_382_0[6]), anonteam_348_43(anonteam_382_14 + arg_382_0[7]), anonteam_348_43(anonteam_382_15 + arg_382_0[8])
			end
		end

		local function anonteam_348_124(arg_383_0, arg_383_1, arg_383_2, arg_383_3, arg_383_4, arg_383_5, arg_383_6, arg_383_7)
			local anonteam_383_0 = arg_383_0 % 4294967296 + arg_383_2 % 4294967296 + arg_383_4 % 4294967296 + arg_383_6 % 4294967296
			local anonteam_383_1 = arg_383_1 + arg_383_3 + arg_383_5 + arg_383_7
			local anonteam_383_2 = anonteam_348_43(anonteam_383_0)
			local anonteam_383_3 = anonteam_348_43(anonteam_383_1 + anonteam_348_10(anonteam_383_0 / 4294967296))

			return anonteam_383_2, anonteam_383_3
		end

		if anonteam_348_26 == "x86" then
			function anonteam_348_49(arg_384_0, arg_384_1, arg_384_2, arg_384_3, arg_384_4)
				local anonteam_384_0 = anonteam_348_70
				local anonteam_384_1 = anonteam_348_56
				local anonteam_384_2 = anonteam_348_57

				for iter_384_0 = arg_384_3, arg_384_3 + arg_384_4 - 1, 128 do
					for iter_384_1 = 1, 32 do
						iter_384_0 = iter_384_0 + 4

						local anonteam_384_3, anonteam_384_4, anonteam_384_5, anonteam_384_6 = anonteam_348_3(arg_384_2, iter_384_0 - 3, iter_384_0)

						anonteam_384_0[iter_384_1] = anonteam_348_36(anonteam_348_38(anonteam_384_3, 24), anonteam_348_38(anonteam_384_4, 16), anonteam_348_38(anonteam_384_5, 8), anonteam_384_6)
					end

					for iter_384_2 = 34, 160, 2 do
						local anonteam_384_7 = anonteam_384_0[iter_384_2 - 30]
						local anonteam_384_8 = anonteam_384_0[iter_384_2 - 31]
						local anonteam_384_9 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_7, 1), anonteam_348_38(anonteam_384_8, 31)), anonteam_348_36(anonteam_348_39(anonteam_384_7, 8), anonteam_348_38(anonteam_384_8, 24)), anonteam_348_36(anonteam_348_39(anonteam_384_7, 7), anonteam_348_38(anonteam_384_8, 25)))
						local anonteam_384_10 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_8, 1), anonteam_348_38(anonteam_384_7, 31)), anonteam_348_36(anonteam_348_39(anonteam_384_8, 8), anonteam_348_38(anonteam_384_7, 24)), anonteam_348_39(anonteam_384_8, 7))
						local anonteam_384_11 = anonteam_384_0[iter_384_2 - 4]
						local anonteam_384_12 = anonteam_384_0[iter_384_2 - 5]
						local anonteam_384_13 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_11, 19), anonteam_348_38(anonteam_384_12, 13)), anonteam_348_36(anonteam_348_38(anonteam_384_11, 3), anonteam_348_39(anonteam_384_12, 29)), anonteam_348_36(anonteam_348_39(anonteam_384_11, 6), anonteam_348_38(anonteam_384_12, 26)))
						local anonteam_384_14 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_12, 19), anonteam_348_38(anonteam_384_11, 13)), anonteam_348_36(anonteam_348_38(anonteam_384_12, 3), anonteam_348_39(anonteam_384_11, 29)), anonteam_348_39(anonteam_384_12, 6))

						anonteam_384_0[iter_384_2], anonteam_384_0[iter_384_2 - 1] = anonteam_348_124(anonteam_384_9, anonteam_384_10, anonteam_384_13, anonteam_384_14, anonteam_384_0[iter_384_2 - 14], anonteam_384_0[iter_384_2 - 15], anonteam_384_0[iter_384_2 - 32], anonteam_384_0[iter_384_2 - 33])
					end

					local anonteam_384_15 = arg_384_0[1]
					local anonteam_384_16 = arg_384_0[2]
					local anonteam_384_17 = arg_384_0[3]
					local anonteam_384_18 = arg_384_0[4]
					local anonteam_384_19 = arg_384_0[5]
					local anonteam_384_20 = arg_384_0[6]
					local anonteam_384_21 = arg_384_0[7]
					local anonteam_384_22 = arg_384_0[8]
					local anonteam_384_23 = arg_384_1[1]
					local anonteam_384_24 = arg_384_1[2]
					local anonteam_384_25 = arg_384_1[3]
					local anonteam_384_26 = arg_384_1[4]
					local anonteam_384_27 = arg_384_1[5]
					local anonteam_384_28 = arg_384_1[6]
					local anonteam_384_29 = arg_384_1[7]
					local anonteam_384_30 = arg_384_1[8]
					local anonteam_384_31 = 0

					for iter_384_3 = 1, 80 do
						local anonteam_384_32 = anonteam_348_37(anonteam_384_21, anonteam_348_35(anonteam_384_19, anonteam_348_37(anonteam_384_20, anonteam_384_21)))
						local anonteam_384_33 = anonteam_348_37(anonteam_384_29, anonteam_348_35(anonteam_384_27, anonteam_348_37(anonteam_384_28, anonteam_384_29)))
						local anonteam_384_34 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_19, 14), anonteam_348_38(anonteam_384_27, 18)), anonteam_348_36(anonteam_348_39(anonteam_384_19, 18), anonteam_348_38(anonteam_384_27, 14)), anonteam_348_36(anonteam_348_38(anonteam_384_19, 23), anonteam_348_39(anonteam_384_27, 9)))
						local anonteam_384_35 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_27, 14), anonteam_348_38(anonteam_384_19, 18)), anonteam_348_36(anonteam_348_39(anonteam_384_27, 18), anonteam_348_38(anonteam_384_19, 14)), anonteam_348_36(anonteam_348_38(anonteam_384_27, 23), anonteam_348_39(anonteam_384_19, 9)))
						local anonteam_384_36 = anonteam_384_34 % 4294967296 + anonteam_384_32 % 4294967296 + anonteam_384_22 % 4294967296 + anonteam_384_1[iter_384_3] + anonteam_384_0[2 * iter_384_3] % 4294967296
						local anonteam_384_37 = anonteam_348_43(anonteam_384_36)
						local anonteam_384_38 = anonteam_348_43(anonteam_384_35 + anonteam_384_33 + anonteam_384_30 + anonteam_384_2[iter_384_3] + anonteam_384_0[2 * iter_384_3 - 1] + anonteam_348_10(anonteam_384_36 / 4294967296))

						anonteam_384_31 = anonteam_384_31 + anonteam_384_31
						anonteam_384_22, anonteam_384_30, anonteam_384_21, anonteam_384_29, anonteam_384_20, anonteam_384_28 = anonteam_348_36(anonteam_384_31, anonteam_384_21), anonteam_348_36(anonteam_384_31, anonteam_384_29), anonteam_348_36(anonteam_384_31, anonteam_384_20), anonteam_348_36(anonteam_384_31, anonteam_384_28), anonteam_348_36(anonteam_384_31, anonteam_384_19), anonteam_348_36(anonteam_384_31, anonteam_384_27)

						local anonteam_384_39 = anonteam_384_37 % 4294967296 + anonteam_384_18 % 4294967296

						anonteam_384_19, anonteam_384_27 = anonteam_348_43(anonteam_384_39), anonteam_348_43(anonteam_384_38 + anonteam_384_26 + anonteam_348_10(anonteam_384_39 / 4294967296))
						anonteam_384_18, anonteam_384_26, anonteam_384_17, anonteam_384_25, anonteam_384_16, anonteam_384_24 = anonteam_348_36(anonteam_384_31, anonteam_384_17), anonteam_348_36(anonteam_384_31, anonteam_384_25), anonteam_348_36(anonteam_384_31, anonteam_384_16), anonteam_348_36(anonteam_384_31, anonteam_384_24), anonteam_348_36(anonteam_384_31, anonteam_384_15), anonteam_348_36(anonteam_384_31, anonteam_384_23)

						local anonteam_384_40 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_16, 28), anonteam_348_38(anonteam_384_24, 4)), anonteam_348_36(anonteam_348_38(anonteam_384_16, 30), anonteam_348_39(anonteam_384_24, 2)), anonteam_348_36(anonteam_348_38(anonteam_384_16, 25), anonteam_348_39(anonteam_384_24, 7)))
						local anonteam_384_41 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_384_24, 28), anonteam_348_38(anonteam_384_16, 4)), anonteam_348_36(anonteam_348_38(anonteam_384_24, 30), anonteam_348_39(anonteam_384_16, 2)), anonteam_348_36(anonteam_348_38(anonteam_384_24, 25), anonteam_348_39(anonteam_384_16, 7)))
						local anonteam_384_42 = anonteam_348_36(anonteam_348_35(anonteam_384_18, anonteam_384_17), anonteam_348_35(anonteam_384_16, anonteam_348_37(anonteam_384_18, anonteam_384_17)))
						local anonteam_384_43 = anonteam_348_36(anonteam_348_35(anonteam_384_26, anonteam_384_25), anonteam_348_35(anonteam_384_24, anonteam_348_37(anonteam_384_26, anonteam_384_25)))
						local anonteam_384_44 = anonteam_384_37 % 4294967296 + anonteam_384_42 % 4294967296 + anonteam_384_40 % 4294967296

						anonteam_384_15, anonteam_384_23 = anonteam_348_43(anonteam_384_44), anonteam_348_43(anonteam_384_38 + anonteam_384_43 + anonteam_384_41 + anonteam_348_10(anonteam_384_44 / 4294967296))
					end

					arg_384_0[1], arg_384_1[1] = anonteam_348_124(arg_384_0[1], arg_384_1[1], anonteam_384_15, anonteam_384_23, 0, 0, 0, 0)
					arg_384_0[2], arg_384_1[2] = anonteam_348_124(arg_384_0[2], arg_384_1[2], anonteam_384_16, anonteam_384_24, 0, 0, 0, 0)
					arg_384_0[3], arg_384_1[3] = anonteam_348_124(arg_384_0[3], arg_384_1[3], anonteam_384_17, anonteam_384_25, 0, 0, 0, 0)
					arg_384_0[4], arg_384_1[4] = anonteam_348_124(arg_384_0[4], arg_384_1[4], anonteam_384_18, anonteam_384_26, 0, 0, 0, 0)
					arg_384_0[5], arg_384_1[5] = anonteam_348_124(arg_384_0[5], arg_384_1[5], anonteam_384_19, anonteam_384_27, 0, 0, 0, 0)
					arg_384_0[6], arg_384_1[6] = anonteam_348_124(arg_384_0[6], arg_384_1[6], anonteam_384_20, anonteam_384_28, 0, 0, 0, 0)
					arg_384_0[7], arg_384_1[7] = anonteam_348_124(arg_384_0[7], arg_384_1[7], anonteam_384_21, anonteam_384_29, 0, 0, 0, 0)
					arg_384_0[8], arg_384_1[8] = anonteam_348_124(arg_384_0[8], arg_384_1[8], anonteam_384_22, anonteam_384_30, 0, 0, 0, 0)
				end
			end
		else
			function anonteam_348_49(arg_385_0, arg_385_1, arg_385_2, arg_385_3, arg_385_4)
				local anonteam_385_0 = anonteam_348_70
				local anonteam_385_1 = anonteam_348_56
				local anonteam_385_2 = anonteam_348_57

				for iter_385_0 = arg_385_3, arg_385_3 + arg_385_4 - 1, 128 do
					for iter_385_1 = 1, 32 do
						iter_385_0 = iter_385_0 + 4

						local anonteam_385_3, anonteam_385_4, anonteam_385_5, anonteam_385_6 = anonteam_348_3(arg_385_2, iter_385_0 - 3, iter_385_0)

						anonteam_385_0[iter_385_1] = anonteam_348_36(anonteam_348_38(anonteam_385_3, 24), anonteam_348_38(anonteam_385_4, 16), anonteam_348_38(anonteam_385_5, 8), anonteam_385_6)
					end

					for iter_385_2 = 34, 160, 2 do
						local anonteam_385_7 = anonteam_385_0[iter_385_2 - 30]
						local anonteam_385_8 = anonteam_385_0[iter_385_2 - 31]
						local anonteam_385_9 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_7, 1), anonteam_348_38(anonteam_385_8, 31)), anonteam_348_36(anonteam_348_39(anonteam_385_7, 8), anonteam_348_38(anonteam_385_8, 24)), anonteam_348_36(anonteam_348_39(anonteam_385_7, 7), anonteam_348_38(anonteam_385_8, 25)))
						local anonteam_385_10 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_8, 1), anonteam_348_38(anonteam_385_7, 31)), anonteam_348_36(anonteam_348_39(anonteam_385_8, 8), anonteam_348_38(anonteam_385_7, 24)), anonteam_348_39(anonteam_385_8, 7))
						local anonteam_385_11 = anonteam_385_0[iter_385_2 - 4]
						local anonteam_385_12 = anonteam_385_0[iter_385_2 - 5]
						local anonteam_385_13 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_11, 19), anonteam_348_38(anonteam_385_12, 13)), anonteam_348_36(anonteam_348_38(anonteam_385_11, 3), anonteam_348_39(anonteam_385_12, 29)), anonteam_348_36(anonteam_348_39(anonteam_385_11, 6), anonteam_348_38(anonteam_385_12, 26)))
						local anonteam_385_14 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_12, 19), anonteam_348_38(anonteam_385_11, 13)), anonteam_348_36(anonteam_348_38(anonteam_385_12, 3), anonteam_348_39(anonteam_385_11, 29)), anonteam_348_39(anonteam_385_12, 6))

						anonteam_385_0[iter_385_2], anonteam_385_0[iter_385_2 - 1] = anonteam_348_124(anonteam_385_9, anonteam_385_10, anonteam_385_13, anonteam_385_14, anonteam_385_0[iter_385_2 - 14], anonteam_385_0[iter_385_2 - 15], anonteam_385_0[iter_385_2 - 32], anonteam_385_0[iter_385_2 - 33])
					end

					local anonteam_385_15 = arg_385_0[1]
					local anonteam_385_16 = arg_385_0[2]
					local anonteam_385_17 = arg_385_0[3]
					local anonteam_385_18 = arg_385_0[4]
					local anonteam_385_19 = arg_385_0[5]
					local anonteam_385_20 = arg_385_0[6]
					local anonteam_385_21 = arg_385_0[7]
					local anonteam_385_22 = arg_385_0[8]
					local anonteam_385_23 = arg_385_1[1]
					local anonteam_385_24 = arg_385_1[2]
					local anonteam_385_25 = arg_385_1[3]
					local anonteam_385_26 = arg_385_1[4]
					local anonteam_385_27 = arg_385_1[5]
					local anonteam_385_28 = arg_385_1[6]
					local anonteam_385_29 = arg_385_1[7]
					local anonteam_385_30 = arg_385_1[8]

					for iter_385_3 = 1, 80 do
						local anonteam_385_31 = anonteam_348_37(anonteam_385_21, anonteam_348_35(anonteam_385_19, anonteam_348_37(anonteam_385_20, anonteam_385_21)))
						local anonteam_385_32 = anonteam_348_37(anonteam_385_29, anonteam_348_35(anonteam_385_27, anonteam_348_37(anonteam_385_28, anonteam_385_29)))
						local anonteam_385_33 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_19, 14), anonteam_348_38(anonteam_385_27, 18)), anonteam_348_36(anonteam_348_39(anonteam_385_19, 18), anonteam_348_38(anonteam_385_27, 14)), anonteam_348_36(anonteam_348_38(anonteam_385_19, 23), anonteam_348_39(anonteam_385_27, 9)))
						local anonteam_385_34 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_27, 14), anonteam_348_38(anonteam_385_19, 18)), anonteam_348_36(anonteam_348_39(anonteam_385_27, 18), anonteam_348_38(anonteam_385_19, 14)), anonteam_348_36(anonteam_348_38(anonteam_385_27, 23), anonteam_348_39(anonteam_385_19, 9)))
						local anonteam_385_35 = anonteam_385_33 % 4294967296 + anonteam_385_31 % 4294967296 + anonteam_385_22 % 4294967296 + anonteam_385_1[iter_385_3] + anonteam_385_0[2 * iter_385_3] % 4294967296
						local anonteam_385_36 = anonteam_348_43(anonteam_385_35)
						local anonteam_385_37 = anonteam_348_43(anonteam_385_34 + anonteam_385_32 + anonteam_385_30 + anonteam_385_2[iter_385_3] + anonteam_385_0[2 * iter_385_3 - 1] + anonteam_348_10(anonteam_385_35 / 4294967296))

						anonteam_385_22, anonteam_385_30, anonteam_385_21, anonteam_385_29, anonteam_385_20, anonteam_385_28 = anonteam_385_21, anonteam_385_29, anonteam_385_20, anonteam_385_28, anonteam_385_19, anonteam_385_27

						local anonteam_385_38 = anonteam_385_36 % 4294967296 + anonteam_385_18 % 4294967296

						anonteam_385_19, anonteam_385_27 = anonteam_348_43(anonteam_385_38), anonteam_348_43(anonteam_385_37 + anonteam_385_26 + anonteam_348_10(anonteam_385_38 / 4294967296))
						anonteam_385_18, anonteam_385_26, anonteam_385_17, anonteam_385_25, anonteam_385_16, anonteam_385_24 = anonteam_385_17, anonteam_385_25, anonteam_385_16, anonteam_385_24, anonteam_385_15, anonteam_385_23

						local anonteam_385_39 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_16, 28), anonteam_348_38(anonteam_385_24, 4)), anonteam_348_36(anonteam_348_38(anonteam_385_16, 30), anonteam_348_39(anonteam_385_24, 2)), anonteam_348_36(anonteam_348_38(anonteam_385_16, 25), anonteam_348_39(anonteam_385_24, 7)))
						local anonteam_385_40 = anonteam_348_37(anonteam_348_36(anonteam_348_39(anonteam_385_24, 28), anonteam_348_38(anonteam_385_16, 4)), anonteam_348_36(anonteam_348_38(anonteam_385_24, 30), anonteam_348_39(anonteam_385_16, 2)), anonteam_348_36(anonteam_348_38(anonteam_385_24, 25), anonteam_348_39(anonteam_385_16, 7)))
						local anonteam_385_41 = anonteam_348_36(anonteam_348_35(anonteam_385_18, anonteam_385_17), anonteam_348_35(anonteam_385_16, anonteam_348_37(anonteam_385_18, anonteam_385_17)))
						local anonteam_385_42 = anonteam_348_36(anonteam_348_35(anonteam_385_26, anonteam_385_25), anonteam_348_35(anonteam_385_24, anonteam_348_37(anonteam_385_26, anonteam_385_25)))
						local anonteam_385_43 = anonteam_385_36 % 4294967296 + anonteam_385_39 % 4294967296 + anonteam_385_41 % 4294967296

						anonteam_385_15, anonteam_385_23 = anonteam_348_43(anonteam_385_43), anonteam_348_43(anonteam_385_37 + anonteam_385_40 + anonteam_385_42 + anonteam_348_10(anonteam_385_43 / 4294967296))
					end

					arg_385_0[1], arg_385_1[1] = anonteam_348_124(arg_385_0[1], arg_385_1[1], anonteam_385_15, anonteam_385_23, 0, 0, 0, 0)
					arg_385_0[2], arg_385_1[2] = anonteam_348_124(arg_385_0[2], arg_385_1[2], anonteam_385_16, anonteam_385_24, 0, 0, 0, 0)
					arg_385_0[3], arg_385_1[3] = anonteam_348_124(arg_385_0[3], arg_385_1[3], anonteam_385_17, anonteam_385_25, 0, 0, 0, 0)
					arg_385_0[4], arg_385_1[4] = anonteam_348_124(arg_385_0[4], arg_385_1[4], anonteam_385_18, anonteam_385_26, 0, 0, 0, 0)
					arg_385_0[5], arg_385_1[5] = anonteam_348_124(arg_385_0[5], arg_385_1[5], anonteam_385_19, anonteam_385_27, 0, 0, 0, 0)
					arg_385_0[6], arg_385_1[6] = anonteam_348_124(arg_385_0[6], arg_385_1[6], anonteam_385_20, anonteam_385_28, 0, 0, 0, 0)
					arg_385_0[7], arg_385_1[7] = anonteam_348_124(arg_385_0[7], arg_385_1[7], anonteam_385_21, anonteam_385_29, 0, 0, 0, 0)
					arg_385_0[8], arg_385_1[8] = anonteam_348_124(arg_385_0[8], arg_385_1[8], anonteam_385_22, anonteam_385_30, 0, 0, 0, 0)
				end
			end
		end

		local function anonteam_348_125(arg_386_0, arg_386_1, arg_386_2, arg_386_3)
			local anonteam_386_0 = anonteam_348_70
			local anonteam_386_1 = anonteam_348_65

			for iter_386_0 = arg_386_2, arg_386_2 + arg_386_3 - 1, 64 do
				for iter_386_1 = 1, 16 do
					iter_386_0 = iter_386_0 + 4

					local anonteam_386_2, anonteam_386_3, anonteam_386_4, anonteam_386_5 = anonteam_348_3(arg_386_1, iter_386_0 - 3, iter_386_0)

					anonteam_386_0[iter_386_1] = anonteam_348_36(anonteam_348_38(anonteam_386_5, 24), anonteam_348_38(anonteam_386_4, 16), anonteam_348_38(anonteam_386_3, 8), anonteam_386_2)
				end

				local anonteam_386_6 = arg_386_0[1]
				local anonteam_386_7 = arg_386_0[2]
				local anonteam_386_8 = arg_386_0[3]
				local anonteam_386_9 = arg_386_0[4]

				for iter_386_2 = 1, 16, 4 do
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_9, anonteam_348_35(anonteam_386_7, anonteam_348_37(anonteam_386_8, anonteam_386_9))) + (anonteam_386_1[iter_386_2] + anonteam_386_0[iter_386_2] + anonteam_386_6), 7) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_9, anonteam_348_35(anonteam_386_7, anonteam_348_37(anonteam_386_8, anonteam_386_9))) + (anonteam_386_1[iter_386_2 + 1] + anonteam_386_0[iter_386_2 + 1] + anonteam_386_6), 12) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_9, anonteam_348_35(anonteam_386_7, anonteam_348_37(anonteam_386_8, anonteam_386_9))) + (anonteam_386_1[iter_386_2 + 2] + anonteam_386_0[iter_386_2 + 2] + anonteam_386_6), 17) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_9, anonteam_348_35(anonteam_386_7, anonteam_348_37(anonteam_386_8, anonteam_386_9))) + (anonteam_386_1[iter_386_2 + 3] + anonteam_386_0[iter_386_2 + 3] + anonteam_386_6), 22) + anonteam_386_7)
				end

				for iter_386_3 = 17, 32, 4 do
					local anonteam_386_10 = 5 * iter_386_3 - 4

					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_35(anonteam_386_9, anonteam_348_37(anonteam_386_7, anonteam_386_8))) + (anonteam_386_1[iter_386_3] + anonteam_386_0[anonteam_348_35(anonteam_386_10, 15) + 1] + anonteam_386_6), 5) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_35(anonteam_386_9, anonteam_348_37(anonteam_386_7, anonteam_386_8))) + (anonteam_386_1[iter_386_3 + 1] + anonteam_386_0[anonteam_348_35(anonteam_386_10 + 5, 15) + 1] + anonteam_386_6), 9) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_35(anonteam_386_9, anonteam_348_37(anonteam_386_7, anonteam_386_8))) + (anonteam_386_1[iter_386_3 + 2] + anonteam_386_0[anonteam_348_35(anonteam_386_10 + 10, 15) + 1] + anonteam_386_6), 14) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_35(anonteam_386_9, anonteam_348_37(anonteam_386_7, anonteam_386_8))) + (anonteam_386_1[iter_386_3 + 3] + anonteam_386_0[anonteam_348_35(anonteam_386_10 - 1, 15) + 1] + anonteam_386_6), 20) + anonteam_386_7)
				end

				for iter_386_4 = 33, 48, 4 do
					local anonteam_386_11 = 3 * iter_386_4 + 2

					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_7, anonteam_386_8, anonteam_386_9) + (anonteam_386_1[iter_386_4] + anonteam_386_0[anonteam_348_35(anonteam_386_11, 15) + 1] + anonteam_386_6), 4) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_7, anonteam_386_8, anonteam_386_9) + (anonteam_386_1[iter_386_4 + 1] + anonteam_386_0[anonteam_348_35(anonteam_386_11 + 3, 15) + 1] + anonteam_386_6), 11) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_7, anonteam_386_8, anonteam_386_9) + (anonteam_386_1[iter_386_4 + 2] + anonteam_386_0[anonteam_348_35(anonteam_386_11 + 6, 15) + 1] + anonteam_386_6), 16) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_7, anonteam_386_8, anonteam_386_9) + (anonteam_386_1[iter_386_4 + 3] + anonteam_386_0[anonteam_348_35(anonteam_386_11 - 7, 15) + 1] + anonteam_386_6), 23) + anonteam_386_7)
				end

				for iter_386_5 = 49, 64, 4 do
					local anonteam_386_12 = iter_386_5 * 7

					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_36(anonteam_386_7, anonteam_348_42(anonteam_386_9))) + (anonteam_386_1[iter_386_5] + anonteam_386_0[anonteam_348_35(anonteam_386_12 - 7, 15) + 1] + anonteam_386_6), 6) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_36(anonteam_386_7, anonteam_348_42(anonteam_386_9))) + (anonteam_386_1[iter_386_5 + 1] + anonteam_386_0[anonteam_348_35(anonteam_386_12, 15) + 1] + anonteam_386_6), 10) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_36(anonteam_386_7, anonteam_348_42(anonteam_386_9))) + (anonteam_386_1[iter_386_5 + 2] + anonteam_386_0[anonteam_348_35(anonteam_386_12 + 7, 15) + 1] + anonteam_386_6), 15) + anonteam_386_7)
					anonteam_386_6, anonteam_386_9, anonteam_386_8, anonteam_386_7 = anonteam_386_9, anonteam_386_8, anonteam_386_7, anonteam_348_43(anonteam_348_40(anonteam_348_37(anonteam_386_8, anonteam_348_36(anonteam_386_7, anonteam_348_42(anonteam_386_9))) + (anonteam_386_1[iter_386_5 + 3] + anonteam_386_0[anonteam_348_35(anonteam_386_12 - 2, 15) + 1] + anonteam_386_6), 21) + anonteam_386_7)
				end

				arg_386_0[1], arg_386_0[2], arg_386_0[3], arg_386_0[4] = anonteam_348_43(anonteam_386_6 + arg_386_0[1]), anonteam_348_43(anonteam_386_7 + arg_386_0[2]), anonteam_348_43(anonteam_386_8 + arg_386_0[3]), anonteam_348_43(anonteam_386_9 + arg_386_0[4])
			end
		end

		local function anonteam_348_126(arg_387_0, arg_387_1, arg_387_2, arg_387_3)
			local anonteam_387_0 = anonteam_348_70

			for iter_387_0 = arg_387_2, arg_387_2 + arg_387_3 - 1, 64 do
				for iter_387_1 = 1, 16 do
					iter_387_0 = iter_387_0 + 4

					local anonteam_387_1, anonteam_387_2, anonteam_387_3, anonteam_387_4 = anonteam_348_3(arg_387_1, iter_387_0 - 3, iter_387_0)

					anonteam_387_0[iter_387_1] = anonteam_348_36(anonteam_348_38(anonteam_387_1, 24), anonteam_348_38(anonteam_387_2, 16), anonteam_348_38(anonteam_387_3, 8), anonteam_387_4)
				end

				for iter_387_2 = 17, 80 do
					anonteam_387_0[iter_387_2] = anonteam_348_40(anonteam_348_37(anonteam_387_0[iter_387_2 - 3], anonteam_387_0[iter_387_2 - 8], anonteam_387_0[iter_387_2 - 14], anonteam_387_0[iter_387_2 - 16]), 1)
				end

				local anonteam_387_5 = arg_387_0[1]
				local anonteam_387_6 = arg_387_0[2]
				local anonteam_387_7 = arg_387_0[3]
				local anonteam_387_8 = arg_387_0[4]
				local anonteam_387_9 = arg_387_0[5]

				for iter_387_3 = 1, 20, 5 do
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_8, anonteam_348_35(anonteam_387_6, anonteam_348_37(anonteam_387_8, anonteam_387_7))) + (anonteam_387_0[iter_387_3] + 1518500249 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_8, anonteam_348_35(anonteam_387_6, anonteam_348_37(anonteam_387_8, anonteam_387_7))) + (anonteam_387_0[iter_387_3 + 1] + 1518500249 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_8, anonteam_348_35(anonteam_387_6, anonteam_348_37(anonteam_387_8, anonteam_387_7))) + (anonteam_387_0[iter_387_3 + 2] + 1518500249 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_8, anonteam_348_35(anonteam_387_6, anonteam_348_37(anonteam_387_8, anonteam_387_7))) + (anonteam_387_0[iter_387_3 + 3] + 1518500249 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_8, anonteam_348_35(anonteam_387_6, anonteam_348_37(anonteam_387_8, anonteam_387_7))) + (anonteam_387_0[iter_387_3 + 4] + 1518500249 + anonteam_387_9))
				end

				for iter_387_4 = 21, 40, 5 do
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_4] + 1859775393 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_4 + 1] + 1859775393 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_4 + 2] + 1859775393 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_4 + 3] + 1859775393 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_4 + 4] + 1859775393 + anonteam_387_9))
				end

				for iter_387_5 = 41, 60, 5 do
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_387_8, anonteam_348_37(anonteam_387_6, anonteam_387_7)), anonteam_348_35(anonteam_387_6, anonteam_387_7)) + (anonteam_387_0[iter_387_5] + 2400959708 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_387_8, anonteam_348_37(anonteam_387_6, anonteam_387_7)), anonteam_348_35(anonteam_387_6, anonteam_387_7)) + (anonteam_387_0[iter_387_5 + 1] + 2400959708 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_387_8, anonteam_348_37(anonteam_387_6, anonteam_387_7)), anonteam_348_35(anonteam_387_6, anonteam_387_7)) + (anonteam_387_0[iter_387_5 + 2] + 2400959708 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_387_8, anonteam_348_37(anonteam_387_6, anonteam_387_7)), anonteam_348_35(anonteam_387_6, anonteam_387_7)) + (anonteam_387_0[iter_387_5 + 3] + 2400959708 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_348_35(anonteam_387_8, anonteam_348_37(anonteam_387_6, anonteam_387_7)), anonteam_348_35(anonteam_387_6, anonteam_387_7)) + (anonteam_387_0[iter_387_5 + 4] + 2400959708 + anonteam_387_9))
				end

				for iter_387_6 = 61, 80, 5 do
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_6] + 3395469782 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_6 + 1] + 3395469782 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_6 + 2] + 3395469782 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_6 + 3] + 3395469782 + anonteam_387_9))
					anonteam_387_9, anonteam_387_8, anonteam_387_7, anonteam_387_6, anonteam_387_5 = anonteam_387_8, anonteam_387_7, anonteam_348_41(anonteam_387_6, 2), anonteam_387_5, anonteam_348_43(anonteam_348_40(anonteam_387_5, 5) + anonteam_348_37(anonteam_387_6, anonteam_387_7, anonteam_387_8) + (anonteam_387_0[iter_387_6 + 4] + 3395469782 + anonteam_387_9))
				end

				arg_387_0[1], arg_387_0[2], arg_387_0[3], arg_387_0[4], arg_387_0[5] = anonteam_348_43(anonteam_387_5 + arg_387_0[1]), anonteam_348_43(anonteam_387_6 + arg_387_0[2]), anonteam_348_43(anonteam_387_7 + arg_387_0[3]), anonteam_348_43(anonteam_387_8 + arg_387_0[4]), anonteam_348_43(anonteam_387_9 + arg_387_0[5])
			end
		end

		local anonteam_348_127 = {}
		local anonteam_348_128 = {}

		local function anonteam_348_129(arg_388_0, arg_388_1, arg_388_2, arg_388_3, arg_388_4, arg_388_5)
			local anonteam_388_0 = anonteam_348_70
			local anonteam_388_1 = anonteam_348_127[arg_388_0]
			local anonteam_388_2 = anonteam_348_127[arg_388_1]
			local anonteam_388_3 = anonteam_348_127[arg_388_2]
			local anonteam_388_4 = anonteam_348_127[arg_388_3]
			local anonteam_388_5 = anonteam_348_128[arg_388_0]
			local anonteam_388_6 = anonteam_348_128[arg_388_1]
			local anonteam_388_7 = anonteam_348_128[arg_388_2]
			local anonteam_388_8 = anonteam_348_128[arg_388_3]
			local anonteam_388_9 = anonteam_388_0[2 * arg_388_4 - 1] + (anonteam_388_1 % 4294967296 + anonteam_388_2 % 4294967296)
			local anonteam_388_10 = anonteam_348_43(anonteam_388_9)
			local anonteam_388_11 = anonteam_348_43(anonteam_388_0[2 * arg_388_4] + (anonteam_388_5 + anonteam_388_6 + anonteam_348_10(anonteam_388_9 / 4294967296)))
			local anonteam_388_12, anonteam_388_13 = anonteam_348_37(anonteam_388_8, anonteam_388_11), anonteam_348_37(anonteam_388_4, anonteam_388_10)
			local anonteam_388_14 = anonteam_388_3 % 4294967296 + anonteam_388_12 % 4294967296
			local anonteam_388_15 = anonteam_348_43(anonteam_388_14)
			local anonteam_388_16 = anonteam_348_43(anonteam_388_7 + anonteam_388_13 + anonteam_348_10(anonteam_388_14 / 4294967296))
			local anonteam_388_17, anonteam_388_18 = anonteam_348_37(anonteam_388_2, anonteam_388_15), anonteam_348_37(anonteam_388_6, anonteam_388_16)
			local anonteam_388_19, anonteam_388_20 = anonteam_348_37(anonteam_348_39(anonteam_388_17, 24), anonteam_348_38(anonteam_388_18, 8)), anonteam_348_37(anonteam_348_39(anonteam_388_18, 24), anonteam_348_38(anonteam_388_17, 8))
			local anonteam_388_21 = anonteam_388_0[2 * arg_388_5 - 1] + (anonteam_388_10 % 4294967296 + anonteam_388_19 % 4294967296)
			local anonteam_388_22 = anonteam_348_43(anonteam_388_21)
			local anonteam_388_23 = anonteam_348_43(anonteam_388_0[2 * arg_388_5] + (anonteam_388_11 + anonteam_388_20 + anonteam_348_10(anonteam_388_21 / 4294967296)))
			local anonteam_388_24, anonteam_388_25 = anonteam_348_37(anonteam_388_12, anonteam_388_22), anonteam_348_37(anonteam_388_13, anonteam_388_23)
			local anonteam_388_26, anonteam_388_27 = anonteam_348_37(anonteam_348_39(anonteam_388_24, 16), anonteam_348_38(anonteam_388_25, 16)), anonteam_348_37(anonteam_348_39(anonteam_388_25, 16), anonteam_348_38(anonteam_388_24, 16))
			local anonteam_388_28 = anonteam_388_15 % 4294967296 + anonteam_388_26 % 4294967296
			local anonteam_388_29 = anonteam_348_43(anonteam_388_28)
			local anonteam_388_30 = anonteam_348_43(anonteam_388_16 + anonteam_388_27 + anonteam_348_10(anonteam_388_28 / 4294967296))
			local anonteam_388_31, anonteam_388_32 = anonteam_348_37(anonteam_388_19, anonteam_388_29), anonteam_348_37(anonteam_388_20, anonteam_388_30)
			local anonteam_388_33, anonteam_388_34 = anonteam_348_37(anonteam_348_38(anonteam_388_31, 1), anonteam_348_39(anonteam_388_32, 31)), anonteam_348_37(anonteam_348_38(anonteam_388_32, 1), anonteam_348_39(anonteam_388_31, 31))

			anonteam_348_127[arg_388_0], anonteam_348_127[arg_388_1], anonteam_348_127[arg_388_2], anonteam_348_127[arg_388_3] = anonteam_388_22, anonteam_388_33, anonteam_388_29, anonteam_388_26
			anonteam_348_128[arg_388_0], anonteam_348_128[arg_388_1], anonteam_348_128[arg_388_2], anonteam_348_128[arg_388_3] = anonteam_388_23, anonteam_388_34, anonteam_388_30, anonteam_388_27
		end

		local function anonteam_348_130(arg_389_0, arg_389_1, arg_389_2, arg_389_3, arg_389_4, arg_389_5, arg_389_6, arg_389_7)
			local anonteam_389_0 = anonteam_348_70
			local anonteam_389_1 = arg_389_0[1]
			local anonteam_389_2 = arg_389_0[2]
			local anonteam_389_3 = arg_389_0[3]
			local anonteam_389_4 = arg_389_0[4]
			local anonteam_389_5 = arg_389_0[5]
			local anonteam_389_6 = arg_389_0[6]
			local anonteam_389_7 = arg_389_0[7]
			local anonteam_389_8 = arg_389_0[8]
			local anonteam_389_9 = arg_389_1[1]
			local anonteam_389_10 = arg_389_1[2]
			local anonteam_389_11 = arg_389_1[3]
			local anonteam_389_12 = arg_389_1[4]
			local anonteam_389_13 = arg_389_1[5]
			local anonteam_389_14 = arg_389_1[6]
			local anonteam_389_15 = arg_389_1[7]
			local anonteam_389_16 = arg_389_1[8]

			for iter_389_0 = arg_389_3, arg_389_3 + arg_389_4 - 1, 128 do
				if arg_389_2 then
					for iter_389_1 = 1, 32 do
						iter_389_0 = iter_389_0 + 4

						local anonteam_389_17, anonteam_389_18, anonteam_389_19, anonteam_389_20 = anonteam_348_3(arg_389_2, iter_389_0 - 3, iter_389_0)

						anonteam_389_0[iter_389_1] = anonteam_389_20 * 16777216 + anonteam_348_36(anonteam_348_38(anonteam_389_19, 16), anonteam_348_38(anonteam_389_18, 8), anonteam_389_17)
					end
				end

				anonteam_348_127[0], anonteam_348_127[1], anonteam_348_127[2], anonteam_348_127[3], anonteam_348_127[4], anonteam_348_127[5], anonteam_348_127[6], anonteam_348_127[7] = anonteam_389_1, anonteam_389_2, anonteam_389_3, anonteam_389_4, anonteam_389_5, anonteam_389_6, anonteam_389_7, anonteam_389_8
				anonteam_348_127[8], anonteam_348_127[9], anonteam_348_127[10], anonteam_348_127[11], anonteam_348_127[12], anonteam_348_127[13], anonteam_348_127[14], anonteam_348_127[15] = anonteam_348_58[1], anonteam_348_58[2], anonteam_348_58[3], anonteam_348_58[4], anonteam_348_58[5], anonteam_348_58[6], anonteam_348_58[7], anonteam_348_58[8]
				anonteam_348_128[0], anonteam_348_128[1], anonteam_348_128[2], anonteam_348_128[3], anonteam_348_128[4], anonteam_348_128[5], anonteam_348_128[6], anonteam_348_128[7] = anonteam_389_9, anonteam_389_10, anonteam_389_11, anonteam_389_12, anonteam_389_13, anonteam_389_14, anonteam_389_15, anonteam_389_16
				anonteam_348_128[8], anonteam_348_128[9], anonteam_348_128[10], anonteam_348_128[11], anonteam_348_128[12], anonteam_348_128[13], anonteam_348_128[14], anonteam_348_128[15] = anonteam_348_59[1], anonteam_348_59[2], anonteam_348_59[3], anonteam_348_59[4], anonteam_348_59[5], anonteam_348_59[6], anonteam_348_59[7], anonteam_348_59[8]
				arg_389_5 = arg_389_5 + (arg_389_6 or 128)

				local anonteam_389_21 = arg_389_5 % 4294967296
				local anonteam_389_22 = anonteam_348_10(arg_389_5 / 4294967296)

				anonteam_348_127[12] = anonteam_348_37(anonteam_348_127[12], anonteam_389_21)
				anonteam_348_128[12] = anonteam_348_37(anonteam_348_128[12], anonteam_389_22)

				if arg_389_6 then
					anonteam_348_127[14] = anonteam_348_42(anonteam_348_127[14])
					anonteam_348_128[14] = anonteam_348_42(anonteam_348_128[14])
				end

				if arg_389_7 then
					anonteam_348_127[15] = anonteam_348_42(anonteam_348_127[15])
					anonteam_348_128[15] = anonteam_348_42(anonteam_348_128[15])
				end

				for iter_389_2 = 1, 12 do
					local anonteam_389_23 = anonteam_348_77[iter_389_2]

					anonteam_348_129(0, 4, 8, 12, anonteam_389_23[1], anonteam_389_23[2])
					anonteam_348_129(1, 5, 9, 13, anonteam_389_23[3], anonteam_389_23[4])
					anonteam_348_129(2, 6, 10, 14, anonteam_389_23[5], anonteam_389_23[6])
					anonteam_348_129(3, 7, 11, 15, anonteam_389_23[7], anonteam_389_23[8])
					anonteam_348_129(0, 5, 10, 15, anonteam_389_23[9], anonteam_389_23[10])
					anonteam_348_129(1, 6, 11, 12, anonteam_389_23[11], anonteam_389_23[12])
					anonteam_348_129(2, 7, 8, 13, anonteam_389_23[13], anonteam_389_23[14])
					anonteam_348_129(3, 4, 9, 14, anonteam_389_23[15], anonteam_389_23[16])
				end

				anonteam_389_1 = anonteam_348_37(anonteam_389_1, anonteam_348_127[0], anonteam_348_127[8])
				anonteam_389_2 = anonteam_348_37(anonteam_389_2, anonteam_348_127[1], anonteam_348_127[9])
				anonteam_389_3 = anonteam_348_37(anonteam_389_3, anonteam_348_127[2], anonteam_348_127[10])
				anonteam_389_4 = anonteam_348_37(anonteam_389_4, anonteam_348_127[3], anonteam_348_127[11])
				anonteam_389_5 = anonteam_348_37(anonteam_389_5, anonteam_348_127[4], anonteam_348_127[12])
				anonteam_389_6 = anonteam_348_37(anonteam_389_6, anonteam_348_127[5], anonteam_348_127[13])
				anonteam_389_7 = anonteam_348_37(anonteam_389_7, anonteam_348_127[6], anonteam_348_127[14])
				anonteam_389_8 = anonteam_348_37(anonteam_389_8, anonteam_348_127[7], anonteam_348_127[15])
				anonteam_389_9 = anonteam_348_37(anonteam_389_9, anonteam_348_128[0], anonteam_348_128[8])
				anonteam_389_10 = anonteam_348_37(anonteam_389_10, anonteam_348_128[1], anonteam_348_128[9])
				anonteam_389_11 = anonteam_348_37(anonteam_389_11, anonteam_348_128[2], anonteam_348_128[10])
				anonteam_389_12 = anonteam_348_37(anonteam_389_12, anonteam_348_128[3], anonteam_348_128[11])
				anonteam_389_13 = anonteam_348_37(anonteam_389_13, anonteam_348_128[4], anonteam_348_128[12])
				anonteam_389_14 = anonteam_348_37(anonteam_389_14, anonteam_348_128[5], anonteam_348_128[13])
				anonteam_389_15 = anonteam_348_37(anonteam_389_15, anonteam_348_128[6], anonteam_348_128[14])
				anonteam_389_16 = anonteam_348_37(anonteam_389_16, anonteam_348_128[7], anonteam_348_128[15])
			end

			arg_389_0[1], arg_389_0[2], arg_389_0[3], arg_389_0[4], arg_389_0[5], arg_389_0[6], arg_389_0[7], arg_389_0[8] = anonteam_389_1 % 4294967296, anonteam_389_2 % 4294967296, anonteam_389_3 % 4294967296, anonteam_389_4 % 4294967296, anonteam_389_5 % 4294967296, anonteam_389_6 % 4294967296, anonteam_389_7 % 4294967296, anonteam_389_8 % 4294967296
			arg_389_1[1], arg_389_1[2], arg_389_1[3], arg_389_1[4], arg_389_1[5], arg_389_1[6], arg_389_1[7], arg_389_1[8] = anonteam_389_9 % 4294967296, anonteam_389_10 % 4294967296, anonteam_389_11 % 4294967296, anonteam_389_12 % 4294967296, anonteam_389_13 % 4294967296, anonteam_389_14 % 4294967296, anonteam_389_15 % 4294967296, anonteam_389_16 % 4294967296

			return arg_389_5
		end
	end

	if anonteam_348_34 == "FFI" or anonteam_348_34 == "LJ" then
		local anonteam_348_131 = anonteam_348_72
		local anonteam_348_132 = anonteam_348_73

		local function anonteam_348_133(arg_390_0, arg_390_1, arg_390_2, arg_390_3, arg_390_4, arg_390_5)
			local anonteam_390_0 = anonteam_348_132[arg_390_0]
			local anonteam_390_1 = anonteam_348_132[arg_390_1]
			local anonteam_390_2 = anonteam_348_132[arg_390_2]
			local anonteam_390_3 = anonteam_348_132[arg_390_3]
			local anonteam_390_4 = anonteam_348_43(anonteam_348_131[arg_390_4] + (anonteam_390_0 + anonteam_390_1))
			local anonteam_390_5 = anonteam_348_41(anonteam_348_37(anonteam_390_3, anonteam_390_4), 16)
			local anonteam_390_6 = anonteam_348_43(anonteam_390_2 + anonteam_390_5)
			local anonteam_390_7 = anonteam_348_41(anonteam_348_37(anonteam_390_1, anonteam_390_6), 12)
			local anonteam_390_8 = anonteam_348_43(anonteam_348_131[arg_390_5] + (anonteam_390_4 + anonteam_390_7))
			local anonteam_390_9 = anonteam_348_41(anonteam_348_37(anonteam_390_5, anonteam_390_8), 8)
			local anonteam_390_10 = anonteam_348_43(anonteam_390_6 + anonteam_390_9)
			local anonteam_390_11 = anonteam_348_41(anonteam_348_37(anonteam_390_7, anonteam_390_10), 7)

			anonteam_348_132[arg_390_0], anonteam_348_132[arg_390_1], anonteam_348_132[arg_390_2], anonteam_348_132[arg_390_3] = anonteam_390_8, anonteam_390_11, anonteam_390_10, anonteam_390_9
		end

		local function anonteam_348_134(arg_391_0, arg_391_1, arg_391_2, arg_391_3, arg_391_4, arg_391_5, arg_391_6)
			local anonteam_391_0 = anonteam_348_43(arg_391_0[1])
			local anonteam_391_1 = anonteam_348_43(arg_391_0[2])
			local anonteam_391_2 = anonteam_348_43(arg_391_0[3])
			local anonteam_391_3 = anonteam_348_43(arg_391_0[4])
			local anonteam_391_4 = anonteam_348_43(arg_391_0[5])
			local anonteam_391_5 = anonteam_348_43(arg_391_0[6])
			local anonteam_391_6 = anonteam_348_43(arg_391_0[7])
			local anonteam_391_7 = anonteam_348_43(arg_391_0[8])

			for iter_391_0 = arg_391_2, arg_391_2 + arg_391_3 - 1, 64 do
				if arg_391_1 then
					for iter_391_1 = 1, 16 do
						iter_391_0 = iter_391_0 + 4

						local anonteam_391_8, anonteam_391_9, anonteam_391_10, anonteam_391_11 = anonteam_348_3(arg_391_1, iter_391_0 - 3, iter_391_0)

						anonteam_348_131[iter_391_1] = anonteam_348_36(anonteam_348_38(anonteam_391_11, 24), anonteam_348_38(anonteam_391_10, 16), anonteam_348_38(anonteam_391_9, 8), anonteam_391_8)
					end
				end

				anonteam_348_132[0], anonteam_348_132[1], anonteam_348_132[2], anonteam_348_132[3], anonteam_348_132[4], anonteam_348_132[5], anonteam_348_132[6], anonteam_348_132[7] = anonteam_391_0, anonteam_391_1, anonteam_391_2, anonteam_391_3, anonteam_391_4, anonteam_391_5, anonteam_391_6, anonteam_391_7
				anonteam_348_132[8], anonteam_348_132[9], anonteam_348_132[10], anonteam_348_132[11], anonteam_348_132[14], anonteam_348_132[15] = anonteam_348_43(anonteam_348_59[1]), anonteam_348_43(anonteam_348_59[2]), anonteam_348_43(anonteam_348_59[3]), anonteam_348_43(anonteam_348_59[4]), anonteam_348_43(anonteam_348_59[7]), anonteam_348_43(anonteam_348_59[8])
				arg_391_4 = arg_391_4 + (arg_391_5 or 64)

				local anonteam_391_12 = arg_391_4 % 4294967296
				local anonteam_391_13 = anonteam_348_10(arg_391_4 / 4294967296)

				anonteam_348_132[12] = anonteam_348_37(anonteam_348_59[5], anonteam_391_12)
				anonteam_348_132[13] = anonteam_348_37(anonteam_348_59[6], anonteam_391_13)

				if arg_391_5 then
					anonteam_348_132[14] = anonteam_348_42(anonteam_348_132[14])
				end

				if arg_391_6 then
					anonteam_348_132[15] = anonteam_348_42(anonteam_348_132[15])
				end

				for iter_391_2 = 1, 10 do
					local anonteam_391_14 = anonteam_348_77[iter_391_2]

					anonteam_348_133(0, 4, 8, 12, anonteam_391_14[1], anonteam_391_14[2])
					anonteam_348_133(1, 5, 9, 13, anonteam_391_14[3], anonteam_391_14[4])
					anonteam_348_133(2, 6, 10, 14, anonteam_391_14[5], anonteam_391_14[6])
					anonteam_348_133(3, 7, 11, 15, anonteam_391_14[7], anonteam_391_14[8])
					anonteam_348_133(0, 5, 10, 15, anonteam_391_14[9], anonteam_391_14[10])
					anonteam_348_133(1, 6, 11, 12, anonteam_391_14[11], anonteam_391_14[12])
					anonteam_348_133(2, 7, 8, 13, anonteam_391_14[13], anonteam_391_14[14])
					anonteam_348_133(3, 4, 9, 14, anonteam_391_14[15], anonteam_391_14[16])
				end

				anonteam_391_0 = anonteam_348_37(anonteam_391_0, anonteam_348_132[0], anonteam_348_132[8])
				anonteam_391_1 = anonteam_348_37(anonteam_391_1, anonteam_348_132[1], anonteam_348_132[9])
				anonteam_391_2 = anonteam_348_37(anonteam_391_2, anonteam_348_132[2], anonteam_348_132[10])
				anonteam_391_3 = anonteam_348_37(anonteam_391_3, anonteam_348_132[3], anonteam_348_132[11])
				anonteam_391_4 = anonteam_348_37(anonteam_391_4, anonteam_348_132[4], anonteam_348_132[12])
				anonteam_391_5 = anonteam_348_37(anonteam_391_5, anonteam_348_132[5], anonteam_348_132[13])
				anonteam_391_6 = anonteam_348_37(anonteam_391_6, anonteam_348_132[6], anonteam_348_132[14])
				anonteam_391_7 = anonteam_348_37(anonteam_391_7, anonteam_348_132[7], anonteam_348_132[15])
			end

			arg_391_0[1], arg_391_0[2], arg_391_0[3], arg_391_0[4], arg_391_0[5], arg_391_0[6], arg_391_0[7], arg_391_0[8] = anonteam_391_0, anonteam_391_1, anonteam_391_2, anonteam_391_3, anonteam_391_4, anonteam_391_5, anonteam_391_6, anonteam_391_7

			return arg_391_4
		end

		local function anonteam_348_135(arg_392_0, arg_392_1, arg_392_2, arg_392_3, arg_392_4, arg_392_5, arg_392_6, arg_392_7, arg_392_8)
			arg_392_8 = arg_392_8 or 64

			local anonteam_392_0 = anonteam_348_43(arg_392_5[1])
			local anonteam_392_1 = anonteam_348_43(arg_392_5[2])
			local anonteam_392_2 = anonteam_348_43(arg_392_5[3])
			local anonteam_392_3 = anonteam_348_43(arg_392_5[4])
			local anonteam_392_4 = anonteam_348_43(arg_392_5[5])
			local anonteam_392_5 = anonteam_348_43(arg_392_5[6])
			local anonteam_392_6 = anonteam_348_43(arg_392_5[7])
			local anonteam_392_7 = anonteam_348_43(arg_392_5[8])

			arg_392_6 = arg_392_6 or arg_392_5

			for iter_392_0 = arg_392_1, arg_392_1 + arg_392_2 - 1, 64 do
				if arg_392_0 then
					for iter_392_1 = 1, 16 do
						iter_392_0 = iter_392_0 + 4

						local anonteam_392_8, anonteam_392_9, anonteam_392_10, anonteam_392_11 = anonteam_348_3(arg_392_0, iter_392_0 - 3, iter_392_0)

						anonteam_348_131[iter_392_1] = anonteam_348_36(anonteam_348_38(anonteam_392_11, 24), anonteam_348_38(anonteam_392_10, 16), anonteam_348_38(anonteam_392_9, 8), anonteam_392_8)
					end
				end

				anonteam_348_132[0], anonteam_348_132[1], anonteam_348_132[2], anonteam_348_132[3], anonteam_348_132[4], anonteam_348_132[5], anonteam_348_132[6], anonteam_348_132[7] = anonteam_392_0, anonteam_392_1, anonteam_392_2, anonteam_392_3, anonteam_392_4, anonteam_392_5, anonteam_392_6, anonteam_392_7
				anonteam_348_132[8], anonteam_348_132[9], anonteam_348_132[10], anonteam_348_132[11] = anonteam_348_43(anonteam_348_59[1]), anonteam_348_43(anonteam_348_59[2]), anonteam_348_43(anonteam_348_59[3]), anonteam_348_43(anonteam_348_59[4])
				anonteam_348_132[12] = anonteam_348_43(arg_392_4 % 4294967296)
				anonteam_348_132[13] = anonteam_348_10(arg_392_4 / 4294967296)
				anonteam_348_132[14], anonteam_348_132[15] = arg_392_8, arg_392_3

				for iter_392_2 = 1, 7 do
					anonteam_348_133(0, 4, 8, 12, anonteam_348_78[iter_392_2], anonteam_348_78[iter_392_2 + 14])
					anonteam_348_133(1, 5, 9, 13, anonteam_348_78[iter_392_2 + 1], anonteam_348_78[iter_392_2 + 2])
					anonteam_348_133(2, 6, 10, 14, anonteam_348_78[iter_392_2 + 16], anonteam_348_78[iter_392_2 + 7])
					anonteam_348_133(3, 7, 11, 15, anonteam_348_78[iter_392_2 + 15], anonteam_348_78[iter_392_2 + 17])
					anonteam_348_133(0, 5, 10, 15, anonteam_348_78[iter_392_2 + 21], anonteam_348_78[iter_392_2 + 5])
					anonteam_348_133(1, 6, 11, 12, anonteam_348_78[iter_392_2 + 3], anonteam_348_78[iter_392_2 + 6])
					anonteam_348_133(2, 7, 8, 13, anonteam_348_78[iter_392_2 + 4], anonteam_348_78[iter_392_2 + 18])
					anonteam_348_133(3, 4, 9, 14, anonteam_348_78[iter_392_2 + 19], anonteam_348_78[iter_392_2 + 20])
				end

				if arg_392_7 then
					arg_392_6[9] = anonteam_348_37(anonteam_392_0, anonteam_348_132[8])
					arg_392_6[10] = anonteam_348_37(anonteam_392_1, anonteam_348_132[9])
					arg_392_6[11] = anonteam_348_37(anonteam_392_2, anonteam_348_132[10])
					arg_392_6[12] = anonteam_348_37(anonteam_392_3, anonteam_348_132[11])
					arg_392_6[13] = anonteam_348_37(anonteam_392_4, anonteam_348_132[12])
					arg_392_6[14] = anonteam_348_37(anonteam_392_5, anonteam_348_132[13])
					arg_392_6[15] = anonteam_348_37(anonteam_392_6, anonteam_348_132[14])
					arg_392_6[16] = anonteam_348_37(anonteam_392_7, anonteam_348_132[15])
				end

				anonteam_392_0 = anonteam_348_37(anonteam_348_132[0], anonteam_348_132[8])
				anonteam_392_1 = anonteam_348_37(anonteam_348_132[1], anonteam_348_132[9])
				anonteam_392_2 = anonteam_348_37(anonteam_348_132[2], anonteam_348_132[10])
				anonteam_392_3 = anonteam_348_37(anonteam_348_132[3], anonteam_348_132[11])
				anonteam_392_4 = anonteam_348_37(anonteam_348_132[4], anonteam_348_132[12])
				anonteam_392_5 = anonteam_348_37(anonteam_348_132[5], anonteam_348_132[13])
				anonteam_392_6 = anonteam_348_37(anonteam_348_132[6], anonteam_348_132[14])
				anonteam_392_7 = anonteam_348_37(anonteam_348_132[7], anonteam_348_132[15])
			end

			arg_392_6[1], arg_392_6[2], arg_392_6[3], arg_392_6[4], arg_392_6[5], arg_392_6[6], arg_392_6[7], arg_392_6[8] = anonteam_392_0, anonteam_392_1, anonteam_392_2, anonteam_392_3, anonteam_392_4, anonteam_392_5, anonteam_392_6, anonteam_392_7
		end
	end

	local function anonteam_348_136(arg_393_0, arg_393_1, arg_393_2, arg_393_3)
		local anonteam_393_0 = {}
		local anonteam_393_1 = 0
		local anonteam_393_2 = 0
		local anonteam_393_3 = 1

		for iter_393_0 = 1, arg_393_3 do
			for iter_393_1 = anonteam_348_13(1, iter_393_0 + 1 - #arg_393_1), anonteam_348_12(iter_393_0, #arg_393_0) do
				anonteam_393_1 = anonteam_393_1 + arg_393_2 * arg_393_0[iter_393_1] * arg_393_1[iter_393_0 + 1 - iter_393_1]
			end

			local anonteam_393_4 = anonteam_393_1 % 16777216

			anonteam_393_0[iter_393_0] = anonteam_348_10(anonteam_393_4)
			anonteam_393_1 = (anonteam_393_1 - anonteam_393_4) / 16777216
			anonteam_393_2 = anonteam_393_2 + anonteam_393_4 * anonteam_393_3
			anonteam_393_3 = anonteam_393_3 * 16777216
		end

		return anonteam_393_0, anonteam_393_2
	end

	local anonteam_348_137 = 0
	local anonteam_348_138 = {
		4,
		1,
		2,
		-2,
		2
	}
	local anonteam_348_139 = 4
	local anonteam_348_140 = {
		1
	}
	local anonteam_348_141 = anonteam_348_59
	local anonteam_348_142 = anonteam_348_58

	repeat
		anonteam_348_139 = anonteam_348_139 + anonteam_348_138[anonteam_348_139 % 6]

		local anonteam_348_143 = 1

		repeat
			anonteam_348_143 = anonteam_348_143 + anonteam_348_138[anonteam_348_143 % 6]

			if anonteam_348_139 < anonteam_348_143 * anonteam_348_143 then
				local anonteam_348_144 = anonteam_348_139^0.3333333333333333
				local anonteam_348_145 = anonteam_348_144 * 1099511627776
				local anonteam_348_146 = anonteam_348_136({
					anonteam_348_145 - anonteam_348_145 % 1
				}, anonteam_348_140, 1, 2)
				local anonteam_348_147, anonteam_348_148 = anonteam_348_136(anonteam_348_146, anonteam_348_136(anonteam_348_146, anonteam_348_146, 1, 4), -1, 4)
				local anonteam_348_149 = anonteam_348_146[2] % 65536 * 65536 + anonteam_348_10(anonteam_348_146[1] / 256)
				local anonteam_348_150 = anonteam_348_146[1] % 256 * 16777216 + anonteam_348_10(anonteam_348_148 * 4.625929269271485e-18 * anonteam_348_144 / anonteam_348_139)

				if anonteam_348_137 < 16 then
					local anonteam_348_151 = anonteam_348_139^0.5
					local anonteam_348_152 = anonteam_348_151 * 1099511627776
					local anonteam_348_153 = anonteam_348_136({
						anonteam_348_152 - anonteam_348_152 % 1
					}, anonteam_348_140, 1, 2)
					local anonteam_348_154, anonteam_348_155 = anonteam_348_136(anonteam_348_153, anonteam_348_153, -1, 2)
					local anonteam_348_156 = anonteam_348_153[2] % 65536 * 65536 + anonteam_348_10(anonteam_348_153[1] / 256)
					local anonteam_348_157 = anonteam_348_153[1] % 256 * 16777216 + anonteam_348_10(anonteam_348_155 * 7.62939453125e-06 / anonteam_348_151)
					local anonteam_348_158 = anonteam_348_137 % 8 + 1

					anonteam_348_62[224][anonteam_348_158] = anonteam_348_157
					anonteam_348_141[anonteam_348_158], anonteam_348_142[anonteam_348_158] = anonteam_348_156, anonteam_348_157 + anonteam_348_156 * anonteam_348_75

					if anonteam_348_158 > 7 then
						anonteam_348_141, anonteam_348_142 = anonteam_348_64[384], anonteam_348_63[384]
					end
				end

				anonteam_348_137 = anonteam_348_137 + 1
				anonteam_348_57[anonteam_348_137], anonteam_348_56[anonteam_348_137] = anonteam_348_149, anonteam_348_150 % anonteam_348_74 + anonteam_348_149 * anonteam_348_75

				break
			end
		until anonteam_348_139 % anonteam_348_143 == 0
	until anonteam_348_137 > 79

	for iter_348_3 = 224, 256, 32 do
		local anonteam_348_159 = {}
		local anonteam_348_160

		if anonteam_348_68 then
			for iter_348_4 = 1, 8 do
				anonteam_348_159[iter_348_4] = anonteam_348_46(anonteam_348_58[iter_348_4])
			end
		else
			anonteam_348_160 = {}

			for iter_348_5 = 1, 8 do
				anonteam_348_159[iter_348_5] = anonteam_348_46(anonteam_348_58[iter_348_5])
				anonteam_348_160[iter_348_5] = anonteam_348_46(anonteam_348_59[iter_348_5])
			end
		end

		anonteam_348_49(anonteam_348_159, anonteam_348_160, "SHA-512/" .. tostring(iter_348_3) .. "\x80" .. anonteam_348_5("\x00", 115) .. "X", 0, 128)

		anonteam_348_63[iter_348_3] = anonteam_348_159
		anonteam_348_64[iter_348_3] = anonteam_348_160
	end

	local anonteam_348_161 = math.sin
	local anonteam_348_162 = math.abs
	local anonteam_348_163 = math.modf

	for iter_348_6 = 1, 64 do
		local anonteam_348_164, anonteam_348_165 = anonteam_348_163(anonteam_348_162(anonteam_348_161(iter_348_6)) * 65536)

		anonteam_348_65[iter_348_6] = anonteam_348_164 * 65536 + anonteam_348_10(anonteam_348_165 * 65536)
	end

	local anonteam_348_166 = 29

	local function anonteam_348_167()
		local anonteam_394_0 = anonteam_348_166 % 2

		anonteam_348_166 = anonteam_348_45((anonteam_348_166 - anonteam_394_0) / 2, 142 * anonteam_394_0)

		return anonteam_394_0
	end

	for iter_348_7 = 1, 24 do
		local anonteam_348_168 = 0
		local anonteam_348_169

		for iter_348_8 = 1, 6 do
			anonteam_348_169 = anonteam_348_169 and anonteam_348_169 * anonteam_348_169 * 2 or 1
			anonteam_348_168 = anonteam_348_168 + anonteam_348_167() * anonteam_348_169
		end

		local anonteam_348_170 = anonteam_348_167() * anonteam_348_169

		anonteam_348_61[iter_348_7], anonteam_348_60[iter_348_7] = anonteam_348_170, anonteam_348_168 + anonteam_348_170 * anonteam_348_76
	end

	if anonteam_348_34 == "FFI" then
		anonteam_348_57 = anonteam_348_27.new("uint32_t[?]", #anonteam_348_57 + 1, 0, anonteam_348_1(anonteam_348_57))
		anonteam_348_56 = anonteam_348_27.new("int64_t[?]", #anonteam_348_56 + 1, 0, anonteam_348_1(anonteam_348_56))

		if anonteam_348_76 == 0 then
			anonteam_348_60 = anonteam_348_27.new("uint32_t[?]", #anonteam_348_60 + 1, 0, anonteam_348_1(anonteam_348_60))
			anonteam_348_61 = anonteam_348_27.new("uint32_t[?]", #anonteam_348_61 + 1, 0, anonteam_348_1(anonteam_348_61))
		else
			anonteam_348_60 = anonteam_348_27.new("int64_t[?]", #anonteam_348_60 + 1, 0, anonteam_348_1(anonteam_348_60))
		end
	end

	local function anonteam_348_171(arg_395_0, arg_395_1)
		local anonteam_395_0 = {
			anonteam_348_1(anonteam_348_62[arg_395_0])
		}
		local anonteam_395_1 = 0
		local anonteam_395_2 = ""

		local function anonteam_395_3(arg_396_0)
			if arg_396_0 then
				if anonteam_395_2 then
					anonteam_395_1 = anonteam_395_1 + #arg_396_0

					local anonteam_396_0 = 0

					if anonteam_395_2 ~= "" and #anonteam_395_2 + #arg_396_0 >= 64 then
						anonteam_396_0 = 64 - #anonteam_395_2

						anonteam_348_48(anonteam_395_0, anonteam_395_2 .. anonteam_348_6(arg_396_0, 1, anonteam_396_0), 0, 64)

						anonteam_395_2 = ""
					end

					local anonteam_396_1 = #arg_396_0 - anonteam_396_0
					local anonteam_396_2 = anonteam_396_1 % 64

					anonteam_348_48(anonteam_395_0, arg_396_0, anonteam_396_0, anonteam_396_1 - anonteam_396_2)

					anonteam_395_2 = anonteam_395_2 .. anonteam_348_6(arg_396_0, #arg_396_0 + 1 - anonteam_396_2)

					return anonteam_395_3
				else
					error("Adding more chunks is not allowed after receiving the result", 2)
				end
			else
				if anonteam_395_2 then
					local anonteam_396_3 = {
						anonteam_395_2,
						"\x80",
						anonteam_348_5("\x00", (-9 - anonteam_395_1) % 64 + 1)
					}

					anonteam_395_2 = nil
					anonteam_395_1 = anonteam_395_1 * 1.1102230246251565e-16

					for iter_396_0 = 4, 10 do
						anonteam_395_1 = anonteam_395_1 % 1 * 256
						anonteam_396_3[iter_396_0] = anonteam_348_4(anonteam_348_10(anonteam_395_1))
					end

					local anonteam_396_4 = anonteam_348_2(anonteam_396_3)

					anonteam_348_48(anonteam_395_0, anonteam_396_4, 0, #anonteam_396_4)

					local anonteam_396_5 = arg_395_0 / 32

					for iter_396_1 = 1, anonteam_396_5 do
						anonteam_395_0[iter_396_1] = anonteam_348_44(anonteam_395_0[iter_396_1])
					end

					anonteam_395_0 = anonteam_348_2(anonteam_395_0, "", 1, anonteam_396_5)
				end

				return anonteam_395_0
			end
		end

		if arg_395_1 then
			return anonteam_395_3(arg_395_1)()
		else
			return anonteam_395_3
		end
	end

	local function anonteam_348_172(arg_397_0, arg_397_1)
		local anonteam_397_0 = 0
		local anonteam_397_1 = ""
		local anonteam_397_2 = {
			anonteam_348_1(anonteam_348_63[arg_397_0])
		}
		local anonteam_397_3

		anonteam_397_3 = not anonteam_348_68 and {
			anonteam_348_1(anonteam_348_64[arg_397_0])
		}

		local function anonteam_397_4(arg_398_0)
			if arg_398_0 then
				if anonteam_397_1 then
					anonteam_397_0 = anonteam_397_0 + #arg_398_0

					local anonteam_398_0 = 0

					if anonteam_397_1 ~= "" and #anonteam_397_1 + #arg_398_0 >= 128 then
						anonteam_398_0 = 128 - #anonteam_397_1

						anonteam_348_49(anonteam_397_2, anonteam_397_3, anonteam_397_1 .. anonteam_348_6(arg_398_0, 1, anonteam_398_0), 0, 128)

						anonteam_397_1 = ""
					end

					local anonteam_398_1 = #arg_398_0 - anonteam_398_0
					local anonteam_398_2 = anonteam_398_1 % 128

					anonteam_348_49(anonteam_397_2, anonteam_397_3, arg_398_0, anonteam_398_0, anonteam_398_1 - anonteam_398_2)

					anonteam_397_1 = anonteam_397_1 .. anonteam_348_6(arg_398_0, #arg_398_0 + 1 - anonteam_398_2)

					return anonteam_397_4
				else
					error("Adding more chunks is not allowed after receiving the result", 2)
				end
			else
				if anonteam_397_1 then
					local anonteam_398_3 = {
						anonteam_397_1,
						"\x80",
						anonteam_348_5("\x00", (-17 - anonteam_397_0) % 128 + 9)
					}

					anonteam_397_1 = nil
					anonteam_397_0 = anonteam_397_0 * 1.1102230246251565e-16

					for iter_398_0 = 4, 10 do
						anonteam_397_0 = anonteam_397_0 % 1 * 256
						anonteam_398_3[iter_398_0] = anonteam_348_4(anonteam_348_10(anonteam_397_0))
					end

					local anonteam_398_4 = anonteam_348_2(anonteam_398_3)

					anonteam_348_49(anonteam_397_2, anonteam_397_3, anonteam_398_4, 0, #anonteam_398_4)

					local anonteam_398_5 = anonteam_348_11(arg_397_0 / 64)

					if anonteam_348_68 then
						for iter_398_1 = 1, anonteam_398_5 do
							anonteam_397_2[iter_398_1] = anonteam_348_68(anonteam_397_2[iter_398_1])
						end
					else
						for iter_398_2 = 1, anonteam_398_5 do
							anonteam_397_2[iter_398_2] = anonteam_348_44(anonteam_397_3[iter_398_2]) .. anonteam_348_44(anonteam_397_2[iter_398_2])
						end

						anonteam_397_3 = nil
					end

					anonteam_397_2 = anonteam_348_6(anonteam_348_2(anonteam_397_2, "", 1, anonteam_398_5), 1, arg_397_0 / 4)
				end

				return anonteam_397_2
			end
		end

		if arg_397_1 then
			return anonteam_397_4(arg_397_1)()
		else
			return anonteam_397_4
		end
	end

	local anonteam_348_173
	local anonteam_348_174
	local anonteam_348_175
	local anonteam_348_176

	local function anonteam_348_177(arg_399_0)
		return (anonteam_348_7(arg_399_0, "%x%x", function(arg_400_0)
			return anonteam_348_4(anonteam_348_14(arg_400_0, 16))
		end))
	end

	local function anonteam_348_178(arg_401_0)
		return (anonteam_348_7(arg_401_0, ".", function(arg_402_0)
			return anonteam_348_9("%02x", anonteam_348_3(arg_402_0))
		end))
	end

	local anonteam_348_179 = {
		["/"] = 63,
		[63] = "/",
		[-1] = "=",
		_ = 63,
		["-"] = 62,
		["="] = -1,
		["+"] = 62,
		[62] = "+",
		["."] = -1
	}
	local anonteam_348_180 = 0

	for iter_348_9, iter_348_10 in ipairs({
		"AZ",
		"az",
		"09"
	}) do
		for iter_348_11 = anonteam_348_3(iter_348_10), anonteam_348_3(iter_348_10, 2) do
			local anonteam_348_181 = anonteam_348_4(iter_348_11)

			anonteam_348_179[anonteam_348_181] = anonteam_348_180
			anonteam_348_179[anonteam_348_180] = anonteam_348_181
			anonteam_348_180 = anonteam_348_180 + 1
		end
	end

	local function anonteam_348_182(arg_403_0)
		local anonteam_403_0 = {}

		for iter_403_0 = 1, #arg_403_0, 3 do
			local anonteam_403_1, anonteam_403_2, anonteam_403_3, anonteam_403_4 = anonteam_348_3(anonteam_348_6(arg_403_0, iter_403_0, iter_403_0 + 2) .. "\x00", 1, -1)

			anonteam_403_0[#anonteam_403_0 + 1] = anonteam_348_179[anonteam_348_10(anonteam_403_1 / 4)] .. anonteam_348_179[anonteam_403_1 % 4 * 16 + anonteam_348_10(anonteam_403_2 / 16)] .. anonteam_348_179[anonteam_403_3 and anonteam_403_2 % 16 * 4 + anonteam_348_10(anonteam_403_3 / 64) or -1] .. anonteam_348_179[anonteam_403_4 and anonteam_403_3 % 64 or -1]
		end

		return anonteam_348_2(anonteam_403_0)
	end

	local function anonteam_348_183(arg_404_0)
		local anonteam_404_0 = {}
		local anonteam_404_1 = 3

		for iter_404_0, iter_404_1 in anonteam_348_8(anonteam_348_7(arg_404_0, "%s+", ""), "()(.)") do
			local anonteam_404_2 = anonteam_348_179[iter_404_1]

			if anonteam_404_2 < 0 then
				anonteam_404_1 = anonteam_404_1 - 1
				anonteam_404_2 = 0
			end

			local anonteam_404_3 = iter_404_0 % 4

			if anonteam_404_3 > 0 then
				anonteam_404_0[-anonteam_404_3] = anonteam_404_2
			else
				local anonteam_404_4 = anonteam_404_0[-1] * 4 + anonteam_348_10(anonteam_404_0[-2] / 16)
				local anonteam_404_5 = anonteam_404_0[-2] % 16 * 16 + anonteam_348_10(anonteam_404_0[-3] / 4)
				local anonteam_404_6 = anonteam_404_0[-3] % 4 * 64 + anonteam_404_2

				anonteam_404_0[#anonteam_404_0 + 1] = anonteam_348_6(anonteam_348_4(anonteam_404_4, anonteam_404_5, anonteam_404_6), 1, anonteam_404_1)
			end
		end

		return anonteam_348_2(anonteam_404_0)
	end

	local anonteam_348_184

	local function anonteam_348_185(arg_405_0, arg_405_1, arg_405_2)
		return anonteam_348_7(arg_405_0, ".", function(arg_406_0)
			return anonteam_348_4(anonteam_348_45(anonteam_348_3(arg_406_0), arg_405_2))
		end) .. anonteam_348_5(anonteam_348_4(arg_405_2), arg_405_1 - #arg_405_0)
	end

	local function anonteam_348_186(arg_407_0, arg_407_1, arg_407_2)
		local anonteam_407_0 = anonteam_348_184[arg_407_0]

		if not anonteam_407_0 then
			error("Unknown hash function", 2)
		end

		if anonteam_407_0 < #arg_407_1 then
			arg_407_1 = anonteam_348_177(arg_407_0(arg_407_1))
		end

		local anonteam_407_1 = arg_407_0()(anonteam_348_185(arg_407_1, anonteam_407_0, 54))
		local anonteam_407_2

		local function anonteam_407_3(arg_408_0)
			if not arg_408_0 then
				anonteam_407_2 = anonteam_407_2 or arg_407_0(anonteam_348_185(arg_407_1, anonteam_407_0, 92) .. anonteam_348_177(anonteam_407_1()))

				return anonteam_407_2
			elseif anonteam_407_2 then
				error("Adding more chunks is not allowed after receiving the result", 2)
			else
				anonteam_407_1(arg_408_0)

				return anonteam_407_3
			end
		end

		if arg_407_2 then
			return anonteam_407_3(arg_407_2)()
		else
			return anonteam_407_3
		end
	end

	local anonteam_348_187 = {
		sha224 = function(arg_409_0)
			return anonteam_348_171(224, arg_409_0)
		end,
		sha256 = function(arg_410_0)
			return anonteam_348_171(256, arg_410_0)
		end,
		sha512_224 = function(arg_411_0)
			return anonteam_348_172(224, arg_411_0)
		end,
		sha512_256 = function(arg_412_0)
			return anonteam_348_172(256, arg_412_0)
		end,
		sha384 = function(arg_413_0)
			return anonteam_348_172(384, arg_413_0)
		end,
		sha512 = function(arg_414_0)
			return anonteam_348_172(512, arg_414_0)
		end,
		hmac = anonteam_348_186,
		hex_to_bin = anonteam_348_177,
		bin_to_hex = anonteam_348_178,
		base64_to_bin = anonteam_348_183,
		bin_to_base64 = anonteam_348_182,
		hex2bin = anonteam_348_177,
		bin2hex = anonteam_348_178,
		base642bin = anonteam_348_183,
		bin2base64 = anonteam_348_182
	}

	anonteam_348_184 = {
		[anonteam_348_187.sha224] = 64,
		[anonteam_348_187.sha256] = 64,
		[anonteam_348_187.sha512_224] = 128,
		[anonteam_348_187.sha512_256] = 128,
		[anonteam_348_187.sha384] = 128,
		[anonteam_348_187.sha512] = 128
	}

	return anonteam_348_187
end)()
local anonteam_0_128 = {
	gamesense = (function()
		local anonteam_415_0 = anonteam_0_0.new
		local anonteam_415_1 = anonteam_0_0.cast
		local anonteam_415_2 = anonteam_0_0.cdef
		local anonteam_415_3 = anonteam_0_0.typeof
		local anonteam_415_4 = anonteam_0_1.band
		local anonteam_415_5 = anonteam_0_1.bor
		local anonteam_415_6 = anonteam_0_1.bxor
		local anonteam_415_7 = anonteam_0_1.bnot
		local anonteam_415_8 = anonteam_0_1.lshift
		local anonteam_415_9 = anonteam_0_1.rshift
		local anonteam_415_10 = anonteam_0_1.ror
		local anonteam_415_11 = anonteam_0_1.rol

		local function anonteam_415_12(arg_416_0)
			return anonteam_415_4(anonteam_415_9(arg_416_0, 16), 65535)
		end

		local function anonteam_415_13(arg_417_0, arg_417_1)
			arg_417_0 = anonteam_415_4(arg_417_0, 65535)
			arg_417_0 = anonteam_415_5(arg_417_0, anonteam_415_8(arg_417_0, 16))

			return anonteam_415_4(anonteam_415_10(arg_417_0, arg_417_1), 65535)
		end

		local function anonteam_415_14(arg_418_0, arg_418_1)
			return anonteam_415_5(anonteam_415_9(arg_418_0, arg_418_1), anonteam_415_8(arg_418_0, 32 - arg_418_1))
		end

		local function anonteam_415_15(arg_419_0, arg_419_1)
			arg_419_0 = anonteam_415_4(arg_419_0, 65535)

			return anonteam_415_4(anonteam_415_5(anonteam_415_8(arg_419_0, arg_419_1), anonteam_415_9(arg_419_0, 16 - arg_419_1)), 65535)
		end

		local anonteam_415_16 = anonteam_415_0("uint8_t[24]")
		local anonteam_415_17 = anonteam_415_1("uint16_t*", anonteam_415_16)
		local anonteam_415_18 = anonteam_415_1("uint32_t*", anonteam_415_16)

		local function anonteam_415_19(arg_420_0, arg_420_1)
			local anonteam_420_0 = anonteam_0_126(arg_420_1)

			anonteam_415_18[0] = arg_420_0[0].xuid_low
			anonteam_415_18[1] = arg_420_0[0].xuid_high
			anonteam_415_18[2] = arg_420_0[0].section_number
			anonteam_415_18[3] = arg_420_0[0].sequence_bytes
			anonteam_415_18[4] = arg_420_0[0].uncompressed_sample_offset

			local anonteam_420_1 = {
				[0] = 94,
				4,
				184,
				28,
				143,
				210,
				241,
				56,
				207,
				171,
				136,
				61,
				194,
				59,
				115,
				88,
				65,
				204,
				6,
				249,
				32,
				68,
				121,
				77,
				172,
				47,
				202,
				150,
				217,
				237,
				34,
				247,
				44,
				244,
				67,
				147,
				13,
				208,
				70,
				45,
				141,
				42,
				180,
				225,
				12,
				53,
				89,
				16,
				114,
				18,
				236,
				165,
				79,
				188,
				174,
				58,
				71,
				102,
				205,
				40,
				160,
				104,
				154,
				181,
				92,
				99,
				246,
				183,
				36,
				43,
				195,
				51,
				90,
				81,
				76,
				140,
				49,
				212,
				177,
				159,
				122,
				86,
				235,
				82,
				112,
				253,
				2,
				135,
				84,
				151,
				232,
				83,
				10,
				96,
				120,
				29,
				145,
				179,
				134,
				191,
				98,
				189,
				201,
				199,
				7,
				46,
				80,
				106,
				105,
				62,
				190,
				162,
				166,
				22,
				119,
				26,
				196,
				238,
				87,
				175,
				146,
				164,
				176,
				113,
				9,
				173,
				152,
				41,
				206,
				25,
				224,
				54,
				198,
				220,
				230,
				107,
				211,
				223,
				148,
				95,
				131,
				21,
				52,
				234,
				153,
				33,
				221,
				192,
				19,
				11,
				254,
				111,
				66,
				155,
				75,
				50,
				64,
				219,
				222,
				109,
				14,
				27,
				124,
				85,
				255,
				91,
				158,
				39,
				57,
				103,
				138,
				5,
				73,
				193,
				37,
				30,
				31,
				116,
				228,
				8,
				216,
				110,
				127,
				203,
				245,
				242,
				137,
				250,
				38,
				17,
				72,
				169,
				125,
				167,
				200,
				142,
				243,
				23,
				35,
				93,
				128,
				197,
				48,
				74,
				130,
				1,
				240,
				251,
				182,
				144,
				185,
				108,
				209,
				163,
				0,
				15,
				20,
				215,
				161,
				129,
				170,
				63,
				132,
				60,
				252,
				126,
				239,
				229,
				187,
				139,
				213,
				186,
				218,
				156,
				149,
				231,
				69,
				157,
				55,
				24,
				101,
				100,
				214,
				117,
				178,
				226,
				133,
				233,
				248,
				78,
				118,
				123,
				168,
				3,
				97,
				227
			}
			local anonteam_420_2 = 7

			for iter_420_0 = 0, 20 do
				local anonteam_420_3 = anonteam_420_1[iter_420_0 + 129]

				anonteam_420_1[iter_420_0 + 129] = anonteam_420_1[anonteam_415_4(anonteam_420_2 + anonteam_420_3, 255)]
				anonteam_420_1[anonteam_415_4(anonteam_420_2 + anonteam_420_3, 255)] = anonteam_420_3
				anonteam_420_2 = anonteam_415_4(anonteam_420_2 + anonteam_420_3, 255)
				anonteam_415_16[iter_420_0] = anonteam_415_6(anonteam_415_16[iter_420_0], anonteam_420_1[anonteam_415_4(anonteam_420_3 + anonteam_420_1[iter_420_0 + 129], 255)])
			end

			local anonteam_420_4 = 0
			local anonteam_420_5 = 0
			local anonteam_420_6 = 0
			local anonteam_420_7 = 0
			local anonteam_420_8 = 0
			local anonteam_420_9 = 0
			local anonteam_420_10 = 0
			local anonteam_420_11 = 0
			local anonteam_420_12 = 0
			local anonteam_420_13 = 0

			for iter_420_1 = 0, 4 do
				local anonteam_420_14 = 2 * iter_420_1 + 1
				local anonteam_420_15 = anonteam_415_17[anonteam_420_14]
				local anonteam_420_16 = anonteam_415_17[anonteam_420_14 + 1]
				local anonteam_420_17 = 2446691973
				local anonteam_420_18 = anonteam_420_15
				local anonteam_420_19 = anonteam_420_16

				for iter_420_2 = 1, 15 do
					local anonteam_420_20 = anonteam_415_11(anonteam_420_17, 1)
					local anonteam_420_21 = anonteam_415_13(anonteam_420_19 - anonteam_420_17, anonteam_415_4(anonteam_420_18, 15))

					anonteam_420_17 = anonteam_415_11(anonteam_420_17, 2)
					anonteam_420_19 = anonteam_415_4(anonteam_415_6(anonteam_420_18, anonteam_420_21), 65535)
					anonteam_420_11 = anonteam_415_4(anonteam_415_6(anonteam_420_19, anonteam_415_13(anonteam_420_18 - anonteam_420_20, anonteam_415_4(anonteam_420_19, 15))), 65535)
					anonteam_420_18 = anonteam_415_4(anonteam_420_11, 65535)
				end

				anonteam_415_17[anonteam_420_14] = anonteam_415_6(anonteam_420_12, anonteam_420_11 - anonteam_415_11(anonteam_420_17, 1))
				anonteam_415_17[anonteam_420_14 + 1] = anonteam_415_4(anonteam_415_6(anonteam_420_13, anonteam_420_19 - anonteam_420_17), 65535)
				anonteam_420_12 = anonteam_420_15
				anonteam_420_13 = anonteam_420_16
			end

			local anonteam_420_22 = anonteam_415_18[0]
			local anonteam_420_23 = anonteam_415_18[1]
			local anonteam_420_24 = anonteam_415_18[2]
			local anonteam_420_25 = anonteam_415_6(anonteam_420_23, anonteam_420_0.user_id)
			local anonteam_420_26 = anonteam_415_6(anonteam_420_24, arg_420_1)
			local anonteam_420_27 = anonteam_415_6(anonteam_415_12(anonteam_420_0.xuid_low), anonteam_415_12(anonteam_420_22)) == 9252

			anonteam_415_18[0] = anonteam_420_22
			anonteam_415_18[1] = anonteam_420_25
			anonteam_415_18[2] = anonteam_420_26

			if anonteam_420_27 then
				local anonteam_420_28 = {}

				for iter_420_3 = 0, 20 do
					anonteam_420_28[iter_420_3 + 1] = anonteam_415_16[iter_420_3]
				end

				local anonteam_420_29 = anonteam_0_48.new(anonteam_420_28)

				anonteam_420_29:read_bits(32)
				anonteam_420_29:read_bits(32)

				local anonteam_420_30 = anonteam_420_29:read_bits(7) + 1

				anonteam_420_29:read_bits(9)

				local anonteam_420_31 = anonteam_420_29:read_coord()
				local anonteam_420_32 = anonteam_420_29:read_coord()
				local anonteam_420_33 = anonteam_420_29:read_coord()

				if anonteam_420_31 < -16384 or anonteam_420_31 > 16384 or anonteam_420_32 < -16384 or anonteam_420_32 > 16384 or anonteam_420_33 < -16384 or anonteam_420_33 > 16384 then
					return nil
				end

				if not anonteam_0_51.is_player_valid(anonteam_420_30) then
					return nil
				end

				local anonteam_420_34 = anonteam_0_51.get_tick_count()

				if math.abs(anonteam_420_34 - tonumber(anonteam_420_25)) > 32 then
					return nil
				end

				return {
					entity = anonteam_420_30,
					tickcount = tonumber(anonteam_420_25),
					x = anonteam_420_31,
					y = anonteam_420_32,
					z = anonteam_420_33
				}
			end

			return nil
		end

		local function anonteam_415_20(arg_421_0)
			local anonteam_421_0 = 0
			local anonteam_421_1 = 0
			local anonteam_421_2 = 0
			local anonteam_421_3 = 0
			local anonteam_421_4 = 0
			local anonteam_421_5 = 3370829634
			local anonteam_421_6 = anonteam_415_14(anonteam_421_5, 1)

			for iter_421_0 = 0, 4 do
				local anonteam_421_7 = 2 * iter_421_0 + 1
				local anonteam_421_8 = anonteam_415_4(anonteam_421_5 + anonteam_415_6(anonteam_421_1, arg_421_0[anonteam_421_7]), 65535)
				local anonteam_421_9 = anonteam_415_14(anonteam_421_6, 1)

				anonteam_421_0 = anonteam_415_4(anonteam_421_6 + anonteam_415_6(anonteam_421_0, arg_421_0[anonteam_421_7 + 1]), 65535)

				local anonteam_421_10 = 15

				while anonteam_421_10 ~= 0 do
					anonteam_421_3 = anonteam_415_4(anonteam_421_9 + anonteam_415_15(anonteam_415_6(anonteam_421_8, anonteam_421_0), anonteam_415_4(anonteam_421_0, 15)), 65535)

					local anonteam_421_11 = anonteam_415_14(anonteam_421_9, 1)

					anonteam_421_8 = anonteam_421_3
					anonteam_421_0 = anonteam_415_4(anonteam_421_11 + anonteam_415_15(anonteam_415_6(anonteam_421_3, anonteam_421_0), anonteam_415_4(anonteam_421_3, 15)), 65535)
					anonteam_421_9 = anonteam_415_14(anonteam_421_11, 1)
					anonteam_421_10 = anonteam_421_10 - 1
				end

				anonteam_421_1 = anonteam_421_3
				arg_421_0[anonteam_421_7] = anonteam_421_3
				arg_421_0[anonteam_421_7 + 1] = anonteam_421_0
			end
		end

		local function anonteam_415_21(arg_422_0, arg_422_1)
			local anonteam_422_0 = anonteam_0_126(arg_422_1)
			local anonteam_422_1 = anonteam_0_48.new({
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0
			})

			anonteam_422_1:write_bits(0, 32)
			anonteam_422_1:write_bits(0, 32)
			anonteam_422_1:write_bits(arg_422_0.entity - 1, 7)
			anonteam_422_1:write_bits(511, 9)
			anonteam_422_1:write_coord(arg_422_0.x)
			anonteam_422_1:write_coord(arg_422_0.y)
			anonteam_422_1:write_coord(arg_422_0.z)

			local anonteam_422_2 = anonteam_415_1("uint8_t*", anonteam_422_1:get_raw_buffer())
			local anonteam_422_3 = anonteam_415_1(anonteam_0_119, anonteam_422_2)
			local anonteam_422_4 = anonteam_415_1("uint16_t*", anonteam_422_2)

			anonteam_422_4[0] = math.random(0, 65535)
			anonteam_422_4[1] = 9252
			anonteam_422_3[0].xuid_high = arg_422_0.tickcount
			anonteam_422_4[1] = anonteam_415_6(anonteam_422_4[1], anonteam_415_12(anonteam_422_0.xuid_low))
			anonteam_422_3[0].xuid_high = anonteam_415_6(anonteam_422_3[0].xuid_high, anonteam_422_0.user_id)
			anonteam_422_3[0].section_number = anonteam_415_6(anonteam_422_3[0].section_number, arg_422_1)

			anonteam_415_20(anonteam_422_4)

			local anonteam_422_5 = {
				[0] = 94,
				4,
				184,
				28,
				143,
				210,
				241,
				56,
				207,
				171,
				136,
				61,
				194,
				59,
				115,
				88,
				65,
				204,
				6,
				249,
				32,
				68,
				121,
				77,
				172,
				47,
				202,
				150,
				217,
				237,
				34,
				247,
				44,
				244,
				67,
				147,
				13,
				208,
				70,
				45,
				141,
				42,
				180,
				225,
				12,
				53,
				89,
				16,
				114,
				18,
				236,
				165,
				79,
				188,
				174,
				58,
				71,
				102,
				205,
				40,
				160,
				104,
				154,
				181,
				92,
				99,
				246,
				183,
				36,
				43,
				195,
				51,
				90,
				81,
				76,
				140,
				49,
				212,
				177,
				159,
				122,
				86,
				235,
				82,
				112,
				253,
				2,
				135,
				84,
				151,
				232,
				83,
				10,
				96,
				120,
				29,
				145,
				179,
				134,
				191,
				98,
				189,
				201,
				199,
				7,
				46,
				80,
				106,
				105,
				62,
				190,
				162,
				166,
				22,
				119,
				26,
				196,
				238,
				87,
				175,
				146,
				164,
				176,
				113,
				9,
				173,
				152,
				41,
				206,
				25,
				224,
				54,
				198,
				220,
				230,
				107,
				211,
				223,
				148,
				95,
				131,
				21,
				52,
				234,
				153,
				33,
				221,
				192,
				19,
				11,
				254,
				111,
				66,
				155,
				75,
				50,
				64,
				219,
				222,
				109,
				14,
				27,
				124,
				85,
				255,
				91,
				158,
				39,
				57,
				103,
				138,
				5,
				73,
				193,
				37,
				30,
				31,
				116,
				228,
				8,
				216,
				110,
				127,
				203,
				245,
				242,
				137,
				250,
				38,
				17,
				72,
				169,
				125,
				167,
				200,
				142,
				243,
				23,
				35,
				93,
				128,
				197,
				48,
				74,
				130,
				1,
				240,
				251,
				182,
				144,
				185,
				108,
				209,
				163,
				0,
				15,
				20,
				215,
				161,
				129,
				170,
				63,
				132,
				60,
				252,
				126,
				239,
				229,
				187,
				139,
				213,
				186,
				218,
				156,
				149,
				231,
				69,
				157,
				55,
				24,
				101,
				100,
				214,
				117,
				178,
				226,
				133,
				233,
				248,
				78,
				118,
				123,
				168,
				3,
				97,
				227
			}
			local anonteam_422_6 = 7

			for iter_422_0 = 0, 20 do
				local anonteam_422_7 = anonteam_422_5[iter_422_0 + 129]

				anonteam_422_5[iter_422_0 + 129] = anonteam_422_5[anonteam_415_4(anonteam_422_6 + anonteam_422_7, 255)]
				anonteam_422_5[anonteam_415_4(anonteam_422_6 + anonteam_422_7, 255)] = anonteam_422_7
				anonteam_422_6 = anonteam_415_4(anonteam_422_6 + anonteam_422_7, 255)
				anonteam_422_2[iter_422_0] = anonteam_415_6(anonteam_422_2[iter_422_0], anonteam_422_5[anonteam_415_4(anonteam_422_7 + anonteam_422_5[iter_422_0 + 129], 255)])
			end

			local anonteam_422_8 = anonteam_422_3[0].sequence_bytes

			anonteam_422_3[0].sequence_bytes = anonteam_422_3[0].section_number
			anonteam_422_3[0].section_number = anonteam_422_8

			return anonteam_415_1(anonteam_0_65, anonteam_422_3)
		end

		return {
			decode = anonteam_415_19,
			encode = anonteam_415_21
		}
	end)(),
	primordial = (function()
		local anonteam_423_0 = anonteam_0_0.new("int16_t[1]")

		local function anonteam_423_1(arg_424_0, arg_424_1)
			anonteam_423_0[0] = anonteam_0_8(arg_424_0, arg_424_1)

			return tonumber(anonteam_0_3("float", anonteam_423_0[0]))
		end

		local function anonteam_423_2(arg_425_0)
			local anonteam_425_0 = anonteam_0_8(arg_425_0.eidp1, arg_425_0.mutualkey)
			local anonteam_425_1 = anonteam_423_1(arg_425_0.xored_x, arg_425_0.loc_xor_key)
			local anonteam_425_2 = anonteam_423_1(arg_425_0.xored_y, arg_425_0.loc_xor_key)
			local anonteam_425_3 = anonteam_423_1(arg_425_0.xored_z, arg_425_0.loc_xor_key)
			local anonteam_425_4 = anonteam_0_8(arg_425_0.keyp1, arg_425_0.keyp2) - arg_425_0.mutualkey

			if anonteam_425_0 == nil or not anonteam_0_51.is_player_valid(anonteam_425_0) then
				return nil
			end

			if anonteam_0_51.is_player_dormant(anonteam_425_0) then
				return nil
			end

			local anonteam_425_5 = anonteam_0_51.get_player_position(anonteam_425_0)

			if math.abs(anonteam_425_5.x - anonteam_425_1) > 256 or math.abs(anonteam_425_5.y - anonteam_425_2) > 256 or math.abs(anonteam_425_5.z - anonteam_425_3) > 256 then
				return nil
			end

			return {
				entity = anonteam_425_0,
				x = anonteam_425_1,
				y = anonteam_425_2,
				z = anonteam_425_3,
				key = anonteam_425_4
			}
		end

		local function anonteam_423_3(arg_426_0)
			local anonteam_426_0 = anonteam_0_0.new(anonteam_0_94)

			anonteam_426_0[0].mutualkey = 0
			anonteam_426_0[0].eidp1 = arg_426_0[0].entity
			anonteam_426_0[0].keyp2 = 0
			anonteam_426_0[0].keyp1 = arg_426_0[0].key
			anonteam_426_0[0].loc_xor_key = 0
			anonteam_426_0[0].xored_x = arg_426_0[0].x
			anonteam_426_0[0].xored_y = arg_426_0[0].y
			anonteam_426_0[0].xored_z = arg_426_0[0].z

			return anonteam_426_0
		end

		return {
			decode = anonteam_423_2,
			encode = anonteam_423_3
		}
	end)(),
	rifk7 = (function()
		local function anonteam_427_0(arg_428_0, arg_428_1)
			local anonteam_428_0 = tonumber(anonteam_0_3("int32_t", arg_428_0[0].xuid_low))
			local anonteam_428_1 = anonteam_428_0 + 28
			local anonteam_428_2 = anonteam_428_0 + 31

			if anonteam_428_1 >= 0 then
				anonteam_428_2 = anonteam_428_1
			end

			local anonteam_428_3 = anonteam_0_11(anonteam_428_2, 2) - arg_428_1 - arg_428_1 + 54
			local anonteam_428_4 = anonteam_0_7(anonteam_428_3, 64)

			if anonteam_428_4 ~= 124 and anonteam_428_4 ~= 252 then
				return false
			end

			return true
		end

		return {
			decode = anonteam_427_0
		}
	end)(),
	legion = (function()
		local anonteam_429_0 = anonteam_0_0.new("uint8_t[8]")

		local function anonteam_429_1(arg_430_0, arg_430_1)
			local anonteam_430_0 = anonteam_0_126(arg_430_1).user_id

			anonteam_429_0[0] = anonteam_0_8(arg_430_0[0].legion_xor[0], anonteam_430_0)
			anonteam_429_0[1] = anonteam_0_8(arg_430_0[0].legion_xor[1], anonteam_430_0)
			anonteam_429_0[2] = anonteam_0_8(arg_430_0[0].legion_xor[2], anonteam_430_0)
			anonteam_429_0[3] = anonteam_0_8(arg_430_0[0].legion_xor[3], anonteam_430_0)
			anonteam_429_0[4] = anonteam_0_8(arg_430_0[0].legion_xor[4], anonteam_430_0)
			anonteam_429_0[5] = anonteam_0_8(arg_430_0[0].legion_xor[5], anonteam_430_0)
			anonteam_429_0[6] = anonteam_0_8(arg_430_0[0].legion_xor[6], anonteam_430_0)
			anonteam_429_0[7] = anonteam_0_8(arg_430_0[0].legion_xor[7], anonteam_430_0)

			return (anonteam_0_3("char*", anonteam_429_0))
		end

		local anonteam_429_2 = anonteam_0_2("uint8_t[6]")

		local function anonteam_429_3(arg_431_0, arg_431_1)
			local anonteam_431_0 = anonteam_0_2(anonteam_0_109)
			local anonteam_431_1 = anonteam_0_126(arg_431_1).user_id

			anonteam_429_2[0] = anonteam_0_8(arg_431_0[0].legion[0], anonteam_431_1)
			anonteam_429_2[1] = anonteam_0_8(arg_431_0[0].legion[1], anonteam_431_1)
			anonteam_429_2[2] = anonteam_0_8(arg_431_0[0].legion[2], anonteam_431_1)
			anonteam_429_2[3] = anonteam_0_8(arg_431_0[0].legion[3], anonteam_431_1)
			anonteam_429_2[4] = anonteam_0_8(arg_431_0[0].legion[4], anonteam_431_1)
			anonteam_429_2[5] = anonteam_0_8(arg_431_0[0].legion[5], anonteam_431_1)
			anonteam_431_0[0].legion_xor[0] = anonteam_429_2[0]
			anonteam_431_0[0].legion_xor[1] = anonteam_429_2[1]
			anonteam_431_0[0].legion_xor[2] = anonteam_429_2[2]
			anonteam_431_0[0].legion_xor[3] = anonteam_429_2[3]
			anonteam_431_0[0].legion_xor[4] = anonteam_429_2[4]
			anonteam_431_0[0].legion_xor[5] = anonteam_429_2[5]
			anonteam_431_0[0].random = arg_431_0[0].random

			return anonteam_431_0
		end

		return {
			decode = anonteam_429_1,
			encode = anonteam_429_3
		}
	end)(),
	pandora = (function()
		local function anonteam_432_0(arg_433_0)
			local anonteam_433_0 = arg_433_0[0].identifier

			if anonteam_433_0 ~= 6969 and anonteam_433_0 ~= 420187 then
				return false
			end

			local anonteam_433_1 = arg_433_0[0].entityId
			local anonteam_433_2 = arg_433_0[0].x
			local anonteam_433_3 = arg_433_0[0].y
			local anonteam_433_4 = arg_433_0[0].z

			if anonteam_433_1 > 64 or anonteam_433_1 < 0 or not anonteam_0_51.is_player_valid(anonteam_433_1) then
				return false
			end

			if anonteam_0_51.is_player_dormant(anonteam_433_1) then
				return false
			end

			local anonteam_433_5 = anonteam_0_51.get_player_position(anonteam_433_1)

			if math.abs(anonteam_433_5.x - anonteam_433_2) > 256 or math.abs(anonteam_433_5.y - anonteam_433_3) > 256 or math.abs(anonteam_433_5.z - anonteam_433_4) > 256 then
				return false
			end

			return true
		end

		return {
			decode = anonteam_432_0
		}
	end)(),
	airflow = (function()
		local function anonteam_434_0(arg_435_0)
			return anonteam_0_6(arg_435_0, 65535)
		end

		local function anonteam_434_1(arg_436_0)
			return anonteam_0_6(anonteam_0_11(arg_436_0, 16), 65535)
		end

		local function anonteam_434_2(arg_437_0)
			return anonteam_0_6(anonteam_0_11(arg_437_0, 24), 255)
		end

		local function anonteam_434_3(arg_438_0)
			return anonteam_0_6(anonteam_0_11(arg_438_0, 8), 255)
		end

		local function anonteam_434_4(arg_439_0, arg_439_1)
			local anonteam_439_0 = arg_439_0

			for iter_439_0 = 0, 31 do
				if anonteam_0_6(anonteam_439_0, anonteam_0_10(1, iter_439_0)) == anonteam_0_6(anonteam_0_10(1, iter_439_0), arg_439_1) then
					anonteam_439_0 = anonteam_0_6(anonteam_439_0, anonteam_0_9(anonteam_0_10(1, iter_439_0)))
				else
					anonteam_439_0 = anonteam_0_7(anonteam_439_0, anonteam_0_10(1, iter_439_0))
				end
			end

			return anonteam_439_0
		end

		local anonteam_434_5 = anonteam_0_36({
			[175] = "Airflow Old",
			[102] = "Floridahook",
			[153] = "Weave",
			[180] = "Karnazity",
			[187] = "Boss",
			[250] = "Airflow",
			[220] = "Furcore",
			[186] = "Airflow Boss"
		})

		local function anonteam_434_6(arg_440_0)
			if arg_440_0 <= 32767 then
				return arg_440_0
			else
				return arg_440_0 - 65536
			end
		end

		local anonteam_434_7 = anonteam_0_2("uint8_t[24]")
		local anonteam_434_8 = anonteam_0_3("uint16_t*", anonteam_434_7)
		local anonteam_434_9 = anonteam_0_3("uint32_t*", anonteam_434_7)

		local function anonteam_434_10(arg_441_0)
			if arg_441_0[0].section_number == 0 or arg_441_0[0].sequence_bytes == 0 or arg_441_0[0].uncompressed_sample_offset == 0 then
				return nil
			end

			anonteam_434_9[0] = arg_441_0[0].xuid_low
			anonteam_434_9[1] = arg_441_0[0].xuid_high
			anonteam_434_9[2] = arg_441_0[0].sequence_bytes
			anonteam_434_9[3] = arg_441_0[0].section_number
			anonteam_434_9[4] = arg_441_0[0].uncompressed_sample_offset

			local anonteam_441_0 = {}

			for iter_441_0 = 0, 20 do
				anonteam_441_0[iter_441_0 + 1] = anonteam_434_7[iter_441_0]
			end

			local anonteam_441_1 = anonteam_0_48.new(anonteam_441_0)
			local anonteam_441_2 = anonteam_441_1:read_bits(8)
			local anonteam_441_3 = anonteam_441_1:read_bits(8)
			local anonteam_441_4 = anonteam_441_1:read_bits(16)
			local anonteam_441_5 = anonteam_441_1:read_bits(8)
			local anonteam_441_6 = anonteam_434_6(tonumber(anonteam_0_0.cast("float", anonteam_441_1:read_bits(16))))
			local anonteam_441_7 = anonteam_434_6(tonumber(anonteam_0_0.cast("float", anonteam_441_1:read_bits(16))))
			local anonteam_441_8 = anonteam_434_6(tonumber(anonteam_0_0.cast("float", anonteam_441_1:read_bits(16))))
			local anonteam_441_9 = anonteam_441_1:read_bits(8)
			local anonteam_441_10 = anonteam_441_1:read_bits(32)

			if anonteam_441_4 ~= 57005 or anonteam_441_2 ~= 241 then
				return nil
			end

			if anonteam_434_5[anonteam_441_3] == nil then
				return nil
			end

			if anonteam_441_5 > 64 or anonteam_441_5 < 0 or not anonteam_0_51.is_player_valid(anonteam_441_5) then
				return nil
			end

			if anonteam_0_51.is_player_dormant(anonteam_441_5) then
				return nil
			end

			local anonteam_441_11 = anonteam_0_51.get_player_position(anonteam_441_5)

			if math.abs(anonteam_441_11.x - anonteam_441_6) > 256 or math.abs(anonteam_441_11.y - anonteam_441_7) > 256 or math.abs(anonteam_441_11.z - anonteam_441_8) > 256 then
				return nil
			end

			local anonteam_441_12 = anonteam_0_6(anonteam_0_51.get_tick_count(), 65535)

			if math.abs(anonteam_441_12 - anonteam_441_10) > 32 then
				return nil
			end

			return {
				cheat_id = anonteam_441_3,
				id = anonteam_441_5,
				x = anonteam_441_6,
				y = anonteam_441_7,
				z = anonteam_441_8,
				tick_count = anonteam_441_10,
				health = anonteam_441_9
			}
		end

		local function anonteam_434_11(arg_442_0)
			local anonteam_442_0 = anonteam_0_48.new({
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0
			})

			anonteam_442_0:write_bits(241, 8)
			anonteam_442_0:write_bits(arg_442_0.cheat_id, 8)
			anonteam_442_0:write_bits(57005, 16)
			anonteam_442_0:write_bits(arg_442_0.id, 8)
			anonteam_442_0:write_bits(arg_442_0.x, 16)
			anonteam_442_0:write_bits(arg_442_0.y, 16)
			anonteam_442_0:write_bits(arg_442_0.z, 16)
			anonteam_442_0:write_bits(arg_442_0.health, 8)
			anonteam_442_0:write_bits(anonteam_0_6(arg_442_0.tick_count, 65535), 32)
			anonteam_442_0:write_bits(16515072, 24)
			anonteam_442_0:write_bits(arg_442_0.boss, 8)

			local anonteam_442_1 = anonteam_0_3("uint8_t*", anonteam_442_0:get_raw_buffer())

			return anonteam_0_3(anonteam_0_65, anonteam_442_1)
		end

		return {
			cheat_type = anonteam_434_5,
			decode = anonteam_434_10,
			encode = anonteam_434_11
		}
	end)(),
	legendware = (function()
		local function anonteam_443_0(arg_444_0)
			return arg_444_0[0].m_key == 29804 and (arg_444_0[0].t == 1337 or arg_444_0[0].t == 4759537)
		end

		local anonteam_443_1 = anonteam_0_2(anonteam_0_112)

		anonteam_443_1[0].m_key = 29804
		anonteam_443_1[0].t = 1337

		local function anonteam_443_2(arg_445_0)
			return anonteam_443_1
		end

		return {
			decode = anonteam_443_0,
			encode = anonteam_443_2
		}
	end)(),
	nixware = (function()
		local function anonteam_446_0(arg_447_0, arg_447_1)
			local anonteam_447_0 = arg_447_0:read_bits(16)
			local anonteam_447_1 = arg_447_0:read_bits(7) + 1
			local anonteam_447_2 = arg_447_0:read_coord()
			local anonteam_447_3 = arg_447_0:read_coord()
			local anonteam_447_4 = arg_447_0:read_coord()
			local anonteam_447_5 = arg_447_0:read_bits(32)
			local anonteam_447_6 = arg_447_0:read_bits(7)

			arg_447_0:reset()

			if arg_447_1 then
				print("--------------------")
				print("id: " .. anonteam_447_0)
				print("user_id: " .. anonteam_447_1)
				print("x: " .. anonteam_447_2)
				print("y: " .. anonteam_447_3)
				print("z: " .. anonteam_447_4)
				print("tick_count: " .. anonteam_447_5)
				print("health: " .. anonteam_447_6)
				print("--------------------")
			end

			if anonteam_447_0 ~= 48879 then
				return nil
			end

			if anonteam_447_2 < -16384 or anonteam_447_2 > 16384 or anonteam_447_3 < -16384 or anonteam_447_3 > 16384 or anonteam_447_4 < -16384 or anonteam_447_4 > 16384 then
				return nil
			end

			local anonteam_447_7 = anonteam_0_51.get_tick_count()

			if math.abs(anonteam_447_7 - anonteam_447_5) > 32 then
				return nil
			end

			if not anonteam_0_51.is_player_valid(anonteam_447_1) then
				return nil
			end

			if anonteam_0_51.is_player_dormant(anonteam_447_1) then
				return nil
			end

			local anonteam_447_8 = anonteam_0_51.get_player_position(anonteam_447_1)

			if math.abs(anonteam_447_8.x - anonteam_447_2) > 256 or math.abs(anonteam_447_8.y - anonteam_447_3) > 256 or math.abs(anonteam_447_8.z - anonteam_447_4) > 256 then
				return nil
			end

			return {
				id = anonteam_447_0,
				entity_id = anonteam_447_1,
				x = anonteam_447_2,
				y = anonteam_447_3,
				z = anonteam_447_4,
				tickcount = anonteam_447_5,
				health = anonteam_447_6
			}
		end

		local function anonteam_446_1(arg_448_0, arg_448_1)
			arg_448_1:write_bits(arg_448_0.id, 16)
			arg_448_1:write_bits(arg_448_0.entity_id - 1, 7)
			arg_448_1:write_coord(arg_448_0.x)
			arg_448_1:write_coord(arg_448_0.y)
			arg_448_1:write_coord(arg_448_0.z)
			arg_448_1:write_bits(arg_448_0.tick_count, 32)
			arg_448_1:write_bits(arg_448_0.health, 7)

			return arg_448_1
		end

		return {
			decode = anonteam_446_0,
			encode = anonteam_446_1
		}
	end)(),
	plague = (function()
		local function anonteam_449_0(arg_450_0)
			if arg_450_0[0].id ~= 907415600 then
				return false
			end

			local anonteam_450_0 = arg_450_0[0].entity
			local anonteam_450_1 = arg_450_0[0].x
			local anonteam_450_2 = arg_450_0[0].y
			local anonteam_450_3 = arg_450_0[0].z

			if anonteam_450_0 > 64 or anonteam_450_0 < 0 or not anonteam_0_51.is_player_valid(anonteam_450_0) then
				return false
			end

			if anonteam_0_51.is_player_dormant(anonteam_450_0) then
				return false
			end

			local anonteam_450_4 = anonteam_0_51.get_player_position(anonteam_450_0)

			if math.abs(anonteam_450_4.x - anonteam_450_1) > 256 or math.abs(anonteam_450_4.y - anonteam_450_2) > 256 or math.abs(anonteam_450_4.z - anonteam_450_3) > 256 then
				return false
			end

			return true
		end

		return {
			decode = anonteam_449_0
		}
	end)(),
	onetap = (function()
		local anonteam_451_0 = anonteam_0_0.new
		local anonteam_451_1 = anonteam_0_0.cast
		local anonteam_451_2 = anonteam_0_0.cdef
		local anonteam_451_3 = anonteam_0_0.typeof
		local anonteam_451_4 = anonteam_0_1.band
		local anonteam_451_5 = anonteam_0_1.bor
		local anonteam_451_6 = anonteam_0_1.bxor
		local anonteam_451_7 = anonteam_0_1.bnot
		local anonteam_451_8 = anonteam_0_1.lshift
		local anonteam_451_9 = anonteam_0_1.rshift
		local anonteam_451_10 = anonteam_0_1.ror
		local anonteam_451_11 = anonteam_0_1.rol
		local anonteam_451_12 = anonteam_451_0("uint8_t[20]")
		local anonteam_451_13 = anonteam_451_1("uint16_t*", anonteam_451_12)
		local anonteam_451_14 = anonteam_451_1("uint32_t*", anonteam_451_12)

		local function anonteam_451_15(arg_452_0)
			if arg_452_0 <= 32767 then
				return arg_452_0
			else
				return arg_452_0 - 65536
			end
		end

		local anonteam_451_16 = 1401050875
		local anonteam_451_17 = 359866515
		local anonteam_451_18 = 928134322
		local anonteam_451_19 = {
			anonteam_451_4(anonteam_451_17, 255),
			anonteam_451_4(anonteam_451_9(anonteam_451_17, 8), 255),
			anonteam_451_4(anonteam_451_9(anonteam_451_17, 16), 255),
			anonteam_451_4(anonteam_451_9(anonteam_451_17, 24), 255)
		}
		local anonteam_451_20 = {
			anonteam_451_4(anonteam_451_18, 255),
			anonteam_451_4(anonteam_451_9(anonteam_451_18, 8), 255),
			anonteam_451_4(anonteam_451_9(anonteam_451_18, 16), 255),
			anonteam_451_4(anonteam_451_9(anonteam_451_18, 24), 255)
		}

		local function anonteam_451_21(arg_453_0, arg_453_1)
			anonteam_451_14[0] = arg_453_0[0].xuid_low
			anonteam_451_14[1] = arg_453_0[0].xuid_high
			anonteam_451_14[2] = arg_453_0[0].sequence_bytes
			anonteam_451_14[3] = arg_453_0[0].section_number
			anonteam_451_14[4] = arg_453_0[0].uncompressed_sample_offset

			for iter_453_0 = 0, 19 do
				anonteam_451_12[iter_453_0] = anonteam_451_6(anonteam_451_12[iter_453_0], arg_453_1)
			end

			for iter_453_1 = 1, 4 do
				anonteam_451_12[iter_453_1 + 3] = anonteam_451_6(anonteam_451_12[iter_453_1 + 3], anonteam_451_19[iter_453_1])
			end

			for iter_453_2 = 1, 4 do
				anonteam_451_12[iter_453_2 + 7] = anonteam_451_6(anonteam_451_12[iter_453_2 + 7], anonteam_451_20[iter_453_2])
			end

			for iter_453_3 = 1, 4 do
				anonteam_451_12[iter_453_3 + 11] = anonteam_451_6(anonteam_451_12[iter_453_3 + 11], anonteam_451_19[iter_453_3])
			end

			for iter_453_4 = 1, 4 do
				anonteam_451_12[iter_453_4 + 15] = anonteam_451_6(anonteam_451_12[iter_453_4 + 15], anonteam_451_20[iter_453_4])
			end

			local anonteam_453_0 = anonteam_0_0.cast(anonteam_0_92, anonteam_451_12)[0]

			if anonteam_453_0.id == anonteam_451_16 and anonteam_0_51.is_player_valid(anonteam_453_0.entity_id) then
				local anonteam_453_1 = {}

				for iter_453_5 = 0, 20 do
					anonteam_453_1[iter_453_5 + 1] = anonteam_451_12[iter_453_5]
				end

				local anonteam_453_2 = anonteam_0_48.new(anonteam_453_1)
				local anonteam_453_3 = anonteam_451_4(anonteam_0_51.get_tick_count(), 255)

				anonteam_453_2:read_bits(32)

				local anonteam_453_4 = anonteam_453_2:read_bits(8)
				local anonteam_453_5 = anonteam_453_2:read_bits(8)
				local anonteam_453_6 = anonteam_451_15(tonumber(anonteam_0_0.cast("float", anonteam_453_2:read_bits(16))))
				local anonteam_453_7 = anonteam_451_15(tonumber(anonteam_0_0.cast("float", anonteam_453_2:read_bits(16))))
				local anonteam_453_8 = anonteam_451_15(tonumber(anonteam_0_0.cast("float", anonteam_453_2:read_bits(16))))

				if anonteam_0_51.is_player_dormant(anonteam_453_4) then
					return nil
				end

				local anonteam_453_9 = anonteam_0_51.get_player_position(anonteam_453_4)

				if math.abs(anonteam_453_9.x - anonteam_453_6) > 256 or math.abs(anonteam_453_9.y - anonteam_453_7) > 256 or math.abs(anonteam_453_9.z - anonteam_453_8) > 256 then
					return nil
				end

				if math.abs(anonteam_453_3 - anonteam_453_5) > 32 then
					return nil
				end

				return {
					entity = anonteam_453_0.entity_id,
					tick_count_byte = anonteam_453_5,
					x = anonteam_453_6,
					y = anonteam_453_7,
					z = anonteam_453_8
				}
			end

			return nil
		end

		local function anonteam_451_22(arg_454_0, arg_454_1)
			local anonteam_454_0 = anonteam_451_0(anonteam_0_91)
			local anonteam_454_1 = anonteam_451_1("uint8_t*", anonteam_454_0)
			local anonteam_454_2 = anonteam_451_1("uint32_t*", anonteam_454_0)

			anonteam_454_0[0].id = anonteam_451_16
			anonteam_454_0[0].entity_id = arg_454_0.entity
			anonteam_454_0[0].tick_count = anonteam_451_4(arg_454_0.tick_count, 255)
			anonteam_454_0[0].x = arg_454_0.x
			anonteam_454_0[0].y = arg_454_0.y
			anonteam_454_0[0].z = arg_454_0.z

			for iter_454_0 = 1, 4 do
				anonteam_454_1[iter_454_0 + 3] = anonteam_451_6(anonteam_454_1[iter_454_0 + 3], anonteam_451_19[iter_454_0])
			end

			for iter_454_1 = 1, 4 do
				anonteam_454_1[iter_454_1 + 7] = anonteam_451_6(anonteam_454_1[iter_454_1 + 7], anonteam_451_20[iter_454_1])
			end

			for iter_454_2 = 1, 4 do
				anonteam_454_1[iter_454_2 + 11] = anonteam_451_6(anonteam_454_1[iter_454_2 + 11], anonteam_451_19[iter_454_2])
			end

			for iter_454_3 = 1, 4 do
				anonteam_454_1[iter_454_3 + 15] = anonteam_451_6(anonteam_454_1[iter_454_3 + 15], anonteam_451_20[iter_454_3])
			end

			for iter_454_4 = 0, 19 do
				anonteam_454_1[iter_454_4] = anonteam_451_6(anonteam_454_1[iter_454_4], arg_454_1)
			end

			anonteam_454_0[0].pad[0] = arg_454_1
			anonteam_454_0[0].pad[1] = arg_454_1
			anonteam_454_0[0].pad[2] = arg_454_1
			anonteam_454_0[0].pad[3] = arg_454_1
			anonteam_454_0[0].pad[4] = arg_454_1
			anonteam_454_0[0].pad[5] = arg_454_1
			anonteam_454_0[0].pad[6] = arg_454_1
			anonteam_454_0[0].pad[7] = arg_454_1
			anonteam_454_0[0].pad[8] = arg_454_1

			return anonteam_454_0
		end

		return {
			decode = anonteam_451_21,
			encode = anonteam_451_22
		}
	end)(),
	neverlose = (function()
		return {
			decode = function()
				return nil
			end
		}
	end)(),
	ev0lity_old = (function()
		local function anonteam_457_0(arg_458_0)
			if arg_458_0 <= 127 then
				return arg_458_0
			else
				return arg_458_0 - 256
			end
		end

		local function anonteam_457_1(arg_459_0)
			local anonteam_459_0 = anonteam_0_3(anonteam_0_86, arg_459_0)[0]

			if anonteam_459_0 == nil then
				return nil
			end

			if anonteam_459_0.id ~= 32762 and anonteam_459_0.id ~= 32763 and anonteam_459_0.id ~= 32764 and anonteam_459_0.id ~= 32765 then
				return nil
			end

			if anonteam_459_0.x == nil or anonteam_459_0.y == nil or anonteam_459_0.z == nil then
				return nil
			end

			if anonteam_459_0.x < -16384 or anonteam_459_0.x > 16384 or anonteam_459_0.y < -16384 or anonteam_459_0.y > 16384 or anonteam_459_0.z < -16384 or anonteam_459_0.z > 16384 then
				return nil
			end

			if anonteam_459_0.user_id == nil then
				return nil
			end

			local anonteam_459_1

			for iter_459_0, iter_459_1 in pairs(anonteam_0_51.get_players()) do
				local anonteam_459_2 = anonteam_0_126(iter_459_1)

				if anonteam_459_2 ~= nil and anonteam_0_6(anonteam_459_2.user_id, 255) == anonteam_459_0.user_id then
					anonteam_459_1 = iter_459_1

					break
				end
			end

			if anonteam_459_1 == nil or not anonteam_0_51.is_player_valid(anonteam_459_1) then
				return nil
			end

			if anonteam_0_51.is_player_dormant(anonteam_459_1) then
				return nil
			end

			local anonteam_459_3 = anonteam_0_51.get_player_position(anonteam_459_1)

			if math.abs(anonteam_459_3.x - anonteam_459_0.x) > 256 or math.abs(anonteam_459_3.y - anonteam_459_0.y) > 256 or math.abs(anonteam_459_3.z - anonteam_459_0.z) > 256 then
				return nil
			end

			local anonteam_459_4 = anonteam_0_51.get_tick_count()

			if math.abs(anonteam_459_4 - anonteam_459_0.server_tick) > 32 then
				return nil
			end

			local anonteam_459_5 = anonteam_0_51.get_active_weapon_index(anonteam_459_1)

			if anonteam_459_5 == nil then
				return nil
			end

			if anonteam_0_6(anonteam_459_5, 255) ~= anonteam_459_0.weapon_id then
				return nil
			end

			return {
				id = anonteam_459_0.id,
				entity_id = anonteam_459_1,
				x = anonteam_459_0.x,
				y = anonteam_459_0.y,
				z = anonteam_459_0.z,
				tick_count = anonteam_459_0.server_tick
			}
		end

		local function anonteam_457_2(arg_460_0)
			return
		end

		return {
			decode = anonteam_457_1,
			encode = anonteam_457_2
		}
	end)(),
	ev0lity = (function()
		local function anonteam_461_0(arg_462_0)
			if arg_462_0 <= 32767 then
				return arg_462_0
			else
				return arg_462_0 - 65536
			end
		end

		local function anonteam_461_1(arg_463_0, arg_463_1)
			local anonteam_463_0 = anonteam_0_126(arg_463_1)
			local anonteam_463_1 = anonteam_0_6(anonteam_0_8(anonteam_463_0.xuid_high, arg_463_1) % anonteam_463_0.xuid_low, 4294967295)
			local anonteam_463_2 = anonteam_0_7(anonteam_463_1, anonteam_0_6(anonteam_0_8(anonteam_463_0.xuid_high, anonteam_463_0.xuid_low), 65535))
			local anonteam_463_3 = anonteam_0_3("uint8_t*", arg_463_0)
			local anonteam_463_4 = {}

			for iter_463_0 = 0, 20 do
				anonteam_463_4[iter_463_0 + 1] = anonteam_463_3[iter_463_0]
			end

			local anonteam_463_5 = {
				anonteam_0_6(anonteam_463_2, 255),
				anonteam_0_6(anonteam_0_11(anonteam_463_2, 8), 255),
				anonteam_0_6(anonteam_0_11(anonteam_463_2, 16), 255),
				anonteam_0_6(anonteam_0_11(anonteam_463_2, 24), 255)
			}
			local anonteam_463_6 = #anonteam_463_4

			for iter_463_1 = 1, anonteam_463_6 do
				anonteam_463_4[iter_463_1] = anonteam_0_6(anonteam_0_8(anonteam_463_4[iter_463_1], anonteam_463_5[(iter_463_1 - 1) % 4 + 1]), 255)

				if (iter_463_1 - 1) % 4 == 3 then
					anonteam_463_2 = anonteam_0_7(anonteam_0_10(anonteam_463_2, 8), anonteam_0_6(iter_463_1 - 1, 255))
					anonteam_463_5 = {
						anonteam_0_6(anonteam_463_2, 255),
						anonteam_0_6(anonteam_0_11(anonteam_463_2, 8), 255),
						anonteam_0_6(anonteam_0_11(anonteam_463_2, 16), 255),
						anonteam_0_6(anonteam_0_11(anonteam_463_2, 24), 255)
					}
				end
			end

			local anonteam_463_7 = anonteam_0_48.new(anonteam_463_4)
			local anonteam_463_8 = anonteam_463_7:read_bits(16)
			local anonteam_463_9 = anonteam_463_7:read_bits(8)
			local anonteam_463_10 = anonteam_463_7:read_bits(8)
			local anonteam_463_11 = anonteam_461_0(anonteam_463_7:read_bits(16))
			local anonteam_463_12 = anonteam_461_0(anonteam_463_7:read_bits(16))
			local anonteam_463_13 = anonteam_461_0(anonteam_463_7:read_bits(16))
			local anonteam_463_14 = anonteam_463_7:read_bits(16)
			local anonteam_463_15 = anonteam_463_7:read_bits(32)

			if anonteam_463_8 ~= 32762 and anonteam_463_8 ~= 32763 and anonteam_463_8 ~= 32764 and anonteam_463_8 ~= 32765 then
				return nil
			end

			if not anonteam_0_51.is_player_valid(anonteam_463_9) then
				return nil
			end

			if anonteam_463_11 < -16384 or anonteam_463_11 > 16384 or anonteam_463_12 < -16384 or anonteam_463_12 > 16384 or anonteam_463_13 < -16384 or anonteam_463_13 > 16384 then
				return nil
			end

			return {
				id = anonteam_463_8,
				entity_id = anonteam_463_9,
				weapon_id = anonteam_463_10,
				x = anonteam_463_11,
				y = anonteam_463_12,
				z = anonteam_463_13,
				tick_count = anonteam_463_15
			}
		end

		local function anonteam_461_2(arg_464_0, arg_464_1)
			local anonteam_464_0 = anonteam_0_48.new()

			anonteam_464_0:write_bits(arg_464_0.id, 16)
			anonteam_464_0:write_bits(arg_464_0.entity_id, 8)
			anonteam_464_0:write_bits(arg_464_0.weapon_id, 8)
			anonteam_464_0:write_bits(arg_464_0.x, 16)
			anonteam_464_0:write_bits(arg_464_0.y, 16)
			anonteam_464_0:write_bits(arg_464_0.z, 16)
			anonteam_464_0:write_bits(0, 16)
			anonteam_464_0:write_bits(arg_464_0.tick_count, 32)

			local anonteam_464_1 = anonteam_0_126(arg_464_1)
			local anonteam_464_2 = anonteam_0_3("uint8_t*", anonteam_464_0:get_raw_buffer())
			local anonteam_464_3 = anonteam_0_6(anonteam_0_8(anonteam_464_1.xuid_high, arg_464_1) % anonteam_464_1.xuid_low, 4294967295)
			local anonteam_464_4 = anonteam_0_7(anonteam_464_3, anonteam_0_6(anonteam_0_8(anonteam_464_1.xuid_high, anonteam_464_1.xuid_low), 65535))
			local anonteam_464_5 = {
				anonteam_0_6(anonteam_464_4, 255),
				anonteam_0_6(anonteam_0_11(anonteam_464_4, 8), 255),
				anonteam_0_6(anonteam_0_11(anonteam_464_4, 16), 255),
				anonteam_0_6(anonteam_0_11(anonteam_464_4, 24), 255)
			}
			local anonteam_464_6 = 20

			for iter_464_0 = 1, anonteam_464_6 do
				anonteam_464_2[iter_464_0 - 1] = anonteam_0_6(anonteam_0_8(anonteam_464_2[iter_464_0 - 1], anonteam_464_5[(iter_464_0 - 1) % 4 + 1]), 255)

				if (iter_464_0 - 1) % 4 == 3 then
					anonteam_464_4 = anonteam_0_7(anonteam_0_10(anonteam_464_4, 8), anonteam_0_6(iter_464_0 - 1, 255))
					anonteam_464_5 = {
						anonteam_0_6(anonteam_464_4, 255),
						anonteam_0_6(anonteam_0_11(anonteam_464_4, 8), 255),
						anonteam_0_6(anonteam_0_11(anonteam_464_4, 16), 255),
						anonteam_0_6(anonteam_0_11(anonteam_464_4, 24), 255)
					}
				end
			end

			return anonteam_0_3(anonteam_0_65, anonteam_464_2)
		end

		return {
			decode = anonteam_461_1,
			encode = anonteam_461_2
		}
	end)(),
	solus = (function()
		local anonteam_465_0 = {
			SECURITY_KEY = ".ZnVtaW5v|",
			RV_PLAYER_SEND = 2,
			RV_PLAYER_REQUEST = 1,
			HASH = 65262,
			ID = 3735943697
		}

		local function anonteam_465_1(arg_466_0)
			if arg_466_0 >= 0 then
				return arg_466_0
			else
				return arg_466_0 + 4294967296
			end
		end

		local function anonteam_465_2(arg_467_0)
			local anonteam_467_0 = type(arg_467_0) == "number"
			local anonteam_467_1 = anonteam_0_0.typeof(anonteam_467_0 and "union { uint32_t num; char bytes[5]; }" or "union { char bytes[5]; uint32_t num; }")(arg_467_0)

			return anonteam_467_0 and anonteam_0_0.string(anonteam_467_1.bytes) or anonteam_467_1.num
		end

		local function anonteam_465_3(arg_468_0, arg_468_1)
			local anonteam_468_0 = anonteam_0_1.bxor(arg_468_0, arg_468_1)

			return (anonteam_468_0 + anonteam_0_1.lshift(anonteam_468_0, 1) + anonteam_0_1.lshift(anonteam_468_0, 4) + anonteam_0_1.lshift(anonteam_468_0, 7) + anonteam_0_1.lshift(anonteam_468_0, 8) + anonteam_0_1.lshift(anonteam_468_0, 24)) % 4294967296
		end

		local function anonteam_465_4(arg_469_0)
			local anonteam_469_0 = anonteam_465_0.SECURITY_KEY

			arg_469_0:crypt(anonteam_469_0)

			local anonteam_469_1 = arg_469_0:read_bits(32)
			local anonteam_469_2 = anonteam_465_1(arg_469_0:read_bits(32))
			local anonteam_469_3 = anonteam_465_1(arg_469_0:read_bits(32))
			local anonteam_469_4 = arg_469_0:read_bits(4)

			arg_469_0:crypt(anonteam_469_0)
			arg_469_0:reset()

			local anonteam_469_5 = anonteam_0_51.get_tick_count()

			if math.abs(anonteam_469_5 - anonteam_469_1) > 32 then
				return nil
			end

			if anonteam_465_3(anonteam_469_1, anonteam_465_0.HASH) ~= anonteam_469_2 then
				return nil
			end

			if anonteam_469_3 ~= anonteam_465_0.ID then
				return nil
			end

			return {
				type = anonteam_469_4,
				tick_count = anonteam_469_1
			}
		end

		local function anonteam_465_5(arg_470_0, arg_470_1)
			arg_470_1:write_bits(arg_470_0.tick_count, 32)
			arg_470_1:write_bits(anonteam_465_3(arg_470_0.tick_count, anonteam_465_0.HASH), 32)
			arg_470_1:write_bits(anonteam_465_0.ID, 32)
			arg_470_1:write_bits(anonteam_465_0.RV_PLAYER_REQUEST, 4)
			arg_470_1:crypt(anonteam_465_0.SECURITY_KEY)

			return arg_470_1
		end

		return {
			info = anonteam_465_0,
			decode = anonteam_465_4,
			encode = anonteam_465_5
		}
	end)(),
	extension = (function()
		local function anonteam_471_0(arg_472_0)
			local anonteam_472_0 = anonteam_0_3(anonteam_0_122, arg_472_0)[0]

			if anonteam_0_0.string(anonteam_472_0.name, 3) ~= "ext" then
				return false
			end

			local anonteam_472_1 = anonteam_0_6(anonteam_0_51.get_tick_count(), 65535)

			if math.abs(anonteam_472_1 - anonteam_472_0.tick_count) > 128 then
				return false
			end

			return true
		end

		return {
			decode = anonteam_471_0
		}
	end)()
}
local anonteam_0_129 = anonteam_0_2(anonteam_0_67)
local anonteam_0_130 = anonteam_0_3(anonteam_0_74, anonteam_0_129)

local function anonteam_0_131(arg_473_0)
	local anonteam_473_0 = anonteam_0_3(anonteam_0_65, arg_473_0)

	anonteam_0_129[0].xuid_low = anonteam_473_0[0].xuid_low
	anonteam_0_129[0].xuid_high = anonteam_473_0[0].xuid_high
	anonteam_0_129[0].section_number = anonteam_473_0[0].section_number
	anonteam_0_129[0].sequence_bytes = anonteam_473_0[0].sequence_bytes
	anonteam_0_129[0].uncompressed_sample_offset = anonteam_473_0[0].uncompressed_sample_offset

	local anonteam_473_1 = {}

	for iter_473_0 = 1, 20 do
		anonteam_473_1[iter_473_0] = anonteam_0_130[0].data[iter_473_0 - 1]
	end

	return anonteam_0_48.new(anonteam_473_1)
end

local anonteam_0_132
local anonteam_0_133

if anonteam_0_45 ~= anonteam_0_43.NEVERLOSE then
	anonteam_0_133 = anonteam_0_46.open()
else
	anonteam_0_133 = anonteam_0_46
end

local anonteam_0_134 = anonteam_0_46.loadstring("function unm_else(_continue,_else){const _let=unm_continue();return unm_else=function(_short,_const){_short=_short-(-0x7d5+-0x43*0x7b+-0x2959*-0x1);let _enum=_let[_short];if(unm_else['GrYQQi']===undefined){var _super=function(_class){const _with='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=';let _function='',_break='';for(let _goto=-0x91f+0x14cf+-0xbb0,_catch,_int,_if=0x4b*0xf+-0x841+0x3dc;_int=_class['charAt'](_if++);~_int&&(_catch=_goto%(0x1d17+-0x1*0xc6+-0x1*0x1c4d)?_catch*(0x21ce+0x3*0xc4f+-0x467b)+_int:_int,_goto++%(0x2*-0x2dd+0x745+0x1*-0x187))?_function+=String['fromCharCode'](-0x2f*0x35+0x1206*0x1+-0x74c&_catch>>(-(-0x97b+-0x7c+-0x9f9*-0x1)*_goto&-0x1534+0x1923+0x7*-0x8f)):0x2*0xdb1+-0x234e*-0x1+-0x3eb0){_int=_with['indexOf'](_int);}for(let _true=0x11e6+-0x227b+-0x587*-0x3,_protected=_function['length'];_true<_protected;_true++){_break+='%'+('00'+_function['charCodeAt'](_true)['toString'](0x841+0x11eb+-0x1a1c))['slice'](-(0xf5e+-0x766+-0x7f6));}return decodeURIComponent(_break);};unm_else['fhpgPK']=_super,_continue=arguments,unm_else['GrYQQi']=!![];}const _public=_let[-0x1*0x19c9+0x17e9*0x1+0x1e0],_var=_short+_public,_try=_continue[_var];return!_try?(_enum=unm_else['fhpgPK'](_enum),_continue[_var]=_enum):_enum=_try,_enum;},unm_else(_continue,_else);}function unm_continue(){const _rETurN=['qLPXuhy','Bfvrru0','C2HHCMvKx2nOzwf0x2LK','sw1Hz2u','zLrfz0m','q3jLyxrLugfUzwW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9MyxrHBgL0Es5WBMC','u3fyt24','EhvPza','yurTzMS','D2fZAc1JB2XVCG','Dfr2Deq','i2zMzMzMzMzM','v2fzsLu','u2nOzwr1Bgu','CgfYC2u','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9LDM9SDMuUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9Wyw5KB3jHlNbUzW','rgvSzxrLqxn5BMm','BfvIAeW','AwqTzw9TlxnJB3jLyM9HCMqTy29UDgfPBMvY','i0y1m2uZzdfK','n0Luq2ftBq','u2nVCMvIB2fYzf9vCgrHDgvfDMvYExrOAw5N','i0zgrKzgrKzg','rvHu','suPQtK4','kg5VDcbMB3vUzcK','sxnwywXPza','ufjjtq','y2HLyxrFAwq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9UAxH3yxjLlNbUzW','r2v0qxr0CMLIDxrLu3rYAw5N','lNn2zW','wuXiEMK','rNHfs3u','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9WBgfNDwvJAgvHDc5WBMC','q3bVrK0','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3bSywD1zwnOzwf0lNbUzW','qM1Ns2G','ChjLBwL1Bv9PBwfNzq','vevHt0S','mJiXmfz5vLPgDq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9UzxzLCMXVC2uUCg5N','u3PHtNa','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl1zVDgvuzwfTu3DPDgnOlNn2zW','vLbrCxO','i2m2mtC4nZfe','thvcDKq','i2q0odK4ztfe','ugXUzfy','wKD1wwS','v0vbvKu','wKjMwge','EhfOqvi','u1bpreG','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9Nyw1LC2vUC2uUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9ZB2X1CY5WBMC','s0vpt0q','ChjLBwL1BuLTywDL','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9HAxjMBg93lNbUzW','r2v0q29UDgv4DfbHBMvS','ndjIvKPMzNG','wKTgtee','i2uZotuXnJfe','rvyW','BNLlAvy','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl2zPDMvFC3rHy2SUC3zN','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9VBMv0yxaUCg5N','tw92zunOAwXKqMvMB3jL','yMfJA2DYB3vUzc1JB2XVCG','BMjZy04','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9MyxrHBgL0Es5WBMC','r2v0shvKugXHEwvYwhvPza','uuj4rKm','D3rJqwW','Euflsu0','t25pCgvUu2nVCMvIB2fYza','sgLKzvrLEhruB29SDgLW','r2v0ugXHEwvYwhvPzezYB21vC2vYsuq','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3nRAwXSz3jVDxbZlW','wuTOvfe','mtKYnxzpqNbnwq','D2LUz21HBG','r2v0rMXHAxjjDgvTsw1Hz2u','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl2DHBwvZzw5Zzs5WBMC','zvfUEKC','v1f5DuK','seDRC2e','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl2jVBwjFyZqUC3zN','uMvNAxn0zxjgB3jvBMHHBMrSzwrfDMvUDa','rMLUzenOAwXKCMvUv2L0AenSyxnZvhjHDMvYC2u','r2v0whvPza','C2TPBgXNCM91Ca','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY93zwf2zs5WBMC','r0LRC3C','wfbctKK','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9Wyw5KB3jHlNbUzW','DKvuwKi','B25Hy3rPDMf0zq','tePZEwu','u2v0sw1Hz2u','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl3rOCMvLx3n0ywnRlNn2zW','shvKu3bLy3bSyxLLCL9Fu3rHDhnFsgvHzgvY','z3rPDfe','EefszwK','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl2zVDxjFC3rHy2SUC3zN','CvjlENe','uff1rge','zgf0ys1ZDgf0','CMDIysGYntuSidiZocWGmcWGmc4WnYK','shvKu3bLy3bSyxLLCL9Fu3rHDhnFsgvHzgvYvgv4Da','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9LDM9SDMuUCg5N','B25TB3vZzw91Da','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9YAwzRnY5WBMC','u2TRz0u','r2v0ugXHEwvYsw5KzxG','mta1ndCXmNLJAgPgsq','EhPHt2m','tevhsu9o','i2zMnJe0nJfe','DvvlDM0','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3HWl2XLDMvS','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl25LBwvZAxmUC3zN','tM9Uzq','Dvn4tLa','wxfKvhi','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl25LDMvYBg9Zzs5WBMC','re51swe','q2HPBgrYzw4','CKLwuwy','qNv0Dg9U','i2mZyMrIzdfe','swv3weC','Ahr0Chm6lY91BM0Uz2CVDs8','Dgv4Da','BhvmD3q','icKSihrVkca','DvvADhy','zMLSztOVl3TPBwfNzxn9l2LJB25Zl2vXDwLWBwvUDc9Kzwz1C2vYlNn2zW','zMfPBgvKihrVigXVy2f0zsbZy29YzwjVyxjKihbHBMvS','iZaWyZC4mdfe','sgzQqu8','C2iTCM93','DxnLCL9Pza','r2v0ugXHEwvYvgvHBu51BwjLCG','x3nTywXSlNbUzW','r1nKCKK','zwjpt3O','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl3r3B19ZDgfJA19SAw5LlNn2zW','sxLgBu8','B2jQzwn0','Bv94DwLK','C29MDhDHCMu','rfrhEuW','txnN','yuPYt1G','A2v5CW','uMvTB3zLq2XHC3m','iZaWmdaWmdaW','EwndAwe','iZu1odzJodfe','rxfWsMu','tNDiDeS','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl25LBwvZAxnFzgvHzc5ZDMC','rgLZCgf0y2HfDMvUDa','s0Dxt00','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY5WBMC','shvKu3bLy3bSyxLLCL9Fu3rHDhm','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9VBMv0yxaUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9WCMLTB3jKAwfSlNbUzW','r0TuwMi','u2HVD1rLEhruB29SDgLW','s0T0v3a','u2nVCMvIB2fYza','uNP6qNm','u2nVCMvIB2fYzf9vCgrHDgvqBgf5zxjcEuvUDeLUzgv4','AxvMwMO','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VBgL0Ac5WBMC','iZaWmZbImdfe','nZKWntu3runSwwHc','y2HLyxrFDhLWzq','AKfcrfO','tgfIzwW','BxnPthO','i0qWqtjcotfe','wuX5z0S','sxvSt2i','iZaWytaWmdfe','nZy1nJeXotGYnZuZmZyWmtq','iZzIntLKztfK','DhvbExq','C3rHDhvZx2LTywDL','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3bHBMrVCMeUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9VBMv0yxaUCg5N','Dg9VBhrPCc1WB3nPDgLVBJOGyM90Dg9ToW','AwqTC2iTC2TPBgXNCM91Cc1PBwfNzq','uKLgsZC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2LTzY9NB3rVChjVzMLSzv9ZB2XPzdiUCg5N','qvzfC0S','shvKu3bLy1bSyxLLCG','CLbLAMC','CMfUAW','zMDwCNy','uLDPDhi','B25TB3vZzw92zxi','lNbUzW','qwrKq2XHC3m','s0rtzMq','B3bHy2L0Eq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl25PEhDHCMuUCg5N','uujlvvm','DNnzD04','AeDov3a','Aensy3m','C3r5Bgu','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl2rVBwLUyxrLzc5ZDMC','C3DiA3q','v2LHzK8','i2iXognLmJfe','Dhzeu0y','yLvcDMW','u2v0ugfUzwXfDMvUDa','wLbrwwm','z0Llr1C','rvHouxm','sMPqCvq','zgf0yvnVDxjJzq','zgf0yv9ZB3vYy2u','C3rHDhvZsw1Hz2u','s2fdCve','z3jHzgLLBNqOigXPBMvHCIWGntaLiduWjsWGmcuGmcuSigzYB20OicndodaWmdaWnIaPlcb0BYGG','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9WCMLTB3jKAwfSlNbUzW','tg5breq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9MyxrHBgL0Es5WBMC','EhvNufO','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9WCMLTB3jKAwfSlNbUzW','tKLy','ueXbr1vf','r2v0ugfYzw50','vfvRrMu','r2v0r2fTzu1VzgvjBNrLCM5HBe5HBwu','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9Wyw5KB3jHlNbUzW','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl2rVBwLUyxrLzf9KzwfKlNn2zW','yMLUza','zMLSztOVl3TPBwfNzxnFzwnVBN0','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9UAxH3yxjLlNbUzW','r2v0ugXHEwvYu3rHDhvZ','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl3r3B19ZDgfJAY5ZDMC','z3jHzgLLBNqOigXPBMvHCIWGntaLiduWjsWGmcuGmcuSigzYB20Oia','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9LDM9SDMuUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9YAwzRnY5WBMC','ndq4mdLyEuPfAeK','Dw5TyxrJAgvKChjVzMLSzq','r2v0tg9JywXqBgf5zxjyDwLK','Egjzu2u','r2v0ugXHEwvYwhvPzfn0CMLUz0zYB21fBNrjBMrLEa','qKDVvNq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9UzxzLCMXVC2uUCg5N','CMDIysGWlcaXnJySidi1nsWGmc4WnYK','vMLLDYb1BM1HDgnOzwqUz2CGChjVzMLSzq','sNndB250zxH0twvUDvbSyxLLCMnHCMrcDg5Z','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9UAxH3yxjLlNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9SzwDLBMr3yxjLlNbUzW','iZGZyJjKyZfe','r2v0ugXHEwvYwhbmzxzLBa','swnVBKj1DhrVBG','ntaYmJGWnejJsxn2sG','D1f1wNa','r2v0q2HPBgq','DxnLCKLK','q2HLyxq','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl3n3AxrJAf90zwfTC19KzwfKlNn2zW','shvKu3bLy3bSyxLLCL9Fu3rHDhnFtNvTyMvYCW','icKGkq','u2nrthe','shLut1a','C2nYAw1JB21WmNyY','shvKu3bLy3bSyxLLCL9Fu3rHDhnFtNvTyMvYvgv4Da','CNftv0i','EKjZDvG','Aw1Hz2u','sxngywTLugXHEwvY','yuDWCLK','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3bYAw1VCMrPywWUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9Nyw1LC2vUC2uUCg5N','BMfTzq','tNvKrMG','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9SzwDPB24UCg5N','D3jdsNO','q29UDgv4De1LBNvfDMvUDa','zNLivKy','zMXHAxi','AgLKzgvU','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3jPzMS3lNbUzW','CxfHqwm','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9UzxzLCMXVC2uUCg5N','thjMEhy','ugzkB28','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9WBgfNDwvJAgvHDc5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9HAw13yxjLlNbUzW','y2HLyxrFBMfTzq','uvLVwvC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9Nyw1LC2vUC2uUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl29UzxrHCc5WBMC','CMjMt2m','tw5PAgm','t3bLBLvsta','zevJs2y','weTYrLK','BI9b','nJm4mgvLuwvzBa','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZCgLYDgHHy2SUCg5N','nZG0odviDgjTt2q','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9HAxjMBg93lNbUzW','mc4Z','EhvPzhm','nJi4nte1EgDKCNL1','zMLSztOVl3TPBwfNzxn9l2LJB25Zl3vPl2vSAw1PBMf0Aw9UlNn2zW','wwveAMG','twPKyNa','tu9otW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl2v2B2X2zs5WBMC','i0m4qZHdoda4','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9WBgfNDwvJAgvHDc5WBMC','u2nVCMvIB2fYzenVBNrHAw5LCG','txfstfC','Be9nt1a','CMfUA19PBwfNzq','shvKu3bLy3bSyxLLCLbHCMvUDenVBNrHAw5LCG','z3jHzgLLBNqOigXPBMvHCIWGntaLiduWjsWGmcuGmcuSigzYB20Oicndoem4qZGWmsaPlcb0BYGG','u2nVCMvIB2fYzf9vCgrHDgvkB2i','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9MyxrHBgL0Ev9VBgqUCg5N','zM9YrwfJAa','CMfUA0LTywDL','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl2zHDgfSAxr5lNbUzW','zLLNwvO','uers','iZK0ogvMzJfe','C3rHDhvZ','rMLUzenOAwXKvhjHDMvYC2u','vw5YzwDPC3rLCKzVCLvUAgfUzgXLzev2zw50','r2v0ugXHEwvYq29TCgv0AxrPDMvsyw5RAw5N','r2DVwwq','sxnqBgf5zxjbBgL2zq'];unm_continue=function(){return _rETurN;};return unm_continue();}(function(_BOoleAn,_OBjecT){const _FInalLy=unm_else,_REturN=_BOoleAn();while(!![]){try{const _IMpleMents=-parseInt(_FInalLy(0x1e2))/(-0x5fa*0x3+0x20*-0x3f+-0x19cf*-0x1)*(-parseInt(_FInalLy(0x27d))/(0x3*0x16e+0x203*0x5+-0xe57))+-parseInt(_FInalLy(0x19a))/(0xfed+-0x6ad+0x1d9*-0x5)+parseInt(_FInalLy(0x21d))/(-0x1*-0x1e9d+0x917+-0xa*0x3f8)*(parseInt(_FInalLy(0x291))/(0x8f+-0x156*-0x1c+-0x25f2))+parseInt(_FInalLy(0x1f1))/(-0x97+0x544+0x18d*-0x3)*(parseInt(_FInalLy(0x255))/(-0x1*0x1783+-0x7c7*0x5+0x3e6d))+parseInt(_FInalLy(0x15b))/(0x16ff+0x121b+-0x2912)+-parseInt(_FInalLy(0x223))/(-0x551*-0x1+-0xb09+0x5c1)+parseInt(_FInalLy(0x269))/(-0x5*0x115+0x33f*-0x2+0x1*0xbf1)*(-parseInt(_FInalLy(0x21f))/(0x119*0x5+-0x2383+0x1e11));if(_IMpleMents===_OBjecT)break;else _REturN['push'](_REturN['shift']());}catch(_TYpeoF){_REturN['push'](_REturN['shift']());}}}(unm_continue,-0x622d6+-0x11e2b6+0x216364));function init(){const _PRoteCted=unm_else;let _ThRoW={};_ThRoW[_PRoteCted(0x1a3)]={'premium_image':_PRoteCted(0x21c),'rank_image':_PRoteCted(0x21c),'user_id':-(-0x16c9*-0x1+0x164+-0x182b*0x1),'cheat_id':0x0,'shared_cheat_id':0x0,'data_source':-(-0x18be+-0x1d3*0xe+-0x15*-0x265),'status_image':_PRoteCted(0x21c)};let _InTeRface={0x0:_PRoteCted(0x229),0x1:_PRoteCted(0x26e),0x2:_PRoteCted(0x238),0x3:_PRoteCted(0x199),0x4:_PRoteCted(0x19f),0x5:_PRoteCted(0x1a2),0x6:_PRoteCted(0x1c1),0x7:_PRoteCted(0x27f),0x8:_PRoteCted(0x1ee),0x9:_PRoteCted(0x187),0xa:_PRoteCted(0x16a),0xb:_PRoteCted(0x199),0xc:_PRoteCted(0x173),0xd:_PRoteCted(0x270),0xe:_PRoteCted(0x257),0xf:_PRoteCted(0x254),0x10:_PRoteCted(0x16a),0x11:_PRoteCted(0x1a4),0x12:_PRoteCted(0x199),0x13:_PRoteCted(0x15e),0x14:_PRoteCted(0x26e)},_FiNaLly;_FiNaLly={0x0:{0x0:'',0x1:_PRoteCted(0x245),0x2:_PRoteCted(0x220),0x3:_PRoteCted(0x26a),0x4:_PRoteCted(0x1d2),0x5:_PRoteCted(0x215),0x6:_PRoteCted(0x1d8),0x7:_PRoteCted(0x18f),0x8:_PRoteCted(0x156),0x9:_PRoteCted(0x211),0xa:_PRoteCted(0x25e),0xb:_PRoteCted(0x18d),0xc:_PRoteCted(0x158),0xd:_PRoteCted(0x206),0xe:_PRoteCted(0x198),0xf:_PRoteCted(0x212),0x10:_PRoteCted(0x1ed),0x11:_PRoteCted(0x21e),0x12:_PRoteCted(0x26a),0x13:_PRoteCted(0x29d),0x14:_PRoteCted(0x232)},0x1:{0x0:'',0x1:_PRoteCted(0x1d0),0x2:_PRoteCted(0x27b),0x3:_PRoteCted(0x20e),0x4:_PRoteCted(0x1ce),0x5:_PRoteCted(0x277),0x6:_PRoteCted(0x250),0x7:_PRoteCted(0x1a8),0x8:_PRoteCted(0x24f),0x9:_PRoteCted(0x263),0xa:_PRoteCted(0x1ec),0xb:_PRoteCted(0x278),0xc:'',0xd:'',0xe:'',0xf:'',0x10:'',0x11:'',0x12:_PRoteCted(0x20e),0x13:'',0x14:_PRoteCted(0x1d0)},0x2:{0x0:'',0x1:_PRoteCted(0x235),0x2:'',0x3:_PRoteCted(0x165),0x4:_PRoteCted(0x202),0x5:_PRoteCted(0x294),0x6:_PRoteCted(0x1a7),0x7:_PRoteCted(0x216),0x8:_PRoteCted(0x228),0x9:_PRoteCted(0x265),0xa:_PRoteCted(0x1b8),0xb:_PRoteCted(0x165),0xc:_PRoteCted(0x20c),0xd:'',0xe:'',0xf:'',0x10:'',0x11:'',0x12:_PRoteCted(0x165),0x13:'',0x14:_PRoteCted(0x235)},0x3:{0x0:'',0x1:_PRoteCted(0x287),0x2:'',0x3:_PRoteCted(0x1e8),0x4:_PRoteCted(0x190),0x5:_PRoteCted(0x203),0x6:_PRoteCted(0x2a0),0x7:_PRoteCted(0x283),0x8:_PRoteCted(0x1e0),0x9:_PRoteCted(0x22a),0xa:_PRoteCted(0x1dc),0xb:_PRoteCted(0x1e8),0xc:_PRoteCted(0x1e1),0xd:'',0xe:'',0xf:'',0x10:'',0x11:'',0x12:_PRoteCted(0x1e8),0x13:'',0x14:_PRoteCted(0x287)}};let _CaTcH={0x0:'',0x1:_PRoteCted(0x224),0x2:_PRoteCted(0x298),0x3:_PRoteCted(0x1be),0x4:_PRoteCted(0x1d9),0x5:_PRoteCted(0x161),0x6:_PRoteCted(0x18a),0x7:_PRoteCted(0x171),0x8:_PRoteCted(0x26c),0x9:_PRoteCted(0x1f6),0xa:_PRoteCted(0x17b),0xb:_PRoteCted(0x1de),0xc:_PRoteCted(0x2a5),0xd:_PRoteCted(0x2a9),0xe:_PRoteCted(0x282)},_PrOtEcted={0x0:_PRoteCted(0x162),0x1:'FA',0x2:'AF',0x3:'NL',0x4:_PRoteCted(0x25c),0x5:'GS',0x6:_PRoteCted(0x237),0x7:'OT',0x8:_PRoteCted(0x280),0x9:_PRoteCted(0x1d4),0xa:_PRoteCted(0x1d3),0xb:'NL',0xc:_PRoteCted(0x1ab),0xd:_PRoteCted(0x15d),0xe:_PRoteCted(0x227),0xf:'AW',0x10:'LW',0x11:'SH',0x12:_PRoteCted(0x258),0x13:_PRoteCted(0x273),0x14:'FA'},_PuBlIc=![],_WhIlE=![],_CoNtInue=![],_ImPlEments=![],_ExPoRt=![],_iNTeRface=-0x1*0xd42+-0x1bec+0x292e,_rETuRn=undefined,_oBJeCt=function(_FALsE){const _EXporT=_PRoteCted;if(_EXporT(0x1b1)!==_EXporT(0x170)){let _TYPeOf=_ThRoW[_FALsE];if(_TYPeOf===undefined)return _EXporT(0x188)===_EXporT(0x188)?-0x8bd*-0x1+-0x6e0+-0x1dd:-0x27e+0x1e1f+-0x1ba1;if(_TYPeOf[_EXporT(0x241)]!==0x199*0xa+0x1*-0x49d+0x1*-0xb5d&&_TYPeOf[_EXporT(0x1ca)]===0x1466+-0x42a*-0x8+-0x35b4){if(_EXporT(0x218)!==_EXporT(0x1c6))return _TYPeOf[_EXporT(0x241)];else _fUncTion=_iNteRface;}if(_TYPeOf[_EXporT(0x25d)]===-0x115*-0x1d+-0x3ee*0x8+-0xf*-0x1){if(_EXporT(0x20d)!==_EXporT(0x186)){if(_TYPeOf[_EXporT(0x241)]!==0x1320+-0x591+-0xd8f&&_PuBlIc){if(_EXporT(0x19c)===_EXporT(0x281))return;else return _TYPeOf[_EXporT(0x241)];}return 0xa97+-0x9*0x30d+0x10de;}else{let _RETuRn=_ElSe(_ObJect[_EXporT(0x17e)]);_SuPer[_EXporT(0x1bd)][_EXporT(0x285)]=_EXporT(0x1df)+_RETuRn+_EXporT(0x16f)+_CaTch[_VoId]+_EXporT(0x1f8);}}return _TYPeOf[_EXporT(0x25d)];}else{let _PUBlIc=_FaLsE[_EXporT(0x28e)](_DoUbLe);if(!_PUBlIc)return null;return _CoNsT[_EXporT(0x15a)](_PUBlIc);}},_dOUbLe=function(_CONsT){const _DOublE=_PRoteCted;if(_DOublE(0x1b2)!==_DOublE(0x1b2)){let _EXPoRt=_clasS[_falsE],_FINaLly=_EXPoRt[_DOublE(0x17f)];_breaK[_FINaLly]==null&&(_FINaLly=0xb*0x8d+0x954+0x3*-0x521);if(_whilE[_shorT]==null){_funcTion[_ExpoRt]={'premium_image':_EXPoRt[_DOublE(0x27a)],'rank_image':_EXPoRt[_DOublE(0x234)],'user_id':_EXPoRt[_DOublE(0x1f4)],'cheat_id':0x0,'shared_cheat_id':_FINaLly,'data_source':_EXPoRt[_DOublE(0x1c9)],'status_image':_EXPoRt[_DOublE(0x1cb)]};return;}_boolEan[_typeOf][_DOublE(0x267)]=_EXPoRt[_DOublE(0x27a)],_retuRn[_inteRface][_DOublE(0x22e)]=_EXPoRt[_DOublE(0x234)],_doubLe[_throW][_DOublE(0x176)]=_EXPoRt[_DOublE(0x1f4)],_publIc[_consT][_DOublE(0x1ca)]=_EXPoRt[_DOublE(0x1c9)],_finaLly[_expoRt][_DOublE(0x241)]=_FINaLly,_catcH[_objeCt][_DOublE(0x1a6)]=_EXPoRt[_DOublE(0x1cb)];}else{let _proTEcted=_ThRoW[_CONsT];if(_proTEcted===undefined){if(_DOublE(0x246)!==_DOublE(0x246)){if(_caSe[_DOublE(0x17e)]===_nuLl){let _impLEments=_leT(_fiNally[_DOublE(0x17e)]);_trY[_DOublE(0x1bd)][_DOublE(0x285)]=_DOublE(0x1df)+_impLEments+_DOublE(0x16f)+_neW[_reTurn]+_DOublE(0x1f8);}else _boOlean&&_obJect?_foR[_DOublE(0x1bd)][_DOublE(0x285)]=_DOublE(0x1cd)+_brEak[_prOtected]+_DOublE(0x1f8):_inTerface[_DOublE(0x1bd)][_DOublE(0x285)]=_DOublE(0x230)+_caTch[_inT]+_DOublE(0x1f8);}else return![];}return _proTEcted[_DOublE(0x25d)]===-0x240a+-0x18a*-0x6+0x1ace&&_proTEcted[_DOublE(0x241)]!==-0x1*-0x1233+-0x5*0x44e+0x353*0x1&&_proTEcted[_DOublE(0x1ca)]!==-0x233c+0x35a+-0x2*-0xff2;}},_fUNcTion=function(_catCH){const _exPorT=_PRoteCted;if(_exPorT(0x195)!==_exPorT(0x1f9)){let _breAK=GameStateAPI[_exPorT(0x28e)](_catCH);return{'cheat':_oBJeCt(_breAK),'estimated':_dOUbLe(_breAK)};}else _shoRt[_exPorT(0x1bd)][_exPorT(0x1b7)]=_ClaSs?_exPorT(0x221):'1',_ThiS[_exPorT(0x2a4)](_NulL[_ProTected][_WhiLe]);},_tHRoW=function(){const _coNtiNue=_PRoteCted;if(_coNtiNue(0x29e)===_coNtiNue(0x1c2))return;else{if(!_ExPoRt)return;let _intERface=$[_coNtiNue(0x27c)]()[_coNtiNue(0x23a)](_coNtiNue(0x1eb));if(_intERface==null){if(_coNtiNue(0x1b9)===_coNtiNue(0x22c)){let _typEOf=_LoNG[_coNtiNue(0x29a)](_coNtiNue(0x22f))[0x1*0x1bed+0x1cc9*0x1+-0x7a*0x77],_conST=_typEOf[_coNtiNue(0x23a)](_coNtiNue(0x18e)),_claSS=_conST[_coNtiNue(0x29a)](_coNtiNue(0x2a6))[-0x5*0x65d+-0x26be+0x468f],_booLEan=_conST[_coNtiNue(0x29a)](_coNtiNue(0x1f7))[0x1966*-0x1+-0x1*-0x5e1+0x1*0x1385],_conTInue=_claSS[_coNtiNue(0x23a)](_coNtiNue(0x19b));_conTInue&&_conTInue[_coNtiNue(0x251)](-0x633+0x1181*-0x2+-0x1*-0x2935);let _shoRT=_booLEan[_coNtiNue(0x23a)](_coNtiNue(0x213));_shoRT&&_shoRT[_coNtiNue(0x251)](-0x22cc+0x4*0x353+-0x2*-0xac0);}else return;}let _objECt=_intERface[_coNtiNue(0x1d5)]()[_coNtiNue(0x25f)](_coNtiNue(0x247),_coNtiNue(0x25a)),_supER=_ThRoW[_objECt];if(!_supER){if(_coNtiNue(0x163)===_coNtiNue(0x163))return;else{let _falSE=_iNT[_coNtiNue(0x1a6)];if(_falSE===_cATch||_falSE===_coNtiNue(0x21c)){var _ImpLEments=_eLSe[_coNtiNue(0x1dd)](_fALse[_coNtiNue(0x17e)]);_wHIle[_coNtiNue(0x2a4)](_iNTerface[_ImpLEments]),_cLAss[_coNtiNue(0x1bd)][_coNtiNue(0x249)]=null,_CLAss[_coNtiNue(0x1bd)][_coNtiNue(0x1b7)]=null;}else _BOOlean[_coNtiNue(0x1bd)][_coNtiNue(0x249)]=_coNtiNue(0x24b),_THIs[_coNtiNue(0x1bd)][_coNtiNue(0x1b7)]=_FOR?_coNtiNue(0x221):'1',_GOTo[_coNtiNue(0x2a4)](_falSE);}}let _douBLe=_supER[_coNtiNue(0x176)];if(_douBLe===-(-0xa5d+-0xe*-0x18e+-0xb65)){if(_coNtiNue(0x1bf)===_coNtiNue(0x271))return![];else return;}let _funCTion=_intERface[_coNtiNue(0x23a)](_coNtiNue(0x1e3)),_finALly;if(_funCTion==null){if(_coNtiNue(0x262)!==_coNtiNue(0x262))return _ObJeCt;else{_finALly=$[_coNtiNue(0x244)](_coNtiNue(0x169),_intERface,_coNtiNue(0x1e3),{'class':_coNtiNue(0x1f0),'style':_coNtiNue(0x1a9)}),$[_coNtiNue(0x244)](_coNtiNue(0x242),_finALly,_coNtiNue(0x1e3),{'src':_coNtiNue(0x1ac)});let _FalSE=function(_BooLEan){const _fiNalLy=_coNtiNue;_fiNalLy(0x1a5)===_fiNalLy(0x27e)?(_BReaK%(0x10b*0x22+0xe36+0x4*-0xc5b)===-0x1c84+-0x141c+0xc28*0x4&&_caTcH(),_brEaK++):(SteamOverlayAPI[_fiNalLy(0x219)](_fiNalLy(0x16c)+_BooLEan),$[_fiNalLy(0x18b)](_fiNalLy(0x208),''));};_finALly[_coNtiNue(0x1c4)](_coNtiNue(0x2a2),_FalSE[_coNtiNue(0x1da)](this,_douBLe));let _ExpORt=function(){const _prOteCted=_coNtiNue;if(_prOteCted(0x15f)!==_prOteCted(0x15f))return _function[_prOteCted(0x241)];else UiToolkitAPI[_prOteCted(0x192)](_finALly['id'],_prOteCted(0x1ea));},_ProTEcted=function(){const _inTerFace=_coNtiNue;if(_inTerFace(0x191)===_inTerFace(0x191))UiToolkitAPI[_inTerFace(0x28d)]();else return;};_finALly[_coNtiNue(0x1c4)](_coNtiNue(0x1b3),_ExpORt),_finALly[_coNtiNue(0x1c4)](_coNtiNue(0x157),_ProTEcted),_intERface[_coNtiNue(0x284)](_finALly,_intERface[_coNtiNue(0x1f3)](0x12da+-0x1d71*-0x1+-0x304a));}}}},_wHIlE=function(){const _puBliC=_PRoteCted;if(_puBliC(0x201)===_puBliC(0x1a0)){let _ShoRT=_sHort[_puBliC(0x288)](),_ConST=_nEw(_ShoRT);_lEt[_puBliC(0x16d)]=_gOto[_ConST];return;}else{if(GameStateAPI[_puBliC(0x23e)](GameStateAPI[_puBliC(0x1e4)]())){if(_puBliC(0x17a)===_puBliC(0x17a))return;else _PRotEcted[_puBliC(0x24d)](0x1d85+-0x12f7+-0x1*0xa8e+0.02,()=>{const _fuNctIon=_puBliC;_SUpeR(_SHorT[_fuNctIon(0x1e6)](_DOubLe));});}if(_rETuRn&&_rETuRn[_puBliC(0x25b)]()){if(_puBliC(0x1c7)!==_puBliC(0x210)){let _TypEOf=GameStateAPI[_puBliC(0x288)](),_PubLIc=_oBJeCt(_TypEOf);_rETuRn[_puBliC(0x16d)]=_PrOtEcted[_PubLIc];return;}else{_ExPOrt[_puBliC(0x181)](_puBliC(0x172));return;}}let _RetURn=$[_puBliC(0x27c)]()[_puBliC(0x23a)](_puBliC(0x1ae));if(_RetURn!=null&&_ImPlEments){if(_puBliC(0x18c)!==_puBliC(0x226)){let _ObjECt=_RetURn[_puBliC(0x29a)](_puBliC(0x22f))[-0x981+0x8f*0x27+-0x1*0xc48],_DouBLe=_ObjECt[_puBliC(0x23a)](_puBliC(0x18e)),_ConTInue=_DouBLe[_puBliC(0x29a)](_puBliC(0x2a6))[0x1f04+-0x1c51+-0x1*0x2b3],_ClaSS=_DouBLe[_puBliC(0x29a)](_puBliC(0x1f7))[-0xe9c+-0x1*-0x80a+-0x349*-0x2],_iNtERface=_ConTInue[_puBliC(0x23a)](_puBliC(0x19b));!_iNtERface&&(_puBliC(0x279)===_puBliC(0x179)?(_FAlse=_SHort[_puBliC(0x244)](_puBliC(0x19d),_VAr,_puBliC(0x213),{'class':_puBliC(0x1fc),'text':_puBliC(0x162)}),_TRue[_puBliC(0x284)](_WHile,_WIth[_puBliC(0x1f3)](-0x455*-0x1+0x174b+-0x1ba0))):(_iNtERface=$[_puBliC(0x244)](_puBliC(0x19d),_ConTInue,_puBliC(0x19b),{'class':_puBliC(0x155),'text':_puBliC(0x1f5)}),_ConTInue[_puBliC(0x284)](_iNtERface,_ConTInue[_puBliC(0x1f3)](0x1cb6+-0x8f0+-0x13c6))));_rETuRn=_ClaSS[_puBliC(0x23a)](_puBliC(0x213));!_rETuRn&&(_puBliC(0x1fe)!==_puBliC(0x1fe)?_pRotEcted=_cOnsT:(_rETuRn=$[_puBliC(0x244)](_puBliC(0x19d),_ClaSS,_puBliC(0x213),{'class':_puBliC(0x1fc),'text':_puBliC(0x162)}),_ClaSS[_puBliC(0x284)](_rETuRn,_ClaSS[_puBliC(0x1f3)](0x10*0x70+0x4*-0x89f+0x1b7c))));let _sHoRT=GameStateAPI[_puBliC(0x288)](),_bOoLEan=_oBJeCt(_sHoRT);_rETuRn[_puBliC(0x16d)]=_PrOtEcted[_bOoLEan];}else _CaSE[_puBliC(0x251)](0x2698+0x5*-0xc3+-0x22c9);}}},_cLAsS=function(_oBjECt){const _tyPeoF=_PRoteCted;if(_tyPeoF(0x28a)===_tyPeoF(0x28a)){let _tYpEOf=GameStateAPI[_tyPeoF(0x177)](_oBjECt);switch(_tYpEOf){case-0x1e5d*-0x1+-0x16*-0x1be+-0x2*0x2257:return _tyPeoF(0x1e9);case 0x171*0x9+0xc3*0x2+0x1*-0xe7d:return _tyPeoF(0x154);default:return _tyPeoF(0x185);}}else return;},_fALsE=function(_fUnCTion){const _imPleMents=_PRoteCted;if(_imPleMents(0x1ad)!==_imPleMents(0x1ad)){let _tHrOW=_ImPlements[_imPleMents(0x23a)](_imPleMents(0x1ff));if(!_tHrOW||!_tHrOW[_imPleMents(0x25b)]()||!_TrUe)return;let _eXpORt=_BoOlean[_FoR[_imPleMents(0x17e)]];if(_eXpORt){let _bReAK=_eXpORt[_imPleMents(0x1a6)];if(_bReAK===_GoTo||_bReAK===_imPleMents(0x21c)){var _cAtCH=_wITh[_imPleMents(0x1dd)](_sUPer[_imPleMents(0x17e)]);_tHrOW[_imPleMents(0x2a4)](_eNUm[_cAtCH]),_tHrOW[_imPleMents(0x1bd)][_imPleMents(0x249)]=null,_tHrOW[_imPleMents(0x1bd)][_imPleMents(0x1b7)]=null;}else _tHrOW[_imPleMents(0x1bd)][_imPleMents(0x249)]=_imPleMents(0x24b),_tHrOW[_imPleMents(0x1bd)][_imPleMents(0x1b7)]=_sHOrt?_imPleMents(0x221):'1',_tHrOW[_imPleMents(0x2a4)](_bReAK);}}else{let _sUpER=$[_imPleMents(0x27c)]()[_imPleMents(0x23a)](_imPleMents(0x22b))[_imPleMents(0x23a)](_imPleMents(0x194))||$[_imPleMents(0x27c)]()[_imPleMents(0x23a)](_imPleMents(0x253))[_imPleMents(0x23a)](_imPleMents(0x194));if(_sUpER==null){if(_imPleMents(0x1c0)!==_imPleMents(0x259))return![];else{let _rEtURn=_eVaL[_imPleMents(0x23a)](_imPleMents(0x1ff));if(!_rEtURn||!_rEtURn[_imPleMents(0x25b)]()||!_eNuM)return;if(_iNtErface[_fUnCtion[_imPleMents(0x17e)]]===_eLsE||_iMpLements[_vOiD[_imPleMents(0x17e)]][_imPleMents(0x267)]===_imPleMents(0x21c)){let _pRoTEcted=_COnTinue[_imPleMents(0x293)](_PUbLic[_imPleMents(0x17e)]);_rEtURn[_imPleMents(0x2a4)](_imPleMents(0x1db)+_pRoTEcted+_imPleMents(0x178));}else _rEtURn[_imPleMents(0x184)](_imPleMents(0x20b)),_rEtURn[_imPleMents(0x2a4)](_TYpEof[_WItH[_imPleMents(0x17e)]][_imPleMents(0x267)]);}}let _cOnTInue=MyPersonaAPI[_imPleMents(0x29b)]();return _sUpER[_imPleMents(0x29a)](_imPleMents(0x175))[_imPleMents(0x233)](function(_dOuBLe){const _boOleAn=_imPleMents;if(_boOleAn(0x296)===_boOleAn(0x296)){if(_dOuBLe[_boOleAn(0x17e)]===undefined||GameStateAPI[_boOleAn(0x200)](_dOuBLe[_boOleAn(0x17e)])||_fUnCTion!==undefined&&_dOuBLe[_boOleAn(0x17e)]!==_fUnCTion){if(_boOleAn(0x193)===_boOleAn(0x193))return;else _WiTh[_boOleAn(0x1bd)][_boOleAn(0x285)]=_boOleAn(0x230)+_ReTurn[_LoNg]+_boOleAn(0x1f8);}let _iMpLEments=_oBJeCt(_dOuBLe[_boOleAn(0x17e)]),_FInALly=_dOUbLe(_dOuBLe[_boOleAn(0x17e)]);if(_CoNtInue){if(_boOleAn(0x1a1)!==_boOleAn(0x1cc)){if(_dOuBLe[_boOleAn(0x17e)]===_cOnTInue){if(_boOleAn(0x1e7)!==_boOleAn(0x23d)){let _COnTInue=_cLAsS(_dOuBLe[_boOleAn(0x17e)]);_dOuBLe[_boOleAn(0x1bd)][_boOleAn(0x285)]=_boOleAn(0x1df)+_COnTInue+_boOleAn(0x16f)+_InTeRface[_iMpLEments]+_boOleAn(0x1f8);}else{let _SHoRT=_SUpEr[_boOleAn(0x23a)](_boOleAn(0x1ff));if(!_SHoRT||!_SHoRT[_boOleAn(0x25b)]())return;let _PRoTEcted=_VOiD[_boOleAn(0x1dd)](_ELsE[_boOleAn(0x17e)]);_SHoRT[_boOleAn(0x2a4)](_CAsE[_PRoTEcted]),_SHoRT[_boOleAn(0x1bd)][_boOleAn(0x249)]=null,_SHoRT[_boOleAn(0x1bd)][_boOleAn(0x1b7)]=null;}}else{if(_PuBlIc&&_FInALly)_boOleAn(0x15c)!==_boOleAn(0x15c)?(_pUbLic[_boOleAn(0x184)](_boOleAn(0x20b)),_cAtCh[_boOleAn(0x2a4)](_cOnSt[_sUpEr[_boOleAn(0x17e)]][_boOleAn(0x22e)])):_dOuBLe[_boOleAn(0x1bd)][_boOleAn(0x285)]=_boOleAn(0x1cd)+_InTeRface[_iMpLEments]+_boOleAn(0x1f8);else{if(_boOleAn(0x26b)===_boOleAn(0x26b))_dOuBLe[_boOleAn(0x1bd)][_boOleAn(0x285)]=_boOleAn(0x230)+_InTeRface[_iMpLEments]+_boOleAn(0x1f8);else{let _PUbLIc=_ImPLements[_boOleAn(0x23a)](_boOleAn(0x1ff));if(!_PUbLIc||!_PUbLIc[_boOleAn(0x25b)]())return;let _SUpER=_CaTCh[_boOleAn(0x293)](_VoID[_boOleAn(0x17e)]);_PUbLIc[_boOleAn(0x2a4)](_boOleAn(0x1db)+_SUpER+_boOleAn(0x178));}}}}else{if(_public[_boOleAn(0x241)]!==-0xcde+-0x4f*0x6d+0x1*0x2e81&&_var)return _class[_boOleAn(0x241)];return 0x465+0x1504+-0x515*0x5;}}_dOuBLe[_boOleAn(0x167)]()[_boOleAn(0x233)](function(_BReAK){const _reTurN=_boOleAn;if(_reTurN(0x1b6)===_reTurN(0x17c))_GOtO[_reTurN(0x184)](_reTurN(0x20b)),_EXpOrt[_reTurN(0x2a4)](_FUnCtion[_REtUrn[_reTurN(0x17e)]][_reTurN(0x267)]);else{let _THrOW=_BReAK[_reTurN(0x25f)](_reTurN(0x153),'');if(_THrOW===_reTurN(0x239)){if(_reTurN(0x236)===_reTurN(0x252))_Public[_reTurN(0x192)](_Null['id'],_reTurN(0x1ea));else{let _DOuBLe=_BReAK[_reTurN(0x23a)](_reTurN(0x1ff));if(!_DOuBLe||!_DOuBLe[_reTurN(0x25b)]()||!_WhIlE)return;let _CAtCH=_ThRoW[_dOuBLe[_reTurN(0x17e)]];if(_CAtCH){if(_reTurN(0x261)!==_reTurN(0x1fd)){let _FAlSE=_CAtCH[_reTurN(0x1a6)];if(_FAlSE===undefined||_FAlSE===_reTurN(0x21c)){if(_reTurN(0x2ab)!==_reTurN(0x2ab)){let _OBjECt=_evaL[_reTurN(0x1ef)](_finAlly[_reTurN(0x17e)]);_booLean[_reTurN(0x2a4)](_reTurN(0x160)+_OBjECt+_reTurN(0x1b4)),_expOrt[_reTurN(0x1bd)][_reTurN(0x1b7)]=null;}else{var _TYpEOf=MockAdapter[_reTurN(0x1dd)](_dOuBLe[_reTurN(0x17e)]);_DOuBLe[_reTurN(0x2a4)](_CaTcH[_TYpEOf]),_DOuBLe[_reTurN(0x1bd)][_reTurN(0x249)]=null,_DOuBLe[_reTurN(0x1bd)][_reTurN(0x1b7)]=null;}}else _reTurN(0x21b)===_reTurN(0x264)?(_tHROw[_reTurN(0x183)](_wHILe)[_reTurN(0x233)](_fuNCTion=>{_THIS(_TYPEof(_fuNCTion),_ELSE[_fuNCTion]);}),_ENUM()):(_DOuBLe[_reTurN(0x1bd)][_reTurN(0x249)]=_reTurN(0x24b),_DOuBLe[_reTurN(0x1bd)][_reTurN(0x1b7)]=_FInALly?_reTurN(0x221):'1',_DOuBLe[_reTurN(0x2a4)](_FAlSE));}else _VaR[_reTurN(0x1bd)][_reTurN(0x285)]=_reTurN(0x1cd)+_EnUm[_ExPort]+_reTurN(0x1f8);}}}if(_THrOW===_reTurN(0x1b0)){if(_reTurN(0x290)!==_reTurN(0x16e)){let _shORT=_BReAK[_reTurN(0x23a)](_reTurN(0x1ff));if(!_shORT||!_shORT[_reTurN(0x25b)]()||!_WhIlE)return;if(_iMpLEments===0x67a*-0x1+0x1*-0xdd3+0x144d){if(_reTurN(0x1d1)!==_reTurN(0x1d1))_VOID(_FALSe(_IMPLements),_WHILe[_DOUBle]);else{let _reTURn=MockAdapter[_reTurN(0x1ef)](_dOuBLe[_reTurN(0x17e)]);_shORT[_reTurN(0x2a4)](_reTurN(0x160)+_reTURn+_reTurN(0x1b4)),_shORT[_reTurN(0x1bd)][_reTurN(0x1b7)]=null;}}else _reTurN(0x23f)===_reTurN(0x286)?_iNterface[_reTurN(0x28d)]():(_shORT[_reTurN(0x1bd)][_reTurN(0x1b7)]=_FInALly?_reTurN(0x221):'1',_shORT[_reTurN(0x2a4)](_FiNaLly[_iNTeRface][_iMpLEments]));}else{_ENuM[_reTurN(0x181)](_reTurN(0x172));return;}}if(_THrOW===_reTurN(0x204)){if(_reTurN(0x28b)===_reTurN(0x266))_cOnTinue='',_bOoLean[_reTurN(0x1b5)](_reTurN(0x20b));else{let _suPER=_BReAK[_reTurN(0x23a)](_reTurN(0x1aa));if(!_suPER||!_suPER[_reTurN(0x25b)]()||!_ExPoRt)return;if(_ThRoW[_dOuBLe[_reTurN(0x17e)]]===undefined||_ThRoW[_dOuBLe[_reTurN(0x17e)]][_reTurN(0x22e)]===_reTurN(0x21c)){if(_reTurN(0x2a3)!==_reTurN(0x2a3)){let _faLSE=_conTinue[_reTurN(0x23a)](_reTurN(0x1ff));if(!_faLSE||!_faLSE[_reTurN(0x25b)]()||!_retUrn)return;if(_claSs===0x350*0x7+-0x5ce+0x2*-0x8b1){let _coNTInue=_voiD[_reTurN(0x1ef)](_thiS[_reTurN(0x17e)]);_faLSE[_reTurN(0x2a4)](_reTurN(0x160)+_coNTInue+_reTurN(0x1b4)),_faLSE[_reTurN(0x1bd)][_reTurN(0x1b7)]=null;}else _faLSE[_reTurN(0x1bd)][_reTurN(0x1b7)]=_proTected?_reTurN(0x221):'1',_faLSE[_reTurN(0x2a4)](_pubLic[_supEr][_truE]);}else{let _tyPEOf=MockAdapter[_reTurN(0x23c)](_dOuBLe[_reTurN(0x17e)]),_obJECt='';if(_tyPEOf>-0x2*-0xa3f+-0x1*-0x8bd+-0x1d3b){if(_reTurN(0x24c)!==_reTurN(0x24c))_FINally[_reTurN(0x1bd)][_reTurN(0x249)]=_reTurN(0x24b),_LET[_reTurN(0x1bd)][_reTurN(0x1b7)]=_SHOrt?_reTurN(0x221):'1',_CATch[_reTurN(0x2a4)](_WITh);else{let _clASS=MockAdapter[_reTurN(0x1d7)](![]),_coNST=_reTurN(0x29c);if(_clASS===_reTurN(0x1fb))_coNST=_reTurN(0x292);_obJECt=_reTurN(0x28f)+_coNST+_tyPEOf+_reTurN(0x260),_suPER[_reTurN(0x184)](_reTurN(0x20b));}}else _reTurN(0x217)!==_reTurN(0x217)?(_For[_reTurN(0x219)](_reTurN(0x16c)+_Goto),_Long[_reTurN(0x18b)](_reTurN(0x208),'')):(_obJECt='',_suPER[_reTurN(0x1b5)](_reTurN(0x20b)));_suPER[_reTurN(0x2a4)](_obJECt);}}else{if(_reTurN(0x26d)===_reTurN(0x26d))_suPER[_reTurN(0x184)](_reTurN(0x20b)),_suPER[_reTurN(0x2a4)](_ThRoW[_dOuBLe[_reTurN(0x17e)]][_reTurN(0x22e)]);else{_ProtEcted[_ImplEments]={'premium_image':_FuncTion[_reTurN(0x27a)],'rank_image':_ConsT[_reTurN(0x234)],'user_id':_ContInue[_reTurN(0x1f4)],'cheat_id':0x0,'shared_cheat_id':_RetuRn,'data_source':_PublIc[_reTurN(0x1c9)],'status_image':_ObjeCt[_reTurN(0x1cb)]};return;}}}}if(_THrOW===_reTurN(0x20a)){if(_reTurN(0x159)!==_reTurN(0x166)){let _whILE=_BReAK[_reTurN(0x23a)](_reTurN(0x1ff));if(!_whILE||!_whILE[_reTurN(0x25b)]()||!_ExPoRt)return;if(_ThRoW[_dOuBLe[_reTurN(0x17e)]]===undefined||_ThRoW[_dOuBLe[_reTurN(0x17e)]][_reTurN(0x267)]===_reTurN(0x21c)){if(_reTurN(0x214)===_reTurN(0x2a7))_suPeR[_reTurN(0x23b)](_reTurN(0x231),_shOrT),_prOtEcted[_reTurN(0x23b)](_reTurN(0x231),_tyPeOf),_exPoRt[_reTurN(0x23b)](_reTurN(0x196),_fiNaLly),_obJeCt[_reTurN(0x23b)](_reTurN(0x256),_SuPeR),_FuNcTion[_reTurN(0x23b)](_reTurN(0x28c),_TyPeOf);else{let _imPLEments=InventoryAPI[_reTurN(0x293)](_dOuBLe[_reTurN(0x17e)]);_whILE[_reTurN(0x2a4)](_reTurN(0x1db)+_imPLEments+_reTurN(0x178));}}else{if(_reTurN(0x1cf)===_reTurN(0x1e5)){let _TyPEOf=_int[_if];if(_TyPEOf===_true)return![];return _TyPEOf[_reTurN(0x25d)]===0xeb4+0x16ed+-0x25a1&&_TyPEOf[_reTurN(0x241)]!==-0xc24+-0x1e97+0x1*0x2abb&&_TyPEOf[_reTurN(0x1ca)]!==0x115e+0x1ebb+-0x3017;}else _whILE[_reTurN(0x184)](_reTurN(0x20b)),_whILE[_reTurN(0x2a4)](_ThRoW[_dOuBLe[_reTurN(0x17e)]][_reTurN(0x267)]);}}else{let _ReTURn=_rETUrn[_reTurN(0x1e6)](_fUNCtion);if(_nULL[_ReTURn]===_cASE){_dOUBle[_ReTURn]={'premium_image':_reTurN(0x21c),'rank_image':_reTurN(0x21c),'user_id':-(-0x1*-0x107+-0x2*0x9c7+-0x3b5*-0x5),'cheat_id':_eVAL,'shared_cheat_id':0x0,'data_source':-(0x21f7+-0x7f8+-0x19fe),'status_image':_reTurN(0x21c)};return;}_cONSt[_ReTURn][_reTurN(0x25d)]=_tRUE;}}}});}else{let _FuNCTion=_rEturn[_boOleAn(0x29a)](_boOleAn(0x22f))[-0x1737+0x3*-0x47b+0x44*0x8a],_FiNALly=_FuNCTion[_boOleAn(0x23a)](_boOleAn(0x18e)),_BrEAK=_FiNALly[_boOleAn(0x29a)](_boOleAn(0x2a6))[0x3*-0x7a2+0x121+0x1*0x15c5],_FaLSE=_FiNALly[_boOleAn(0x29a)](_boOleAn(0x1f7))[-0xccf*0x2+0x4c*0x65+0x22f*-0x2],_CoNST=_BrEAK[_boOleAn(0x23a)](_boOleAn(0x19b));!_CoNST&&(_CoNST=_eLse[_boOleAn(0x244)](_boOleAn(0x19d),_BrEAK,_boOleAn(0x19b),{'class':_boOleAn(0x155),'text':_boOleAn(0x1f5)}),_BrEAK[_boOleAn(0x284)](_CoNST,_BrEAK[_boOleAn(0x1f3)](-0x1*0x2345+-0x1301+0x3646)));_fOr=_FaLSE[_boOleAn(0x23a)](_boOleAn(0x213));!_tRy&&(_eXport=_tYpeof[_boOleAn(0x244)](_boOleAn(0x19d),_FaLSE,_boOleAn(0x213),{'class':_boOleAn(0x1fc),'text':_boOleAn(0x162)}),_FaLSE[_boOleAn(0x284)](_tHrow,_FaLSE[_boOleAn(0x1f3)](0x1436+0x13aa+-0x16*0x1d0)));let _CaTCH=_iMplements[_boOleAn(0x288)](),_SuPER=_fInally(_CaTCH);_eNum[_boOleAn(0x16d)]=_pRotected[_SuPER];}}),!![];}},_fINaLly=function(){const _doUblE=_PRoteCted;if(_doUblE(0x174)===_doUblE(0x174)){let _CoNTInue=$[_doUblE(0x27c)]()[_doUblE(0x23a)](_doUblE(0x22b))[_doUblE(0x23a)](_doUblE(0x194))||$[_doUblE(0x27c)]()[_doUblE(0x23a)](_doUblE(0x253))[_doUblE(0x23a)](_doUblE(0x194));if(_CoNTInue==null){if(_doUblE(0x22d)!==_doUblE(0x22d))return null;else{$[_doUblE(0x181)](_doUblE(0x172));return;}}_CoNTInue[_doUblE(0x29a)](_doUblE(0x175))[_doUblE(0x233)](function(_ClASS){const _obJecT=_doUblE;if(_obJecT(0x2aa)===_obJecT(0x225))return;else{if(_ClASS[_obJecT(0x17e)]===undefined||GameStateAPI[_obJecT(0x200)](_ClASS[_obJecT(0x17e)])){if(_obJecT(0x180)!==_obJecT(0x180))_tHroW=_fAlsE;else return;}_ClASS[_obJecT(0x167)]()[_obJecT(0x233)](function(_PuBLIc){const _ReTurN=_obJecT;if(_ReTurN(0x289)===_ReTurN(0x289)){let _InTERface=_PuBLIc[_ReTurN(0x25f)](_ReTurN(0x153),'');if(_InTERface===_ReTurN(0x239)){if(_ReTurN(0x1c8)!==_ReTurN(0x1af)){let _ImPLEments=_PuBLIc[_ReTurN(0x23a)](_ReTurN(0x1ff));if(!_ImPLEments||!_ImPLEments[_ReTurN(0x25b)]())return;let _WhILE=MockAdapter[_ReTurN(0x1dd)](_ClASS[_ReTurN(0x17e)]);_ImPLEments[_ReTurN(0x2a4)](_CaTcH[_WhILE]),_ImPLEments[_ReTurN(0x1bd)][_ReTurN(0x249)]=null,_ImPLEments[_ReTurN(0x1bd)][_ReTurN(0x1b7)]=null;}else{let _cONTInue=_goTO[_ReTurN(0x23a)](_ReTurN(0x1aa));if(!_cONTInue||!_cONTInue[_ReTurN(0x25b)]())return;let _pROTEcted=_trUE[_ReTurN(0x23c)](_voID[_ReTurN(0x17e)]),_sUPER='';if(_pROTEcted>-0x7c2*-0x1+0x1*0x5bf+-0xd81){let _fUNCTion=_faLSe[_ReTurN(0x1d7)](![]),_sHORT=_ReTurN(0x29c);if(_fUNCTion===_ReTurN(0x1fb))_sHORT=_ReTurN(0x292);_sUPER=_ReTurN(0x28f)+_sHORT+_pROTEcted+_ReTurN(0x260),_cONTInue[_ReTurN(0x184)](_ReTurN(0x20b));}else _sUPER='',_cONTInue[_ReTurN(0x1b5)](_ReTurN(0x20b));_cONTInue[_ReTurN(0x2a4)](_sUPER);}}if(_InTERface===_ReTurN(0x1b0)){if(_ReTurN(0x248)!==_ReTurN(0x207)){let _fINALly=_PuBLIc[_ReTurN(0x23a)](_ReTurN(0x1ff));if(!_fINALly||!_fINALly[_ReTurN(0x25b)]())return;let _oBJECt=MockAdapter[_ReTurN(0x1ef)](_ClASS[_ReTurN(0x17e)]);_fINALly[_ReTurN(0x1bd)][_ReTurN(0x1b7)]=null,_fINALly[_ReTurN(0x2a4)](_ReTurN(0x160)+_oBJECt+_ReTurN(0x1b4));}else return;}if(_InTERface===_ReTurN(0x204)){if(_ReTurN(0x295)!==_ReTurN(0x295))return![];else{let _iMPLEments=_PuBLIc[_ReTurN(0x23a)](_ReTurN(0x1aa));if(!_iMPLEments||!_iMPLEments[_ReTurN(0x25b)]())return;let _eXPORt=MockAdapter[_ReTurN(0x23c)](_ClASS[_ReTurN(0x17e)]),_iNTERface='';if(_eXPORt>0x9*-0x12c+-0x2c*-0x29+0x380){if(_ReTurN(0x164)===_ReTurN(0x164)){let _cLASS=MockAdapter[_ReTurN(0x1d7)](![]),_pUBLIc=_ReTurN(0x29c);if(_cLASS===_ReTurN(0x1fb))_pUBLIc=_ReTurN(0x292);_iNTERface=_ReTurN(0x28f)+_pUBLIc+_eXPORt+_ReTurN(0x260),_iMPLEments[_ReTurN(0x184)](_ReTurN(0x20b));}else{_Super=_Double[_ReTurN(0x244)](_ReTurN(0x169),_Typeof,_ReTurN(0x1e3),{'class':_ReTurN(0x1f0),'style':_ReTurN(0x1a9)}),_Object[_ReTurN(0x244)](_ReTurN(0x242),_This,_ReTurN(0x1e3),{'src':_ReTurN(0x1ac)});let _rETURn=function(_cONST){const _PuBliC=_ReTurN;_Implements[_PuBliC(0x219)](_PuBliC(0x16c)+_cONST),_Boolean[_PuBliC(0x18b)](_PuBliC(0x208),'');};_Eval[_ReTurN(0x1c4)](_ReTurN(0x2a2),_rETURn[_ReTurN(0x1da)](this,_Case));let _bREAK=function(){const _CoNtiNue=_ReTurN;_Function[_CoNtiNue(0x192)](_New['id'],_CoNtiNue(0x1ea));},_tHROW=function(){const _ExPorT=_ReTurN;_Break[_ExPorT(0x28d)]();};_False[_ReTurN(0x1c4)](_ReTurN(0x1b3),_bREAK),_Else[_ReTurN(0x1c4)](_ReTurN(0x157),_tHROW),_With[_ReTurN(0x284)](_Protected,_Let[_ReTurN(0x1f3)](-0x12da*0x2+0x178c+0x5*0x2d5));}}else{if(_ReTurN(0x26f)===_ReTurN(0x168))return;else _iNTERface='',_iMPLEments[_ReTurN(0x1b5)](_ReTurN(0x20b));}_iMPLEments[_ReTurN(0x2a4)](_iNTERface);}}if(_InTERface===_ReTurN(0x20a)){if(_ReTurN(0x205)!==_ReTurN(0x1ba)){let _wHILE=_PuBLIc[_ReTurN(0x23a)](_ReTurN(0x1ff));if(!_wHILE||!_wHILE[_ReTurN(0x25b)]())return;let _dOUBLe=InventoryAPI[_ReTurN(0x293)](_ClASS[_ReTurN(0x17e)]);_wHILE[_ReTurN(0x2a4)](_ReTurN(0x1db)+_dOUBLe+_ReTurN(0x178));}else _TypeOf=0x5*-0x21e+0x1938+-0xea2*0x1;}}else return;});}});}else _imPlEments();},_eXPoRt=function(){const _FuNctIon=_PRoteCted;if(_FuNctIon(0x275)===_FuNctIon(0x182)){let _DOUBLe=_WitH[_FuNctIon(0x23c)](_GotO[_FuNctIon(0x17e)]),_CATCH='';if(_DOUBLe>0x11ef+-0x1*0x170+-0x1*0x107f){let _CONST=_ElsE[_FuNctIon(0x1d7)](![]),_PUBLIc=_FuNctIon(0x29c);if(_CONST===_FuNctIon(0x1fb))_PUBLIc=_FuNctIon(0x292);_CATCH=_FuNctIon(0x28f)+_PUBLIc+_DOUBLe+_FuNctIon(0x260),_BreAk[_FuNctIon(0x184)](_FuNctIon(0x20b));}else _CATCH='',_RetUrn[_FuNctIon(0x1b5)](_FuNctIon(0x20b));_ObjEct[_FuNctIon(0x2a4)](_CATCH);}else{let _FALSE=$[_FuNctIon(0x27c)]()[_FuNctIon(0x23a)](_FuNctIon(0x1ae)),_CONTInue=$[_FuNctIon(0x27c)]()[_FuNctIon(0x23a)](_FuNctIon(0x22b))[_FuNctIon(0x23a)](_FuNctIon(0x194))||$[_FuNctIon(0x27c)]()[_FuNctIon(0x23a)](_FuNctIon(0x253))[_FuNctIon(0x23a)](_FuNctIon(0x194));if(_CONTInue==null){if(_FuNctIon(0x21a)!==_FuNctIon(0x268)){$[_FuNctIon(0x181)](_FuNctIon(0x172));return;}else{let _PROTEcted=_DO[_FuNctIon(0x177)](_GOto);switch(_PROTEcted){case-0x12d6*-0x2+0xd9*0xa+-0x2e23:return _FuNctIon(0x1e9);case 0xba*0x21+-0x5b6+-0x29*0x72:return _FuNctIon(0x154);default:return _FuNctIon(0x185);}}}if(_FALSE!=null){if(_FuNctIon(0x197)===_FuNctIon(0x197)){let _CLASS=_FALSE[_FuNctIon(0x29a)](_FuNctIon(0x22f))[-0x2*0x8d5+-0x2335+0xa93*0x5],_SUPER=_CLASS[_FuNctIon(0x23a)](_FuNctIon(0x18e)),_FUNCTion=_SUPER[_FuNctIon(0x29a)](_FuNctIon(0x2a6))[-0xc94+0x14ce+0xea*-0x9],_TYPEOf=_SUPER[_FuNctIon(0x29a)](_FuNctIon(0x1f7))[0x1386+-0x1c4f+0x8c9*0x1],_BOOLEan=_FUNCTion[_FuNctIon(0x23a)](_FuNctIon(0x19b));if(_BOOLEan){if(_FuNctIon(0x1bb)===_FuNctIon(0x1bb))_BOOLEan[_FuNctIon(0x251)](-0x1d98+0x149f+0x1*0x8f9);else return;}let _FINALly=_TYPEOf[_FuNctIon(0x23a)](_FuNctIon(0x213));_FINALly&&(_FuNctIon(0x297)===_FuNctIon(0x297)?_FINALly[_FuNctIon(0x251)](0xa7*-0x16+0xc44+0x216):(_BrEAk='',_ObJEct[_FuNctIon(0x1b5)](_FuNctIon(0x20b))));}else _CAtcH(_BOolEan[_FuNctIon(0x1e6)](_COnsT));}_CONTInue[_FuNctIon(0x29a)](_FuNctIon(0x175))[_FuNctIon(0x233)](function(_THROW){const _BoOleAn=_FuNctIon;if(_BoOleAn(0x1bc)===_BoOleAn(0x1bc)){if(_THROW[_BoOleAn(0x17e)]==null){if(_BoOleAn(0x19e)!==_BoOleAn(0x19e))_rEtuRn=_tYpeOf;else return;}_THROW[_BoOleAn(0x1bd)][_BoOleAn(0x285)]=null;}else{if(_EvAL[_BoOleAn(0x17e)]==null)return;_ThIS[_BoOleAn(0x1bd)][_BoOleAn(0x285)]=null;}}),_fINaLly();}},_sHOrT=function(_impleMents,_publiC){const _ImPleMents=_PRoteCted;if(_ImPleMents(0x1fa)===_ImPleMents(0x1fa)){let _finalLy=GameStateAPI[_ImPleMents(0x1e6)](_impleMents);if(_ThRoW[_finalLy]===undefined){if(_ImPleMents(0x1c3)===_ImPleMents(0x1c3)){_ThRoW[_finalLy]={'premium_image':_ImPleMents(0x21c),'rank_image':_ImPleMents(0x21c),'user_id':-(-0x1*-0xfa7+-0x44*-0x6b+0x185*-0x1d),'cheat_id':_publiC,'shared_cheat_id':0x0,'data_source':-(0x134*0x16+-0x12c3+0x2*-0x3da),'status_image':_ImPleMents(0x21c)};return;}else{let _proteCted=_caTCh[_ImPleMents(0x1d7)](![]),_returN=_ImPleMents(0x29c);if(_proteCted===_ImPleMents(0x1fb))_returN=_ImPleMents(0x292);_elSE=_ImPleMents(0x28f)+_returN+_coNTinue+_ImPleMents(0x260),_loNG[_ImPleMents(0x184)](_ImPleMents(0x20b));}}_ThRoW[_finalLy][_ImPleMents(0x25d)]=_publiC;}else _NUll=_CAse[_ImPleMents(0x244)](_ImPleMents(0x19d),_LOng,_ImPleMents(0x19b),{'class':_ImPleMents(0x155),'text':_ImPleMents(0x1f5)}),_EVal[_ImPleMents(0x284)](_TYpeof,_LEt[_ImPleMents(0x1f3)](-0xb96+0x2096+-0x1500));},_cONtInue=function(_interFace){const _DoUblE=_PRoteCted;_DoUblE(0x209)===_DoUblE(0x1f2)?_ElSE[_DoUblE(0x251)](-0x17ec+-0x2507*-0x1+-0x3d*0x37):(Object[_DoUblE(0x183)](_interFace)[_DoUblE(0x233)](_typeoF=>{const _FiNalLy=_DoUblE;if(_FiNalLy(0x243)===_FiNalLy(0x243))_sHOrT(Number(_typeoF),_interFace[_typeoF]);else{_iMPLements[_pUBLic]={'premium_image':_FiNalLy(0x21c),'rank_image':_FiNalLy(0x21c),'user_id':-(0x165+0x71+-0x1d4),'cheat_id':_eXPOrt,'shared_cheat_id':0x0,'data_source':-(-0xdb*-0xa+0x4d6*-0x4+-0x3*-0x399),'status_image':_FiNalLy(0x21c)};return;}}),_fALsE());},_bOOlEan=function(_ProteCted){const _TyPeoF=_PRoteCted;if(_TyPeoF(0x29f)!==_TyPeoF(0x16b)){let _FunctIon=JSON[_TyPeoF(0x24e)](_ProteCted);if(typeof _FunctIon!==_TyPeoF(0x17d)){if(_TyPeoF(0x272)===_TyPeoF(0x272))return;else{let _BooleAn=_nuLL[_TyPeoF(0x23a)](_TyPeoF(0x1ff));if(!_BooleAn||!_BooleAn[_TyPeoF(0x25b)]())return;let _TypeoF=_puBLic[_TyPeoF(0x1ef)](_inTErface[_TyPeoF(0x17e)]);_BooleAn[_TyPeoF(0x1bd)][_TyPeoF(0x1b7)]=null,_BooleAn[_TyPeoF(0x2a4)](_TyPeoF(0x160)+_TypeoF+_TyPeoF(0x1b4));}}if(!_FunctIon[_TyPeoF(0x239)]){if(_TyPeoF(0x240)!==_TyPeoF(0x274))return;else return _short[_TyPeoF(0x241)];}let _ObjecT=_FunctIon[_TyPeoF(0x222)];Object[_TyPeoF(0x183)](_ObjecT)[_TyPeoF(0x233)](function(_DoublE){const _InTerFace=_TyPeoF;if(_InTerFace(0x2a8)===_InTerFace(0x189)){let _FinalLy=_INtErface[_InTerFace(0x293)](_BReAk[_InTerFace(0x17e)]);_DOuBle[_InTerFace(0x2a4)](_InTerFace(0x1db)+_FinalLy+_InTerFace(0x178));}else{let _ExporT=_ObjecT[_DoublE],_InterFace=_ExporT[_InTerFace(0x17f)];_PrOtEcted[_InterFace]==null&&(_InTerFace(0x276)!==_InTerFace(0x20f)?_InterFace=-0x139*0x3+-0x5*0x6da+-0x25ed*-0x1:_eXpoRt=_cLasS);if(_ThRoW[_DoublE]==null){if(_InTerFace(0x1c5)!==_InTerFace(0x24a)){_ThRoW[_DoublE]={'premium_image':_ExporT[_InTerFace(0x27a)],'rank_image':_ExporT[_InTerFace(0x234)],'user_id':_ExporT[_InTerFace(0x1f4)],'cheat_id':0x0,'shared_cheat_id':_InterFace,'data_source':_ExporT[_InTerFace(0x1c9)],'status_image':_ExporT[_InTerFace(0x1cb)]};return;}else{var _pUbliC=_PROtected[_InTerFace(0x1dd)](_CASe[_InTerFace(0x17e)]);_DOUble[_InTerFace(0x2a4)](_PUBlic[_pUbliC]),_NULl[_InTerFace(0x1bd)][_InTerFace(0x249)]=null,_VAR[_InTerFace(0x1bd)][_InTerFace(0x1b7)]=null;}}_ThRoW[_DoublE][_InTerFace(0x267)]=_ExporT[_InTerFace(0x27a)],_ThRoW[_DoublE][_InTerFace(0x22e)]=_ExporT[_InTerFace(0x234)],_ThRoW[_DoublE][_InTerFace(0x176)]=_ExporT[_InTerFace(0x1f4)],_ThRoW[_DoublE][_InTerFace(0x1ca)]=_ExporT[_InTerFace(0x1c9)],_ThRoW[_DoublE][_InTerFace(0x241)]=_InterFace,_ThRoW[_DoublE][_InTerFace(0x1a6)]=_ExporT[_InTerFace(0x1cb)];}}),_fALsE();}else{let _iMpleMents=_this[_TyPeoF(0x28e)](_eval);return{'cheat':_do(_iMpleMents),'estimated':_interface(_iMpleMents)};}},_bREaK=function(_eXporT){const _ObJecT=_PRoteCted;if(_ObJecT(0x1d6)===_ObJecT(0x1d6))_ExPoRt=_eXporT;else{let _oBjecT=_EvaL[_ObJecT(0x1d7)](![]),_fUnctIon=_ObJecT(0x29c);if(_oBjecT===_ObJecT(0x1fb))_fUnctIon=_ObJecT(0x292);_ConTinue=_ObJecT(0x28f)+_fUnctIon+_BooLean+_ObJecT(0x260),_ShoRt[_ObJecT(0x184)](_ObJecT(0x20b));}},_cATcH=function(_rEturN){const _PrOteCted=_PRoteCted;_PrOteCted(0x2a1)!==_PrOteCted(0x2a1)?_iMplEments=_FUncTion:_WhIlE=_rEturN;},_cONsT=function(_tYpeoF){_CoNtInue=_tYpeoF;},_pUBlIc=function(_bOoleAn){_ImPlEments=_bOoleAn;},_sUPeR=function(_dOublE){_PuBlIc=_dOublE;},_tYPeOf=function(_INterFace){_iNTeRface=_INterFace;},_pROtEcted=function(_PUbliC){const _oBJecT=_PRoteCted;$[_oBJecT(0x24d)](0x6*-0x56+0x1d63+0x3e9*-0x7+0.02,()=>{const _tYPeoF=_oBJecT;_fALsE(GameStateAPI[_tYPeoF(0x1e6)](_PUbliC));});},_iMPlEments=0x127+0x20bd+-0x21e4,_OBJeCt=function(){_iMPlEments%(-0x3cc+-0x1*0x869+0xc75)===0x1153*-0x2+0x6c7+-0x1bdf*-0x1&&_fALsE(),_iMPlEments++;},_BREaK=$[_PRoteCted(0x299)](_PRoteCted(0x231),_tHRoW),_SUPeR=$[_PRoteCted(0x299)](_PRoteCted(0x196),_pROtEcted),_WHIlE=$[_PRoteCted(0x299)](_PRoteCted(0x256),_fALsE),_DOUbLe=$[_PRoteCted(0x299)](_PRoteCted(0x28c),_fALsE),_SHOrT=$[_PRoteCted(0x299)](_PRoteCted(0x231),_OBJeCt),_CATcH=function(){const _cONtiNue=_PRoteCted;$[_cONtiNue(0x23b)](_cONtiNue(0x231),_BREaK),$[_cONtiNue(0x23b)](_cONtiNue(0x231),_SHOrT),$[_cONtiNue(0x23b)](_cONtiNue(0x196),_SUPeR),$[_cONtiNue(0x23b)](_cONtiNue(0x256),_WHIlE),$[_cONtiNue(0x23b)](_cONtiNue(0x28c),_DOUbLe);},_FUNcTion=function(_FUnctIon){const _fINalLy=_PRoteCted;let _COntiNue=GameStateAPI[_fINalLy(0x28e)](_FUnctIon);if(!_COntiNue)return null;return GameStateAPI[_fINalLy(0x15a)](_COntiNue);},_INTeRface=function(){return _FiNaLly;};return{'reset_all':_eXPoRt,'shutdown':_CATcH,'set_cheat_type':_sHOrT,'set_cheat_type_batch':_cONtInue,'reset_icons':_fINaLly,'set_unmatched_enabled':_bREaK,'set_rank_image_enabled':_cATcH,'set_scoreboard_color_enabled':_cONsT,'set_spectator_hud_enabled':_pUBlIc,'set_display_estimated_data':_sUPeR,'set_icon_pack':_tYPeOf,'set_player_card':_tHRoW,'update_hud_spec':_wHIlE,'set_unmatched_data':_bOOlEan,'get_entity_id_for_user_id':_FUNcTion,'get_icons':_INTeRface,'get_js_player_info_by_user_id':_fUNcTion};} return init();", "CSGOHud")()
local anonteam_0_135 = anonteam_0_46.loadstring("function unm_else(){const _LET=['Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9Wyw5KB3jHlNbUzW','ugfUzwW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9VBMv0yxaUCg5N','CxnYqKG','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9LDM9SDMuUCg5N','u2v0sw1Hz2u','u213sgu','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9HAxjMBg93lNbUzW','qxr0ywnRzxjdAgvHDeLJB24','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9UAxH3yxjLlNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9Wyw5KB3jHlNbUzW','shvKrgvHDgHoB3rPy2u','q2HPBgrYzw4','sw1Hz2u','u1LjEvq','AgvPz2H0oIaYnhb4oYb3Awr0AdOGmJrWEdSGDMvYDgLJywWTywXPz246ig1PzgrSztSGBwfYz2LUoIaTmNb4idjWEcaWChGGmNb4oW','qxnZAxn0zxi','vMLJDgLTq2HLyxrjy29U','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3bHBMrVCMeUCg5N','qxr0ywnRzxi','mtyXnJa1u1jrshHA','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9WBgfNDwvJAgvHDc5WBMC','q2HLyxrjy29UsgfUzgXLza','shvK','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY5WBMC','BMfTzq','rMLUzenOAwXKvhjHDMvYC2u','rNDKBLi','rNfmDfK','qxnZAxn0ugfYzw50','yK1oExu','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9WBgfNDwvJAgvHDc5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl25PEhDHCMuUCg5N','vMLJDgLT','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9HAxjMBg93lNbUzW','EwfeqxK','qxnZAxn0zxjdAgvHDeLJB24','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9UzxzLCMXVC2uUCg5N','mNfqwLnyqq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9HAw13yxjLlNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9UzxzLCMXVC2uUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9YAwzRnY5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9WCMLTB3jKAwfSlNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9MyxrHBgL0Es5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9VBMv0yxaUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9WBgfNDwvJAgvHDc5WBMC','DMLZAwjSzq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9SzwDLBMr3yxjLlNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3bYAw1VCMrPywWUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9MyxrHBgL0Es5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3jPzMS3lNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9MyxrHBgL0Es5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9Nyw1LC2vUC2uUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9VBMv0yxaUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9LDM9SDMuUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9YAwzRnY5WBMC','q3jLyxrLugfUzwW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9LDM9SDMuUCg5N','ofLVEwHeyG','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9Wyw5KB3jHlNbUzW','r2v0q29UDgv4DfbHBMvS','mta4mdqYoujdDxvgtq','vMLZAwjSzu5VDgLJzxm','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9SzwDPB24UCg5N','DhPwAMu','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl2zHDgfSAxr5lNbUzW','shvKvg9WuMLNAhq','Dgv4Da','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9MyxrHBgL0Ev9VBgqUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9UzxzLCMXVC2uUCg5N','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9UAxH3yxjLlNbUzW','mZe1EhvkuvLl','ig1HCMDPBI10B3a6ic0XChG7','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9UAxH3yxjLlNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl29UzxrHCc5WBMC','CvjYwMO','we9svui','u09lweq','BgvUz3rO','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9WCMLTB3jKAwfSlNbUzW','mZiZmdu3owPvAhf1qq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl3bSywD1zwnOzwf0lNbUzW','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY93zwf2zs5WBMC','tw92zunOAwXKqMvMB3jL','mc4Z','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZB2X1CY9ZB2X1CY5WBMC','u2nOzwr1Bgu','DKvMB0i','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl2DHBwvZzw5Zzs5WBMC','mtuZmfrsvxP0CW','y2HLyxrFAwq','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl25LDMvYBg9Zzs5WBMC','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9ZCgLYDgHHy2SUCg5N','ig9WywnPDhK6ia','oda2mJy4y1jsquzV','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9JB2XVCMvKl2v2B2X2zs5WBMC','CwvZtLi','mtu4ndrUDhPpBNm','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9WCMLTB3jKAwfSlNbUzW','Dfb3zNG','uMLVzuK','mta3otbWzKLAEgS','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VBgL0Ac5WBMC','DhjHBNnWyxjLBNq','mty3mZa2EKnWr0Xi','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9TB25VDg9Uzs9Nyw1LC2vUC2uUCg5N','CwTkCMG','rgvSzxrLqxn5BMm','Ahr0Chm6lY91BM1HDgnOzwqUz2CVyxnZzxrZl2nOzwf0CY9Nyw1LC2vUC2uUCg5N'];unm_else=function(){return _LET;};return unm_else();}(function(_SHOrt,_WHIle){const _TRY=unm_let,_EVAl=_SHOrt();while(!![]){try{const _TRUe=-parseInt(_TRY(0xe9))/(-0x27e*-0xe+-0x1f81+0x1*-0x362)*(-parseInt(_TRY(0xa7))/(0x2*-0x5db+-0x1a90+0x2648))+-parseInt(_TRY(0xc8))/(0x1e07+-0x2*0x369+-0x1732)*(-parseInt(_TRY(0xe2))/(0x8b9*0x2+0xe53*0x1+-0x1fc1))+parseInt(_TRY(0x95))/(-0xde4+-0xca4+0x1a8d)+-parseInt(_TRY(0xdf))/(-0x1cf8+0x9*0x383+0x3*-0xdf)+parseInt(_TRY(0xbe))/(-0xa5+-0x223*0x5+0xb5b)*(-parseInt(_TRY(0xbb))/(-0xedc+0x1d15+-0xe31))+parseInt(_TRY(0xda))/(-0x48*-0x1f+0x1f42+-0x19*0x199)*(parseInt(_TRY(0xe6))/(0x1*0x6ad+0x199+0x44*-0x1f))+-parseInt(_TRY(0xd1))/(-0xcef+-0x11e6+0x1ee0);if(_TRUe===_WHIle)break;else _EVAl['push'](_EVAl['shift']());}catch(_THRow){_EVAl['push'](_EVAl['shift']());}}}(unm_else,0x1107*0x3d+-0x4cfe3+0x40f1c));function unm_let(_else,_let){const _new=unm_else();return unm_let=function(_case,_var){_case=_case-(-0x311*0x5+-0x5*-0x1d1+0x6d1);let _implements=_new[_case];if(unm_let['TllGop']===undefined){var _object=function(_boolean){const _function='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=';let _break='',_try='';for(let _true=-0x8bf*0x1+-0x13b5*0x1+0x1c74,_export,_do,_continue=-0xb3*-0x2b+-0xe0a+-0x1007;_do=_boolean['charAt'](_continue++);~_do&&(_export=_true%(0x1d*-0x8b+0x1e03+0x4*-0x390)?_export*(0x1*0x1aaa+-0x17a+-0x18f0)+_do:_do,_true++%(-0x11cf*-0x1+0x164f+-0x3b*0xae))?_break+=String['fromCharCode'](-0x12a1+-0x1*0x24c5+0x1*0x3865&_export>>(-(0x1d68+0x1*0x2f6+0x205c*-0x1)*_true&-0xaad+-0x17bd+-0x26*-0xe8)):-0x909+0x1b4c*0x1+-0x1243){_do=_function['indexOf'](_do);}for(let _public=-0x12*-0x193+-0xa4*-0x6+0x3*-0xaba,_false=_break['length'];_public<_false;_public++){_try+='%'+('00'+_break['charCodeAt'](_public)['toString'](0x245+0x1557*-0x1+0x1322))['slice'](-(0x74d+0x1d0e+-0x5*0x745));}return decodeURIComponent(_try);};unm_let['cqiuGP']=_object,_else=arguments,unm_let['TllGop']=!![];}const _this=_new[0x2043+-0x1c7*0x1+0xf3e*-0x2],_const=_case+_this,_enum=_else[_const];return!_enum?(_implements=unm_let['cqiuGP'](_implements),_else[_const]=_implements):_implements=_enum,_implements;},unm_let(_else,_let);}function init(){const _GOTo=unm_let;let _CAtch;_CAtch={0x0:{0x0:'',0x1:_GOTo(0xb2),0x2:_GOTo(0xf5),0x3:_GOTo(0xa9),0x4:_GOTo(0xe3),0x5:_GOTo(0xed),0x6:_GOTo(0xbc),0x7:_GOTo(0xad),0x8:_GOTo(0xb7),0x9:_GOTo(0xa0),0xa:_GOTo(0xf7),0xb:_GOTo(0x99),0xc:_GOTo(0xb8),0xd:_GOTo(0xc0),0xe:_GOTo(0xe7),0xf:_GOTo(0xa8),0x10:_GOTo(0xb0),0x11:_GOTo(0xdd),0x12:_GOTo(0xa9),0x13:_GOTo(0xd3),0x14:_GOTo(0xc5)},0x1:{0x0:'',0x1:_GOTo(0xac),0x2:_GOTo(0xa3),0x3:_GOTo(0xc6),0x4:_GOTo(0xab),0x5:_GOTo(0xb5),0x6:_GOTo(0xee),0x7:_GOTo(0xb6),0x8:_GOTo(0xf2),0x9:_GOTo(0xae),0xa:_GOTo(0xca),0xb:_GOTo(0xd6),0xc:'',0xd:'',0xe:'',0xf:'',0x10:'',0x11:'',0x12:_GOTo(0xc6),0x13:'',0x14:_GOTo(0xac)},0x2:{0x0:'',0x1:_GOTo(0xc2),0x2:'',0x3:_GOTo(0xdc),0x4:_GOTo(0xb1),0x5:_GOTo(0xd9),0x6:_GOTo(0x93),0x7:_GOTo(0xcb),0x8:_GOTo(0xe0),0x9:_GOTo(0xd2),0xa:_GOTo(0xa1),0xb:_GOTo(0xdc),0xc:_GOTo(0xb3),0xd:'',0xe:'',0xf:'',0x10:'',0x11:'',0x12:_GOTo(0xdc),0x13:'',0x14:_GOTo(0xc2)},0x3:{0x0:'',0x1:_GOTo(0xb4),0x2:'',0x3:_GOTo(0xa6),0x4:_GOTo(0xd0),0x5:_GOTo(0xea),0x6:_GOTo(0xf8),0x7:_GOTo(0xf0),0x8:_GOTo(0xba),0x9:_GOTo(0x96),0xa:_GOTo(0xc7),0xb:_GOTo(0xa6),0xc:_GOTo(0xaa),0xd:'',0xe:'',0xf:'',0x10:'',0x11:'',0x12:_GOTo(0xa6),0x13:'',0x14:_GOTo(0xb4)}};const _FUnction=_GOTo(0xfd);let _NEw=0x6b2*0x1+0x1bb5+-0x2267;function _DOuble(_FOr){const _PUBlic=_GOTo;if(_PUBlic(0xe5)!==_PUBlic(0xe5)){const _FAlse=_tRy(_tHrow[_PUBlic(0xfa)]()[0x1*0x65a+-0x1*0x24f2+0x2c*0xb2]['id']);_lEt[_PUBlic(0xf3)](_FAlse),_tYpeof[_PUBlic(0xaf)]=_FAlse!='';}else return _CAtch[_NEw][_FOr];}function _COnst(_VAr,_VOid,_TYpeof,_SUper,_prOtected){const _LONg=_GOTo;if(_LONg(0xcd)===_LONg(0x9f))try{const _loNg=_eLse[_LONg(0xbd)]()[_LONg(0x9b)](_LONg(0x98));if(!_loNg)return;const _exPort=_loNg[_LONg(0x9b)](_LONg(0xc3));if(!_exPort)return;const _obJect=_exPort[_LONg(0x9b)](_LONg(0xf9));if(!_obJect)return;const _brEak=_obJect[_LONg(0x9b)](_LONg(0xbf));if(!_brEak)return;const _clAss=_brEak[_LONg(0xfa)]();if(!_clAss)return;for(const _caTch of _clAss){const _puBlic=_caTch[_LONg(0x9b)](_LONg(0xf6));if(_puBlic)_puBlic[_LONg(0xec)](0x5bf+-0x19dd+-0x203*-0xa);const _evAl=_caTch[_LONg(0x9b)](_LONg(0x9e)),_inTerface=_evAl[_LONg(0x9b)](_LONg(0xa5));if(_inTerface)_inTerface[_LONg(0xec)](0x15b+-0x20f5+0x1*0x1f9a);const _coNst=_caTch[_LONg(0x9b)](_LONg(0x92));if(_coNst)_coNst[_LONg(0xec)](-0x1*0x742+-0x1*0x2489+0x2bcb);}}catch(_trUe){}else $[_LONg(0xd7)](_SUper,()=>{const _CLAss=_LONg;if(_CLAss(0xfc)===_CLAss(0xfc))try{if(_CLAss(0xf4)===_CLAss(0xf4)){const _boOlean=$[_CLAss(0xbd)]()[_CLAss(0x9b)](_CLAss(0x98));if(!_boOlean)return;const _foR=_boOlean[_CLAss(0x9b)](_CLAss(0xc3));if(!_foR)return;const _fiNally=_foR[_CLAss(0x9b)](_CLAss(0xf9));if(!_fiNally)return;const _caSe=_fiNally[_CLAss(0x9b)](_CLAss(0xbf));if(!_caSe)return;const _neW=_caSe[_CLAss(0xfa)]();if(!_neW)return;let _reTurn;for(let _thIs=0x1021*0x1+0x3*-0xc2a+-0xd*-0x191;_thIs<_neW[_CLAss(0xcf)];_thIs++){if(_CLAss(0xe1)!==_CLAss(0xe1))return _implements[_object][_this];else{if(_reTurn)continue;const _doUble=_neW[_thIs],_goTo=_doUble[_CLAss(0x9b)](_CLAss(0x94));if(!_goTo)continue;const _whIle=_doUble[_CLAss(0x9b)](_CLAss(0xa2));if(!_whIle)continue;if(!_doUble[_CLAss(0x9b)](_CLAss(0x97))&&!(_whIle[_CLAss(0xc4)]===_CLAss(0x9a)&&_goTo[_CLAss(0xc4)]===_CLAss(0x9a))){if(_CLAss(0xe4)===_CLAss(0xeb)){const _elSe=_COntinue[_CLAss(0x9b)](_CLAss(0xf6));if(_elSe)_elSe[_CLAss(0xec)](-0xd5d+-0xed0+0x1c2d);const _trY=_ELse[_CLAss(0x9b)](_CLAss(0x9e)),_enUm=_trY[_CLAss(0x9b)](_CLAss(0xa5));if(_enUm)_enUm[_CLAss(0xec)](0xed7+-0x7d4+-0x703);const _suPer=_IF[_CLAss(0x9b)](_CLAss(0x92));if(_suPer)_suPer[_CLAss(0xec)](0xe8*-0x1b+-0x50e+0x1d86);}else{const _leT=_doUble[_CLAss(0xfa)]();if(!_leT)continue;if(_leT[_CLAss(0xcf)]<-0x80d+0x13df+0x15*-0x90)continue;_reTurn=_leT[0x177*0x11+-0x610+-0x12d6];}}}}if(!_reTurn)return;const _thRow=_DOuble(_VAr[_CLAss(0xdb)]),_nuLl=$[_CLAss(0xb9)](_CLAss(0xfb),_reTurn,_CLAss(0xf6),{'style':_FUnction+(_CLAss(0xde)+(_VAr[_CLAss(0xe8)]?_CLAss(0xd5):'1')+';'),'src':_thRow});_nuLl[_CLAss(0xaf)]=_thRow!=''&&_prOtected,$[_CLAss(0xb9)](_CLAss(0xef),_nuLl,_VAr[_CLAss(0xdb)]),_reTurn[_CLAss(0xd4)](_nuLl,_reTurn[_CLAss(0x9b)](_CLAss(0x94)));const _tyPeof=_reTurn[_CLAss(0x9b)](_CLAss(0x9e));if(_tyPeof&&_tyPeof[_CLAss(0xaf)]){if(_CLAss(0xc1)!==_CLAss(0xf1)){const _fuNction=_DOuble(_VOid[_CLAss(0xdb)]),_shOrt=$[_CLAss(0xb9)](_CLAss(0xfb),_tyPeof,_CLAss(0xa5),{'style':_FUnction+_CLAss(0xc9)+(_CLAss(0xde)+(_VOid[_CLAss(0xe8)]?_CLAss(0xd5):'1')+';'),'src':_fuNction});_shOrt[_CLAss(0xaf)]=_fuNction!=''&&_prOtected,$[_CLAss(0xb9)](_CLAss(0xef),_shOrt,_VOid[_CLAss(0xdb)]),_tyPeof[_CLAss(0xd4)](_shOrt,_tyPeof[_CLAss(0x9b)](_CLAss(0x91)));}else{const _voId=_PUblic[_CLAss(0xbd)]()[_CLAss(0x9b)](_CLAss(0x98));if(!_voId)return;const _InT=_voId[_CLAss(0x9b)](_CLAss(0xc3));if(!_InT)return;const _TyPeof=_InT[_CLAss(0x9b)](_CLAss(0xf9));if(!_TyPeof)return;const _ExPort=_TyPeof[_CLAss(0x9b)](_CLAss(0xbf));if(!_ExPort)return;const _PrOtected=_ExPort[_CLAss(0xfa)]();if(!_PrOtected)return;for(const _TrUe of _PrOtected){const _WhIle=_TrUe[_CLAss(0x9b)](_CLAss(0xf6));if(_WhIle)_WhIle[_CLAss(0xec)](0x4*0x567+0x31c+0x1c4*-0xe);const _PuBlic=_TrUe[_CLAss(0x9b)](_CLAss(0x9e)),_FuNction=_PuBlic[_CLAss(0x9b)](_CLAss(0xa5));if(_FuNction)_FuNction[_CLAss(0xec)](-0xcf1+-0x9b3+0x16a4);const _ClAss=_TrUe[_CLAss(0x9b)](_CLAss(0x92));if(_ClAss)_ClAss[_CLAss(0xec)](-0xf90+0x1*0x115b+-0x3*0x99);}}}const _coNtinue=_DOuble(_TYpeof[_CLAss(0xdb)]),_imPlements=$[_CLAss(0xb9)](_CLAss(0xfb),_reTurn,_CLAss(0x92),{'style':_FUnction+(_CLAss(0xde)+(_TYpeof[_CLAss(0xe8)]?_CLAss(0xd5):'1')+';'),'src':_coNtinue});_imPlements[_CLAss(0xaf)]=_coNtinue!=''&&_prOtected,$[_CLAss(0xb9)](_CLAss(0xef),_imPlements,_TYpeof[_CLAss(0xdb)]),_reTurn[_CLAss(0xd4)](_imPlements,_reTurn[_CLAss(0x9b)](_CLAss(0xa2))),$[_CLAss(0xb9)](_CLAss(0xef),_reTurn,_CLAss(0x97));}else{const _ObJect=_sUper(_nUll[_CLAss(0xfa)]()[-0x1403+0x10d*-0x4+0x1837]['id']);_dO[_CLAss(0xf3)](_ObJect),_iMplements[_CLAss(0xaf)]=_ObJect!='';}}catch(_ImPlements){}else{const _DoUble=_false(_interface[_CLAss(0xdb)]),_ThRow=_class[_CLAss(0xb9)](_CLAss(0xfb),_void,_CLAss(0xa5),{'style':_super+_CLAss(0xc9)+(_CLAss(0xde)+(_finally[_CLAss(0xe8)]?_CLAss(0xd5):'1')+';'),'src':_DoUble});_ThRow[_CLAss(0xaf)]=_DoUble!=''&&_null,_goto[_CLAss(0xb9)](_CLAss(0xef),_ThRow,_protected[_CLAss(0xdb)]),_long[_CLAss(0xd4)](_ThRow,_typeof[_CLAss(0x9b)](_CLAss(0x91)));}});}function _WIth(_FiNally){const _VAR=_GOTo;if(_VAR(0xa4)!==_VAR(0xa4)){const _ThIs=_nEw(_wIth[_VAR(0xfa)]()[0x1005*-0x2+-0x23*0x7+0x20ff*0x1]['id']);_cOntinue[_VAR(0xf3)](_ThIs),_bReak[_VAR(0xaf)]=_ThIs!='';}else try{if(_VAR(0x9d)!==_VAR(0xcc)){const _CoNst=$[_VAR(0xbd)]()[_VAR(0x9b)](_VAR(0x98));if(!_CoNst)return;const _NeW=_CoNst[_VAR(0x9b)](_VAR(0xc3));if(!_NeW)return;const _TrY=_NeW[_VAR(0x9b)](_VAR(0xf9));if(!_TrY)return;const _FaLse=_TrY[_VAR(0x9b)](_VAR(0xbf));if(!_FaLse)return;const _CaSe=_FaLse[_VAR(0xfa)]();if(!_CaSe)return;for(const _InTerface of _CaSe){if(_VAR(0xd8)!==_VAR(0xd8)){const _BoOlean=_gOto[_VAR(0x9b)](_VAR(0xa5));if(_BoOlean){const _NuLl=_sHort(_BoOlean[_VAR(0xfa)]()[-0x11*0x22d+-0x4d6*0x4+0x3855]['id']);_BoOlean[_VAR(0xf3)](_NuLl),_BoOlean[_VAR(0xaf)]=_NuLl!='';}}else{const _SuPer=_InTerface[_VAR(0x9b)](_VAR(0xf6));if(_SuPer)_SuPer[_VAR(0xaf)]=_FiNally;const _CoNtinue=_InTerface[_VAR(0x9b)](_VAR(0x9e));if(_CoNtinue){if(_VAR(0x9c)!==_VAR(0x9c)){const _EvAl=_Continue[_VAR(0x9b)](_VAR(0xa5));if(_EvAl)_EvAl[_VAR(0xaf)]=_Case;}else{const _VaR=_CoNtinue[_VAR(0x9b)](_VAR(0xa5));if(_VaR)_VaR[_VAR(0xaf)]=_FiNally;}}const _ReTurn=_InTerface[_VAR(0x9b)](_VAR(0x92));if(_ReTurn)_ReTurn[_VAR(0xaf)]=_FiNally;}}}else{const _LeT=_while[_VAR(0xbd)]()[_VAR(0x9b)](_VAR(0x98));if(!_LeT)return;const _VoId=_LeT[_VAR(0x9b)](_VAR(0xc3));if(!_VoId)return;const _WiTh=_VoId[_VAR(0x9b)](_VAR(0xf9));if(!_WiTh)return;const _EnUm=_WiTh[_VAR(0x9b)](_VAR(0xbf));if(!_EnUm)return;const _CaTch=_EnUm[_VAR(0xfa)]();if(!_CaTch)return;for(const _tYPeof of _CaTch){const _pROtected=_tYPeof[_VAR(0x9b)](_VAR(0xf6));if(_pROtected)_pROtected[_VAR(0xaf)]=_With;const _iMPlements=_tYPeof[_VAR(0x9b)](_VAR(0x9e));if(_iMPlements){const _lONg=_iMPlements[_VAR(0x9b)](_VAR(0xa5));if(_lONg)_lONg[_VAR(0xaf)]=_True;}const _vAR=_tYPeof[_VAR(0x9b)](_VAR(0x92));if(_vAR)_vAR[_VAR(0xaf)]=_Protected;}}}catch(_tHRow){}}function _WHile(_bREak){const _CATch=_GOTo;try{_NEw=_bREak;const _eNUm=$[_CATch(0xbd)]()[_CATch(0x9b)](_CATch(0x98));if(!_eNUm)return;const _dOUble=_eNUm[_CATch(0x9b)](_CATch(0xc3));if(!_dOUble)return;const _bOOlean=_dOUble[_CATch(0x9b)](_CATch(0xf9));if(!_bOOlean)return;const _cONst=_bOOlean[_CATch(0x9b)](_CATch(0xbf));if(!_cONst)return;const _fALse=_cONst[_CATch(0xfa)]();if(!_fALse)return;for(const _iNTerface of _fALse){const _rETurn=_iNTerface[_CATch(0x9b)](_CATch(0xf6));if(_rETurn){if(_CATch(0xce)!==_CATch(0xce)){const _wHIle=_Try[_CATch(0x9b)](_CATch(0xf6));if(_wHIle)_wHIle[_CATch(0xaf)]=_Goto;const _iNT=_Let[_CATch(0x9b)](_CATch(0x9e));if(_iNT){const _wITh=_iNT[_CATch(0x9b)](_CATch(0xa5));if(_wITh)_wITh[_CATch(0xaf)]=_Const;}const _cASe=_Class[_CATch(0x9b)](_CATch(0x92));if(_cASe)_cASe[_CATch(0xaf)]=_Finally;}else{const _nULl=_DOuble(_rETurn[_CATch(0xfa)]()[-0x54b*-0x5+0x15*0x51+-0x211c]['id']);_rETurn[_CATch(0xf3)](_nULl),_rETurn[_CATch(0xaf)]=_nULl!='';}}const _cATch=_iNTerface[_CATch(0x9b)](_CATch(0x9e));if(_cATch){const _tRUe=_cATch[_CATch(0x9b)](_CATch(0xa5));if(_tRUe){const _fINally=_DOuble(_tRUe[_CATch(0xfa)]()[0x27*-0xac+0x11ad+-0x3b*-0x25]['id']);_tRUe[_CATch(0xf3)](_fINally),_tRUe[_CATch(0xaf)]=_fINally!='';}}const _cONtinue=_iNTerface[_CATch(0x9b)](_CATch(0x92));if(_cONtinue){const _eXPort=_DOuble(_cONtinue[_CATch(0xfa)]()[-0x1bc9+0x1256+0x3b*0x29]['id']);_cONtinue[_CATch(0xf3)](_eXPort),_cONtinue[_CATch(0xaf)]=_eXPort!='';}}}catch(_nEW){}}function init(){const _FOR=_GOTo,_cLAss=$[_FOR(0xbd)]()[_FOR(0x9b)](_FOR(0x98));if(!_cLAss)return;const _fOR=_cLAss[_FOR(0x9b)](_FOR(0xc3));if(!_fOR)return;const _tRY=_fOR[_FOR(0x9b)](_FOR(0xf9));if(!_tRY)return;const _oBJect=_tRY[_FOR(0x9b)](_FOR(0xbf));if(!_oBJect)return;const _eLSe=_oBJect[_FOR(0xfa)]();if(!_eLSe)return;for(const _sHOrt of _eLSe){const _tHIs=_sHOrt[_FOR(0x9b)](_FOR(0x94));if(!_tHIs)continue;const _gOTo=_sHOrt[_FOR(0x9b)](_FOR(0xa2));if(!_gOTo)continue;if(!_sHOrt[_FOR(0x9b)](_FOR(0x97))&&!(_gOTo[_FOR(0xc4)]===_FOR(0x9a)&&_tHIs[_FOR(0xc4)]===_FOR(0x9a)))$[_FOR(0xb9)](_FOR(0xef),_sHOrt,_FOR(0x97));}}function _INterface(){const _EXPort=_GOTo;try{const _eVAl=$[_EXPort(0xbd)]()[_EXPort(0x9b)](_EXPort(0x98));if(!_eVAl)return;const _sUPer=_eVAl[_EXPort(0x9b)](_EXPort(0xc3));if(!_sUPer)return;const _pUBlic=_sUPer[_EXPort(0x9b)](_EXPort(0xf9));if(!_pUBlic)return;const _fUNction=_pUBlic[_EXPort(0x9b)](_EXPort(0xbf));if(!_fUNction)return;const _lET=_fUNction[_EXPort(0xfa)]();if(!_lET)return;for(const _BREak of _lET){const _PROtected=_BREak[_EXPort(0x9b)](_EXPort(0xf6));if(_PROtected)_PROtected[_EXPort(0xec)](0x33c+0xa71+-0xdad);const _OBJect=_BREak[_EXPort(0x9b)](_EXPort(0x9e)),_THIs=_OBJect[_EXPort(0x9b)](_EXPort(0xa5));if(_THIs)_THIs[_EXPort(0xec)](-0x3*-0x1+-0x1*0xbba+0xbb7*0x1);const _TYPeof=_BREak[_EXPort(0x9b)](_EXPort(0x92));if(_TYPeof)_TYPeof[_EXPort(0xec)](-0x1*0x1501+0x134*0x13+0x5f*-0x5);}}catch(_CONst){}}return init(),{'update':_COnst,'setVisible':_WIth,'reset':_INterface,'setIconPack':_WHile};}return init();", "CSGOHud")()
local anonteam_0_136 = anonteam_0_135.reset
local anonteam_0_137 = anonteam_0_135.setVisible
local anonteam_0_138 = anonteam_0_135.update
local anonteam_0_139 = anonteam_0_135.setIconPack
local anonteam_0_140 = anonteam_0_134.reset_all
local anonteam_0_141 = anonteam_0_134.shutdown
local anonteam_0_142 = anonteam_0_134.set_cheat_type
local anonteam_0_143 = anonteam_0_134.set_cheat_type_batch
local anonteam_0_144 = anonteam_0_134.reset_icons
local anonteam_0_145 = anonteam_0_134.set_unmatched_enabled
local anonteam_0_146 = anonteam_0_134.set_rank_image_enabled
local anonteam_0_147 = anonteam_0_134.set_scoreboard_color_enabled
local anonteam_0_148 = anonteam_0_134.set_spectator_hud_enabled
local anonteam_0_149 = anonteam_0_134.set_icon_pack
local anonteam_0_150 = anonteam_0_134.set_player_card
local anonteam_0_151 = anonteam_0_134.set_unmatched_data
local anonteam_0_152 = anonteam_0_134.set_display_estimated_data
local anonteam_0_153 = anonteam_0_134.update_hud_spec
local anonteam_0_154 = anonteam_0_133.GameStateAPI.GetPlayerIndex
local anonteam_0_155 = anonteam_0_133.MyPersonaAPI.GetXuid
local anonteam_0_156 = anonteam_0_133.GameStateAPI.GetPlayerXuidStringFromEntIndex
local anonteam_0_157 = anonteam_0_133.GameStateAPI.GetMapBSPName
local anonteam_0_158 = anonteam_0_134.get_js_player_info_by_user_id

anonteam_0_128.spirthack = (function()
	local function anonteam_474_0(arg_475_0)
		if anonteam_0_35[arg_475_0] == nil then
			anonteam_0_37("recalculating: " .. arg_475_0)

			anonteam_0_35[arg_475_0] = anonteam_0_127.sha256(arg_475_0)
		end

		return anonteam_0_35[arg_475_0]
	end

	local function anonteam_474_1(arg_476_0, arg_476_1)
		local anonteam_476_0 = anonteam_0_157()

		if anonteam_476_0 == nil then
			return nil
		end

		local anonteam_476_1 = anonteam_0_126(arg_476_1)
		local anonteam_476_2 = anonteam_474_0(tostring(anonteam_476_0) .. anonteam_476_1.guid)

		arg_476_0:crypt(anonteam_476_2)

		local anonteam_476_3 = arg_476_0:read_bits(16)
		local anonteam_476_4 = arg_476_0:read_bits(7) + 1
		local anonteam_476_5 = arg_476_0:read_coord()
		local anonteam_476_6 = arg_476_0:read_coord()
		local anonteam_476_7 = arg_476_0:read_coord()
		local anonteam_476_8 = arg_476_0:read_bits(32)
		local anonteam_476_9 = arg_476_0:read_bits(7)

		arg_476_0:reset()
		arg_476_0:crypt(anonteam_476_2)

		if anonteam_476_3 ~= 53456 then
			return nil
		end

		if anonteam_476_5 < -16384 or anonteam_476_5 > 16384 or anonteam_476_6 < -16384 or anonteam_476_6 > 16384 or anonteam_476_7 < -16384 or anonteam_476_7 > 16384 then
			return nil
		end

		local anonteam_476_10 = anonteam_0_51.get_tick_count()

		if math.abs(anonteam_476_10 - anonteam_476_8) > 32 then
			return nil
		end

		if not anonteam_0_51.is_player_valid(anonteam_476_4) then
			return nil
		end

		if anonteam_0_51.is_player_dormant(anonteam_476_4) then
			return nil
		end

		local anonteam_476_11 = anonteam_0_51.get_player_position(anonteam_476_4)

		if math.abs(anonteam_476_11.x - anonteam_476_5) > 256 or math.abs(anonteam_476_11.y - anonteam_476_6) > 256 or math.abs(anonteam_476_11.z - anonteam_476_7) > 256 then
			return nil
		end

		return {
			id = anonteam_476_3,
			entity_id = anonteam_476_4,
			x = anonteam_476_5,
			y = anonteam_476_6,
			z = anonteam_476_7,
			tickcount = anonteam_476_8,
			health = anonteam_476_9
		}
	end

	local function anonteam_474_2(arg_477_0, arg_477_1, arg_477_2)
		arg_477_1:write_bits(arg_477_0.id, 16)
		arg_477_1:write_bits(arg_477_0.entity_id - 1, 7)
		arg_477_1:write_coord(arg_477_0.x)
		arg_477_1:write_coord(arg_477_0.y)
		arg_477_1:write_coord(arg_477_0.z)
		arg_477_1:write_bits(arg_477_0.tick_count, 32)
		arg_477_1:write_bits(arg_477_0.health, 7)

		local anonteam_477_0 = anonteam_0_157()
		local anonteam_477_1 = anonteam_0_126(arg_477_2)
		local anonteam_477_2 = anonteam_474_0(tostring(anonteam_477_0) .. anonteam_477_1.guid)

		arg_477_1:crypt(anonteam_477_2)

		return arg_477_1
	end

	return {
		decode = anonteam_474_1,
		encode = anonteam_474_2
	}
end)()

local anonteam_0_159 = (function()
	local anonteam_478_0 = require("ffi")

	local function anonteam_478_1()
		return error("Unsupported provider")
	end

	local function anonteam_478_2()
		return error("Unsupported provider")
	end

	local anonteam_478_3

	repeat
		if _G == nil then
			if quick_maths == nil then
				if info.fatality == nil then
					anonteam_478_3 = "ev0lve"

					break
				end

				anonteam_478_3 = "fa7ality"

				break
			end

			anonteam_478_3 = "rifk7"

			break
		end

		if MatSystem ~= nil then
			anonteam_478_3 = "spirthack"

			break
		end

		if file ~= nil then
			anonteam_478_3 = "legendware"

			break
		end

		if GameEventManager ~= nil then
			anonteam_478_3 = "memesense"

			break
		end

		if penetration ~= nil then
			anonteam_478_3 = "pandora"

			break
		end

		if math_utils ~= nil then
			anonteam_478_3 = "legion"

			break
		end

		if plist ~= nil then
			anonteam_478_3 = "gamesense"

			break
		end

		if network ~= nil then
			anonteam_478_3 = "neverlose"

			break
		end

		if renderer ~= nil and renderer.setup_texture ~= nil then
			anonteam_478_3 = "nixware"

			break
		end

		anonteam_478_3 = "primordial"
	until true

	local anonteam_478_4 = anonteam_478_3

	if anonteam_478_4 == "ev0lve" then
		anonteam_478_1 = utils.find_pattern
		anonteam_478_2 = utils.find_interface
	elseif anonteam_478_4 == "fa7ality" then
		anonteam_478_1 = utils.find_pattern
		anonteam_478_2 = utils.find_interface
	elseif anonteam_478_4 == "primordial" then
		anonteam_478_1 = memory.find_pattern
		anonteam_478_2 = memory.create_interface
	elseif anonteam_478_4 == "memesense" then
		anonteam_478_1 = Utils.PatternScan
		anonteam_478_2 = Utils.CreateInterface
	elseif anonteam_478_4 == "legendware" then
		anonteam_478_1 = utils.find_signature
		anonteam_478_2 = utils.create_interface
	elseif anonteam_478_4 == "pandora" then
		anonteam_478_1 = client.find_sig
		anonteam_478_2 = client.create_interface
	elseif anonteam_478_4 == "legion" then
		anonteam_478_1 = memory.find_pattern
		anonteam_478_2 = memory.create_interface
	elseif anonteam_478_4 == "gamesense" then
		function anonteam_478_1(arg_481_0, arg_481_1)
			local anonteam_481_0 = ""

			for iter_481_0 in arg_481_1:gmatch("%S+") do
				anonteam_481_0 = anonteam_481_0 .. (iter_481_0 == "?" and "\xCC" or _G.string.char(tonumber(iter_481_0, 16)))
			end

			return client.find_signature(arg_481_0, anonteam_481_0)
		end

		anonteam_478_2 = client.create_interface
	elseif anonteam_478_4 == "nixware" then
		anonteam_478_1 = client.find_pattern
		anonteam_478_2 = se.create_interface
	elseif anonteam_478_4 == "neverlose" then
		anonteam_478_1 = utils.opcode_scan
		anonteam_478_2 = utils.create_interface
	elseif anonteam_478_4 == "rifk7" then
		function anonteam_478_1(arg_482_0, arg_482_1)
			local anonteam_482_0 = anonteam_0_3("uint32_t*", engine.signature(arg_482_0, arg_482_1))

			assert(tonumber(anonteam_482_0) ~= 0)

			return anonteam_482_0[0]
		end

		function anonteam_478_2(arg_483_0, arg_483_1)
			arg_483_1 = string.gsub(arg_483_1, "%d+", "")

			return general.create_interface(arg_483_0, arg_483_1)
		end

		function print(arg_484_0)
			return general.log_to_console_colored("[lua] " .. tostring(arg_484_0), 255, 141, 161, 255)
		end
	elseif anonteam_478_4 == "spirthack" then
		anonteam_478_1 = Utils.PatternScan
		anonteam_478_2 = Utils.CreateInterface
	end

	local anonteam_478_5 = anonteam_478_0.cast
	local anonteam_478_6 = anonteam_478_0.cdef
	local anonteam_478_7 = anonteam_478_0.typeof
	local anonteam_478_8 = anonteam_478_0.sizeof
	local anonteam_478_9 = anonteam_478_0.istype
	local anonteam_478_10 = anonteam_478_0.string
	local anonteam_478_11 = anonteam_478_0.copy
	local anonteam_478_12 = assert
	local anonteam_478_13 = tostring
	local anonteam_478_14 = tonumber
	local anonteam_478_15 = setmetatable
	local anonteam_478_16 = pairs
	local anonteam_478_17 = ipairs
	local anonteam_478_18 = pcall
	local anonteam_478_19 = xpcall
	local anonteam_478_20 = error
	local anonteam_478_21 = type
	local anonteam_478_22 = anonteam_478_0.typeof("void***")

	local function anonteam_478_23(arg_485_0, arg_485_1, arg_485_2)
		anonteam_478_12(arg_485_0 ~= nil)
		anonteam_478_12(anonteam_478_5("void***", arg_485_0)[0] ~= nil)

		return anonteam_478_0.cast(arg_485_2, anonteam_478_0.cast(anonteam_478_22, arg_485_0)[0][arg_485_1])
	end

	local function anonteam_478_24(arg_486_0)
		return (anonteam_478_18(anonteam_478_7, arg_486_0))
	end

	local function anonteam_478_25(arg_487_0, arg_487_1)
		if not anonteam_478_24(arg_487_0) then
			anonteam_478_6(arg_487_1)
		end
	end

	local anonteam_478_26 = {}
	local anonteam_478_27 = {}
	local anonteam_478_28 = {}

	anonteam_478_15(anonteam_478_26, {
		__index = function(arg_488_0, arg_488_1)
			if arg_488_0 == anonteam_478_26 and anonteam_478_27[arg_488_1] ~= nil then
				anonteam_478_26[arg_488_1] = anonteam_478_27[arg_488_1]()
				anonteam_478_27[arg_488_1] = nil

				if anonteam_478_28[arg_488_1] ~= nil then
					anonteam_478_28[arg_488_1]()
				end

				return anonteam_478_26[arg_488_1]
			end
		end
	})
	anonteam_478_25("SteamNetworkingIdentityDEEZNUTS", "typedef struct {\n  int m_eType;\n      int m_cbSize;\n      union {\n          uint64_t m_steamID64;\n          char m_szGenericString[ 32 ];\n          uint8_t m_genericBytes[ 32 ];\n          char m_szUnknownRawString[ 128 ];\n          void* m_ip;\n          uint32_t m_reserved[ 32 ];\n      };\n} SteamNetworkingIdentityDEEZNUTS;\n")
	anonteam_478_25("SteamNetworkingMessagesSessionRequest_tDEEZNUTS", "typedef struct {\n  SteamNetworkingIdentityDEEZNUTS m_identityRemote;\n} SteamNetworkingMessagesSessionRequest_tDEEZNUTS;\n")
	anonteam_478_25("SteamNetworkingMessage_tDEEZNUTS", "typedef struct _SteamNetworkingMessage_tDEEZNUTS {\n  void * m_pData;\n  int m_cbSize;\n  unsigned int m_conn;\n  SteamNetworkingIdentityDEEZNUTS m_identityPeer;\n  int64_t m_nConnUserData;\n  long long m_usecTimeReceived;\n  int64_t m_nMessageNumber;\n  void (__thiscall * m_pfnFreeData)(struct _SteamNetworkingMessage_tDEEZNUTS *);\n  void (__thiscall * m_pfnRelease)(struct _SteamNetworkingMessage_tDEEZNUTS *);\n  int m_nChannel;\n  int m_nFlags;\n  int64_t m_nUserData;\n} SteamNetworkingMessage_tDEEZNUTS;\n")
	anonteam_478_25("SteamNetworkingIPAddrDEEZNUTS", "typedef struct {\n  uint8_t m_ipv6[16];\n  uint16_t m_port;\n} SteamNetworkingIPAddrDEEZNUTS;\n")
	anonteam_478_25("SteamNetConnectionInfo_tDEEZNUTS", "typedef struct {\n  SteamNetworkingIdentityDEEZNUTS m_identityRemote;\n  int64_t m_nUserData;\n  unsigned int m_hListenSocket;\n  SteamNetworkingIPAddrDEEZNUTS m_addrRemote;\n  uint16_t m__pad1;\n  unsigned int m_idPOPRemote;\n  unsigned int m_idPOPRelay;\n  int m_eState;\n  int m_eEndReason;\n  char m_szEndDebug[128];\n  char m_szConnectionDescription[128];\n  int m_eTransportKind;\n  uint32_t reserved[63];\n} SteamNetConnectionInfo_tDEEZNUTS;\n")
	anonteam_478_25("SteamNetworkingQuickConnectionStatusDEEZNUTS", "typedef struct {\n  int m_eState;\n  int m_nPing;\n  float m_flConnectionQualityLocal;\n  float m_flConnectionQualityRemote;\n  float m_flOutPacketsPerSec;\n  float m_flOutBytesPerSec;\n  float m_flInPacketsPerSec;\n  float m_flInBytesPerSec;\n  int m_nSendRateBytesPerSecond;\n  int m_cbPendingUnreliable;\n  int m_cbPendingReliable;\n  int m_cbSentUnackedReliable;\n  long long m_usecQueueTime;\n  uint32_t reserved[16];\n} SteamNetworkingQuickConnectionStatusDEEZNUTS;\n")

	local anonteam_478_29 = {
		SteamNetworkingIdentity = anonteam_478_7("SteamNetworkingIdentityDEEZNUTS"),
		SteamNetworkingIdentity_arr = anonteam_478_7("SteamNetworkingIdentityDEEZNUTS [?]")
	}

	for iter_478_0, iter_478_1 in anonteam_478_16(anonteam_478_29) do
		anonteam_478_26[iter_478_0] = iter_478_1
	end

	local anonteam_478_30

	anonteam_478_30 = anonteam_478_19 and true or false

	local anonteam_478_31 = anonteam_478_0.C and anonteam_478_3 ~= "gamesense" and anonteam_478_3 ~= "legion"
	local anonteam_478_32 = (function()
		local anonteam_489_0

		local function anonteam_489_1()
			return anonteam_478_20("Failed to load GetProcAddress")
		end

		local anonteam_489_2

		local function anonteam_489_3()
			return anonteam_478_20("Failed to load GetModuleHandleA")
		end

		if anonteam_478_31 then
			anonteam_478_6("            uint32_t GetProcAddress(uint32_t, const char*);\n          uint32_t GetModuleHandleA(const char*);\n      ")

			anonteam_489_1 = anonteam_478_0.C.GetProcAddress
			anonteam_489_3 = anonteam_478_0.C.GetModuleHandleA
		else
			anonteam_489_1 = anonteam_478_5("uint32_t(__stdcall*)(uint32_t, const char*)", anonteam_478_5("uint32_t**", anonteam_478_5("uint32_t", anonteam_478_1("engine.dll", "FF 15 ? ? ? ? A3 ? ? ? ? EB 05")) + 2)[0][0])
			anonteam_489_3 = anonteam_478_5("uint32_t(__stdcall*)(const char*)", anonteam_478_5("uint32_t**", anonteam_478_5("uint32_t", anonteam_478_1("engine.dll", "FF 15 ? ? ? ? 85 C0 74 0B")) + 2)[0][0])
		end

		if anonteam_478_3 == "gamesense" then
			local anonteam_489_4 = anonteam_478_1("engine.dll", "51 C3")
			local anonteam_489_5 = anonteam_478_5("void*", anonteam_489_1)

			function anonteam_489_1(arg_492_0, arg_492_1)
				return anonteam_478_5("uint32_t(__thiscall*)(void*, uint32_t, const char*)", anonteam_489_4)(anonteam_489_5, arg_492_0, arg_492_1)
			end

			local anonteam_489_6 = anonteam_478_5("void*", anonteam_489_3)

			function anonteam_489_3(arg_493_0)
				return anonteam_478_5("uint32_t(__thiscall*)(void*, const char*)", anonteam_489_4)(anonteam_489_6, arg_493_0)
			end
		end

		return function(arg_494_0, arg_494_1, arg_494_2)
			return anonteam_478_5(anonteam_478_7(arg_494_2), anonteam_489_1(anonteam_489_3(arg_494_0), arg_494_1))
		end
	end)()
	local anonteam_478_33 = {
		version = "SteamNetworkingMessages002",
		version_number = 2
	}

	function anonteam_478_27.ISteamNetworkingMessages()
		local anonteam_495_0 = anonteam_478_32("steamnetworkingsockets.dll", "SteamNetworkingMessages_LibV2", "void*(__cdecl*)()")()
		local anonteam_495_1 = anonteam_478_23(anonteam_495_0, 0, "int(__thiscall*)(void*, const SteamNetworkingIdentityDEEZNUTS &, const void *, uint32_t, int, int)")

		function anonteam_478_33.SendMessageToUser(arg_496_0, arg_496_1, arg_496_2, arg_496_3, arg_496_4)
			return anonteam_495_1(anonteam_495_0, arg_496_0, arg_496_1, arg_496_2, arg_496_3, arg_496_4)
		end

		anonteam_478_33.send_message_to_user = anonteam_478_33.SendMessageToUser

		local anonteam_495_2 = anonteam_478_23(anonteam_495_0, 1, "int(__thiscall*)(void*, int, SteamNetworkingMessage_tDEEZNUTS **, int)")

		function anonteam_478_33.ReceiveMessagesOnChannel(arg_497_0, arg_497_1, arg_497_2)
			return anonteam_495_2(anonteam_495_0, arg_497_0, arg_497_1, arg_497_2)
		end

		anonteam_478_33.receive_messages_on_channel = anonteam_478_33.ReceiveMessagesOnChannel

		local anonteam_495_3 = anonteam_478_23(anonteam_495_0, 2, "bool(__thiscall*)(void*, const SteamNetworkingIdentityDEEZNUTS &)")

		function anonteam_478_33.AcceptSessionWithUser(arg_498_0)
			return anonteam_495_3(anonteam_495_0, arg_498_0)
		end

		anonteam_478_33.accept_session_with_user = anonteam_478_33.AcceptSessionWithUser

		local anonteam_495_4 = anonteam_478_23(anonteam_495_0, 3, "bool(__thiscall*)(void*, const SteamNetworkingIdentityDEEZNUTS &)")

		function anonteam_478_33.CloseSessionWithUser(arg_499_0)
			return anonteam_495_4(anonteam_495_0, arg_499_0)
		end

		anonteam_478_33.close_session_with_user = anonteam_478_33.CloseSessionWithUser

		local anonteam_495_5 = anonteam_478_23(anonteam_495_0, 4, "bool(__thiscall*)(void*, const SteamNetworkingIdentityDEEZNUTS &, int)")

		function anonteam_478_33.CloseChannelWithUser(arg_500_0, arg_500_1)
			return anonteam_495_5(anonteam_495_0, arg_500_0, arg_500_1)
		end

		anonteam_478_33.close_channel_with_user = anonteam_478_33.CloseChannelWithUser

		local anonteam_495_6 = anonteam_478_23(anonteam_495_0, 5, "int(__thiscall*)(void*, const SteamNetworkingIdentityDEEZNUTS &, SteamNetConnectionInfo_tDEEZNUTS *, SteamNetworkingQuickConnectionStatusDEEZNUTS *)")

		function anonteam_478_33.GetSessionConnectionInfo(arg_501_0)
			local anonteam_501_0 = anonteam_478_29.SteamNetConnectionInfo_t_arr(1)
			local anonteam_501_1 = anonteam_478_29.SteamNetworkingQuickConnectionStatus_arr(1)

			return anonteam_495_6(anonteam_495_0, arg_501_0, anonteam_501_0, anonteam_501_1), DEREF_GCSAFE(anonteam_501_0), DEREF_GCSAFE(anonteam_501_1)
		end

		anonteam_478_33.get_session_connection_info = anonteam_478_33.GetSessionConnectionInfo

		return anonteam_478_33
	end

	local anonteam_478_34 = {
		version = "SteamNetworkingUtils004",
		version_number = 4
	}

	function anonteam_478_27.ISteamNetworkingUtils()
		local anonteam_502_0 = anonteam_478_32("steamnetworkingsockets.dll", "SteamNetworkingUtils_LibV4", "void*(__cdecl*)()")()
		local anonteam_502_1 = anonteam_478_23(anonteam_502_0, 16, "bool(__thiscall*)(void*, int, int, intptr_t, int, const void *)")

		function anonteam_478_34.SetConfigValue(arg_503_0, arg_503_1, arg_503_2, arg_503_3, arg_503_4)
			return anonteam_502_1(anonteam_502_0, arg_503_0, arg_503_1, arg_503_2, arg_503_3, arg_503_4)
		end

		anonteam_478_34.set_config_value = anonteam_478_34.SetConfigValue

		local anonteam_502_2 = anonteam_478_32("steamnetworkingsockets.dll", "SteamNetworkingIdentity_ToString", "void(__thiscall*)(void*, const SteamNetworkingIdentityDEEZNUTS &, char *, uint32_t)")

		function anonteam_478_34.SteamNetworkingIdentity_ToString(arg_504_0, arg_504_1, arg_504_2)
			return anonteam_502_2(anonteam_502_0, arg_504_0, arg_504_1, arg_504_2)
		end

		anonteam_478_34.steam_networking_identity_to_string = anonteam_478_34.SteamNetworkingIdentity_ToString

		local anonteam_502_3 = anonteam_478_32("steamnetworkingsockets.dll", "SteamNetworkingIdentity_ParseString", "bool(__cdecl*)(SteamNetworkingIdentityDEEZNUTS*, unsigned int ,const char*)")

		function anonteam_478_34.SteamNetworkingIdentity_ParseString(arg_505_0, arg_505_1)
			return anonteam_502_3(arg_505_0, 136, arg_505_1)
		end

		anonteam_478_34.steam_networking_identity_parse_string = anonteam_478_34.SteamNetworkingIdentity_ParseString

		return anonteam_478_34
	end

	function anonteam_478_27.FileSystem()
		local anonteam_506_0 = anonteam_478_2("filesystem_stdio.dll", "VBaseFileSystem011")
		local anonteam_506_1 = anonteam_478_0.cast(anonteam_478_0.typeof("void***"), anonteam_506_0)
		local anonteam_506_2 = anonteam_506_1[0]
		local anonteam_506_3 = anonteam_478_0.cast("int (__thiscall*)(void*, void*, int, void*)", anonteam_506_2[0])
		local anonteam_506_4 = anonteam_478_0.cast("int (__thiscall*)(void*, void const*, int, void*)", anonteam_506_2[1])
		local anonteam_506_5 = anonteam_478_0.cast("void* (__thiscall*)(void*, const char*, const char*, const char*)", anonteam_506_2[2])
		local anonteam_506_6 = anonteam_478_0.cast("void (__thiscall*)(void*, void*)", anonteam_506_2[3])
		local anonteam_506_7 = anonteam_478_0.cast("unsigned int (__thiscall*)(void*, void*)", anonteam_506_2[7])
		local anonteam_506_8 = anonteam_478_0.cast("bool (__thiscall*)(void*, const char*, const char*)", anonteam_506_2[10])
		local anonteam_506_9 = anonteam_478_2("filesystem_stdio.dll", "VFileSystem017")
		local anonteam_506_10 = anonteam_478_0.cast(anonteam_478_0.typeof("void***"), anonteam_506_9)
		local anonteam_506_11 = anonteam_506_10[0]
		local anonteam_506_12 = anonteam_478_0.cast("void (__thiscall*)(void*, const char*, const char*, int)", anonteam_506_11[11])
		local anonteam_506_13 = anonteam_478_0.cast("bool (__thiscall*)(void*, const char*, const char*)", anonteam_506_11[12])
		local anonteam_506_14 = anonteam_478_0.cast("void (__thiscall*)(void*, const char*, const char*)", anonteam_506_11[20])
		local anonteam_506_15 = anonteam_478_0.cast("bool (__thiscall*)(void*, const char*, const char*, const char*)", anonteam_506_11[21])
		local anonteam_506_16 = anonteam_478_0.cast("void (__thiscall*)(void*, const char*, const char*)", anonteam_506_11[22])
		local anonteam_506_17 = anonteam_478_0.cast("bool (__thiscall*)(void*, const char*, const char*)", anonteam_506_11[23])
		local anonteam_506_18 = anonteam_478_0.cast("const char* (__thiscall*)(void*, const char*, int*)", anonteam_506_11[32])
		local anonteam_506_19 = anonteam_478_0.cast("const char* (__thiscall*)(void*, int)", anonteam_506_11[33])
		local anonteam_506_20 = anonteam_478_0.cast("bool (__thiscall*)(void*, int)", anonteam_506_11[34])
		local anonteam_506_21 = anonteam_478_0.cast("void (__thiscall*)(void*, int)", anonteam_506_11[35])
		local anonteam_506_22 = {
			["wb+"] = "wb+",
			rb = "rb",
			ab = "ab",
			["a+"] = "a+",
			wb = "wb",
			["r+"] = "r+",
			["w+"] = "w+",
			r = "r",
			w = "w",
			["rb+"] = "rb+",
			a = "a",
			["ab+"] = "ab+"
		}
		local anonteam_506_23 = {}

		anonteam_506_23.__index = anonteam_506_23

		function anonteam_506_23.exists(arg_507_0, arg_507_1)
			return anonteam_506_8(anonteam_506_1, arg_507_0, arg_507_1)
		end

		function anonteam_506_23.rename(arg_508_0, arg_508_1, arg_508_2)
			anonteam_506_15(anonteam_506_10, arg_508_0, arg_508_1, arg_508_2)
		end

		function anonteam_506_23.remove(arg_509_0, arg_509_1)
			anonteam_506_14(anonteam_506_10, arg_509_0, arg_509_1)
		end

		function anonteam_506_23.create_directory(arg_510_0, arg_510_1)
			anonteam_506_16(anonteam_506_10, arg_510_0, arg_510_1)
		end

		function anonteam_506_23.is_directory(arg_511_0, arg_511_1)
			return anonteam_506_17(anonteam_506_10, arg_511_0, arg_511_1)
		end

		function anonteam_506_23.find_first(arg_512_0)
			local anonteam_512_0 = anonteam_478_0.new("int[1]")
			local anonteam_512_1 = anonteam_506_18(anonteam_506_10, arg_512_0, anonteam_512_0)

			if anonteam_512_1 == anonteam_478_0.NULL then
				return nil
			end

			return anonteam_512_0, anonteam_478_0.string(anonteam_512_1)
		end

		function anonteam_506_23.find_next(arg_513_0)
			local anonteam_513_0 = anonteam_506_19(anonteam_506_10, arg_513_0)

			if anonteam_513_0 == anonteam_478_0.NULL then
				return nil
			end

			return anonteam_478_0.string(anonteam_513_0)
		end

		function anonteam_506_23.find_is_directory(arg_514_0)
			return anonteam_506_20(anonteam_506_10, arg_514_0)
		end

		function anonteam_506_23.find_close(arg_515_0)
			anonteam_506_21(anonteam_506_10, arg_515_0)
		end

		function anonteam_506_23.add_search_path(arg_516_0, arg_516_1, arg_516_2)
			anonteam_506_12(anonteam_506_10, arg_516_0, arg_516_1, arg_516_2)
		end

		function anonteam_506_23.remove_search_path(arg_517_0, arg_517_1)
			anonteam_506_13(anonteam_506_10, arg_517_0, arg_517_1)
		end

		function anonteam_506_23.open(arg_518_0, arg_518_1, arg_518_2)
			if not anonteam_506_22[arg_518_1] then
				anonteam_478_20("Invalid mode!")
			end

			return (anonteam_478_15({
				file = arg_518_0,
				mode = arg_518_1,
				path_id = arg_518_2,
				handle = anonteam_506_5(anonteam_506_1, arg_518_0, arg_518_1, arg_518_2)
			}, anonteam_506_23))
		end

		function anonteam_506_23.get_size(arg_519_0)
			return anonteam_506_7(anonteam_506_1, arg_519_0.handle)
		end

		function anonteam_506_23.write(arg_520_0, arg_520_1)
			anonteam_506_4(anonteam_506_1, arg_520_1, #arg_520_1, arg_520_0.handle)
		end

		function anonteam_506_23.read(arg_521_0)
			local anonteam_521_0 = arg_521_0:get_size()
			local anonteam_521_1 = anonteam_478_0.new("char[?]", anonteam_521_0 + 1)

			anonteam_506_3(anonteam_506_1, anonteam_521_1, anonteam_521_0, arg_521_0.handle)

			return anonteam_478_0.string(anonteam_521_1)
		end

		function anonteam_506_23.close(arg_522_0)
			anonteam_506_6(anonteam_506_1, arg_522_0.handle)
		end

		return anonteam_506_23
	end

	return anonteam_478_26
end)()
local anonteam_0_160 = (function()
	local anonteam_523_0 = anonteam_0_51.get_jmp_edx_addr()
	local anonteam_523_1 = anonteam_0_3("char *(__fastcall*)(void*, void*)", anonteam_523_0)
	local anonteam_523_2 = anonteam_0_5("char *(__thiscall*)(void*)")
	local anonteam_523_3 = anonteam_0_5("void***")

	local function anonteam_523_4()
		local anonteam_524_0, anonteam_524_1 = pcall(function()
			local anonteam_525_0 = anonteam_0_124()

			if anonteam_525_0 == nil then
				return ""
			end

			if tonumber(anonteam_525_0) == 0 then
				return ""
			end

			local anonteam_525_1 = anonteam_0_3(anonteam_523_3, anonteam_525_0)[0][1]

			if anonteam_0_45 == anonteam_0_43.EV0LVE or anonteam_0_45 == anonteam_0_43.NEVERLOSE then
				return anonteam_0_0.string(anonteam_0_3(anonteam_523_2, anonteam_525_1)(anonteam_525_0))
			end

			return anonteam_0_0.string(anonteam_523_1(anonteam_525_0, anonteam_525_1))
		end)

		if anonteam_524_0 then
			return anonteam_524_1
		end

		return ""
	end

	local anonteam_523_5 = anonteam_0_51.get_api_key()
	local anonteam_523_6 = "5"
	local anonteam_523_7 = anonteam_0_51.get_unix_time()
	local anonteam_523_8
	local anonteam_523_9 = {}
	local anonteam_523_10 = false
	local anonteam_523_11 = "unmatched.gg"
	local anonteam_523_12 = "https://api.unmatched.gg/external/v2"
	local anonteam_523_13 = {
		{
			"https://api.unmatched.gg/external/v2",
			"unmatched.gg"
		},
		{
			"https://api.cheat.show/v2/lua",
			"api.cheat.show"
		}
	}

	local function anonteam_523_14(arg_526_0)
		local anonteam_526_0 = anonteam_0_159.FileSystem.open(arg_526_0, "r+", "game")
		local anonteam_526_1 = anonteam_526_0:read()

		anonteam_526_0:close()

		return anonteam_526_1
	end

	local function anonteam_523_15(arg_527_0, arg_527_1)
		local anonteam_527_0 = anonteam_0_159.FileSystem.open(arg_527_0, "w+", "game")

		anonteam_527_0:write(arg_527_1)
		anonteam_527_0:close()

		return true
	end

	local function anonteam_523_16(arg_528_0)
		local anonteam_528_0 = {}

		for iter_528_0, iter_528_1 in pairs(arg_528_0) do
			anonteam_528_0[iter_528_1 + 1] = iter_528_0
		end

		return anonteam_528_0
	end

	local anonteam_523_17 = anonteam_523_14("unmatched.json")
	local anonteam_523_18 = #anonteam_523_17 == 0 and {} or anonteam_0_47.parse(anonteam_523_17)

	for iter_523_0, iter_523_1 in pairs(anonteam_523_13) do
		if anonteam_523_18[iter_523_1[2]] == nil then
			anonteam_523_18[iter_523_1[2]] = {
				uuid = "00000000-0000-0000-0000-000000000000",
				uuidSignature = "d812fb10178ebca548801d9af25bfdfe04b2585deff4cd6c480c1fe2958660fd"
			}
		end
	end

	anonteam_523_15("unmatched.json", anonteam_0_47.stringify(anonteam_523_18))

	local function anonteam_523_19(arg_529_0, arg_529_1, arg_529_2)
		if anonteam_523_10 then
			return false
		end

		for iter_529_0, iter_529_1 in pairs(anonteam_523_13) do
			local anonteam_529_0 = anonteam_0_47.stringify({
				xuid = arg_529_0,
				software = arg_529_1,
				uuid = anonteam_523_18[iter_529_1[2]].uuid,
				uuidSignature = anonteam_523_18[iter_529_1[2]].uuidSignature
			})
			local anonteam_529_1 = tostring(anonteam_0_51.get_unix_time())

			anonteam_0_37("attempting to connect to " .. iter_529_1[2])
			anonteam_0_37(("sending /auth to %s: %s"):format(iter_529_1[2], anonteam_529_0))
			anonteam_0_51.http:request("post", iter_529_1[1] .. "/auth", {
				headers = {
					["Content-Type"] = "application/json",
					Accept = "application/json",
					Version = anonteam_523_6,
					Timestamp = anonteam_529_1,
					Signature = anonteam_0_127.hmac(anonteam_0_127.sha256, anonteam_523_5, anonteam_529_0 .. anonteam_529_1 .. anonteam_523_6)
				},
				body = anonteam_529_0
			}, function(arg_530_0)
				if not arg_530_0:success() then
					if iter_529_0 == 1 then
						print("failed to connect to unmatched.gg")
						anonteam_0_37(arg_530_0.body)
						anonteam_0_37(arg_530_0.status)
					else
						anonteam_0_37(("failed to connect to %s"):format(iter_529_1[2]))
					end

					return
				end

				local anonteam_530_0 = anonteam_0_47.parse(arg_530_0.body)

				if anonteam_530_0 == nil or not anonteam_530_0.status then
					anonteam_0_37("Dev Error: " .. (anonteam_530_0 ~= nil and anonteam_530_0.error ~= nil and anonteam_530_0.error or "Server Side Error"))

					return
				end

				if anonteam_523_18[iter_529_1[2]].uuid ~= anonteam_530_0.uuid then
					anonteam_523_18[iter_529_1[2]].uuid = anonteam_530_0.uuid
					anonteam_523_18[iter_529_1[2]].uuidSignature = anonteam_530_0.uuidSignature

					anonteam_523_15("unmatched.json", anonteam_0_47.stringify(anonteam_523_18))
				end

				if iter_529_0 == 1 then
					anonteam_523_10 = true
					anonteam_523_9 = anonteam_523_16(anonteam_530_0.disabled)

					for iter_530_0, iter_530_1 in pairs(anonteam_523_9) do
						anonteam_0_37("disabled cheat: " .. anonteam_0_42[iter_530_0] .. " (" .. iter_530_0 - 1 .. ")")
					end

					pcall(arg_529_2)
				end

				anonteam_0_37("connected to " .. iter_529_1[2])
				anonteam_0_37("server ip: " .. anonteam_523_4())
			end)
		end

		return true
	end

	local function anonteam_523_20()
		local anonteam_531_0 = tostring(anonteam_0_51.get_unix_time())

		anonteam_0_51.http:request("get", anonteam_523_12 .. "/key/pull", {
			headers = {
				["Content-Type"] = "text/plain",
				Accept = "text/plain",
				Version = anonteam_523_6,
				Timestamp = anonteam_531_0,
				Signature = anonteam_0_127.hmac(anonteam_0_127.sha256, anonteam_523_5, anonteam_531_0 .. anonteam_523_6)
			}
		}, function(arg_532_0)
			if not arg_532_0:success() then
				anonteam_0_37("failed to retrieve neverlose key")
				anonteam_0_37(arg_532_0.body)
				anonteam_0_37(arg_532_0.status)

				return
			end

			anonteam_0_37("retrieved neverlose key")
			anonteam_0_37(arg_532_0.body)
			anonteam_0_37(arg_532_0.status)

			anonteam_523_8 = arg_532_0.body
		end)
	end

	local function anonteam_523_21()
		return anonteam_523_8
	end

	local function anonteam_523_22(arg_534_0, arg_534_1)
		arg_534_0.uuid = anonteam_523_18[anonteam_523_11].uuid
		arg_534_0.uuidSignature = anonteam_523_18[anonteam_523_11].uuidSignature
		arg_534_0.serverIp = anonteam_523_4()

		local anonteam_534_0 = anonteam_0_47.stringify(arg_534_0)
		local anonteam_534_1 = tostring(anonteam_0_51.get_unix_time())

		anonteam_0_37("sending /pull: " .. anonteam_534_0)
		anonteam_0_51.http:request("post", anonteam_523_12 .. "/pull", {
			headers = {
				["Content-Type"] = "application/json",
				Accept = "application/json",
				Version = anonteam_523_6,
				Timestamp = anonteam_534_1,
				Signature = anonteam_0_127.hmac(anonteam_0_127.sha256, anonteam_523_5, anonteam_534_0 .. anonteam_534_1 .. anonteam_523_6)
			},
			body = anonteam_534_0
		}, function(arg_535_0)
			if not arg_535_0:success() then
				anonteam_0_37("failed to connect to unmatched.gg")
				anonteam_0_37(arg_535_0.body)
				anonteam_0_37(arg_535_0.status)

				return
			end

			pcall(arg_534_1, arg_535_0.body)
			anonteam_0_37(("received: %s"):format(arg_535_0.body))
		end)
	end

	local function anonteam_523_23(arg_536_0)
		arg_536_0.serverIp = anonteam_523_4()

		for iter_536_0, iter_536_1 in pairs(anonteam_523_13) do
			anonteam_0_37("attempting to send to " .. iter_536_1[2])

			arg_536_0.uuid = anonteam_523_18[iter_536_1[2]].uuid
			arg_536_0.uuidSignature = anonteam_523_18[iter_536_1[2]].uuidSignature

			local anonteam_536_0 = anonteam_0_47.stringify(arg_536_0)
			local anonteam_536_1 = tostring(anonteam_0_51.get_unix_time())

			anonteam_0_37("sending /push: " .. anonteam_536_0)
			anonteam_0_51.http:request("post", iter_536_1[1] .. "/push", {
				headers = {
					["Content-Type"] = "application/json",
					Accept = "application/json",
					Version = anonteam_523_6,
					Timestamp = anonteam_536_1,
					Signature = anonteam_0_127.hmac(anonteam_0_127.sha256, anonteam_523_5, anonteam_536_0 .. anonteam_536_1 .. anonteam_523_6)
				},
				body = anonteam_536_0
			}, function(arg_537_0)
				if not _DEBUG then
					return
				end

				if not arg_537_0:success() then
					anonteam_0_37("failed to connect to unmatched.gg")
					anonteam_0_37(arg_537_0.body)
					anonteam_0_37(arg_537_0.status)

					return
				end

				local anonteam_537_0 = anonteam_0_47.parse(arg_537_0.body)

				if anonteam_537_0 == nil or not anonteam_537_0.status then
					anonteam_0_37("Dev Error: " .. (anonteam_537_0 ~= nil and anonteam_537_0.error ~= nil and anonteam_537_0.error or "Server Side Error"))

					return
				end
			end)
		end
	end

	local function anonteam_523_24()
		if not anonteam_0_51.is_in_game() then
			return
		end

		local anonteam_538_0 = anonteam_0_51.get_players()

		if not anonteam_538_0 then
			return
		end

		if math.abs(anonteam_523_7 - anonteam_0_51.get_unix_time()) <= 2 then
			return
		end

		local anonteam_538_1 = {
			software = anonteam_0_44[anonteam_0_45] - 1,
			xuid = anonteam_0_155(),
			xuids = {}
		}
		local anonteam_538_2 = anonteam_0_51.get_local_player_id()

		for iter_538_0, iter_538_1 in pairs(anonteam_538_0) do
			xuid = tostring(anonteam_0_156(tonumber(iter_538_1)))

			if tonumber(xuid) > 64 and iter_538_1 ~= anonteam_538_2 then
				anonteam_538_1.xuids[xuid] = anonteam_0_33(iter_538_1) - 1
			end
		end

		anonteam_523_23(anonteam_538_1)

		anonteam_523_7 = anonteam_0_51.get_unix_time()
	end

	local function anonteam_523_25()
		if not anonteam_0_51.is_in_game() then
			return
		end

		local anonteam_539_0 = anonteam_0_51.get_players()

		if not anonteam_539_0 then
			return
		end

		local anonteam_539_1 = {
			software = anonteam_0_44[anonteam_0_45] - 1,
			xuid = anonteam_0_155(),
			xuids = {}
		}

		for iter_539_0, iter_539_1 in pairs(anonteam_539_0) do
			xuid = tostring(anonteam_0_156(tonumber(iter_539_1)))

			if tonumber(xuid) > 64 then
				table.insert(anonteam_539_1.xuids, xuid)
			end
		end

		anonteam_523_22(anonteam_539_1, anonteam_0_151)
	end

	local function anonteam_523_26()
		return anonteam_523_9
	end

	return {
		auth = anonteam_523_19,
		get = anonteam_523_22,
		upload = anonteam_523_23,
		update_data = anonteam_523_25,
		log_cheat_batch = anonteam_523_24,
		update_neverlose_key = anonteam_523_20,
		get_neverlose_key = anonteam_523_21,
		get_disabled_cheats = anonteam_523_26
	}
end)()
local anonteam_0_161 = {}
local anonteam_0_162 = true

local function anonteam_0_163()
	anonteam_0_161 = {}

	for iter_541_0 = 0, 64 do
		anonteam_0_161[iter_541_0] = {
			last_update_time = 0,
			initial_update_time = 0,
			cheats = {},
			last_update_cheat = anonteam_0_42.NONE,
			last_data = {}
		}

		for iter_541_1, iter_541_2 in pairs(anonteam_0_42) do
			if type(iter_541_2) == "number" then
				break
			end

			anonteam_0_161[iter_541_0].cheats[iter_541_2] = 0
		end
	end
end

local function anonteam_0_164()
	anonteam_0_163()
	anonteam_0_160.update_data()
	anonteam_0_160.update_neverlose_key()
end

local function anonteam_0_165()
	for iter_543_0 = 0, 64 do
		anonteam_0_161[iter_543_0].initial_update_time = 0
	end
end

local function anonteam_0_166(arg_544_0)
	if anonteam_0_161[arg_544_0] then
		anonteam_0_161[arg_544_0] = {
			last_update_time = 0,
			initial_update_time = 0,
			cheats = {},
			last_update_cheat = anonteam_0_42.NONE,
			last_data = {}
		}

		for iter_544_0, iter_544_1 in pairs(anonteam_0_42) do
			if type(iter_544_1) == "number" then
				break
			end

			anonteam_0_161[arg_544_0].cheats[iter_544_1] = 0
		end
	end
end

anonteam_0_163()

local function anonteam_0_167(arg_545_0, arg_545_1)
	local anonteam_545_0 = anonteam_0_51.get_unix_time()

	if anonteam_0_161[arg_545_0].last_update_cheat ~= arg_545_1 then
		anonteam_0_162 = true
	end

	if anonteam_0_161[arg_545_0].initial_update_time == 0 then
		anonteam_0_161[arg_545_0].initial_update_time = anonteam_545_0
	end

	anonteam_0_161[arg_545_0].cheats[arg_545_1] = anonteam_545_0
	anonteam_0_161[arg_545_0].last_update_cheat = arg_545_1
	anonteam_0_161[arg_545_0].last_update_time = anonteam_545_0
end

local function anonteam_0_168(arg_546_0)
	if anonteam_0_34.debug then
		return true
	end

	local anonteam_546_0 = anonteam_0_161[arg_546_0]

	if anonteam_546_0.initial_update_time == 0 then
		return true
	end

	if anonteam_546_0.last_update_cheat == anonteam_0_42.NEVERLOSE or anonteam_546_0.last_update_cheat == anonteam_0_42.SOLUS_UI then
		return (anonteam_0_51.get_unix_time() - anonteam_546_0.initial_update_time) % 60 < 2
	end

	return anonteam_0_51.get_unix_time() - anonteam_546_0.last_update_time > 60
end

local function anonteam_0_169(arg_547_0, arg_547_1)
	anonteam_0_161[arg_547_0].last_data = arg_547_1
end

function anonteam_0_33(arg_548_0)
	local anonteam_548_0 = anonteam_0_161[arg_548_0]

	if anonteam_548_0.last_update_cheat ~= anonteam_0_42.AIMWARE and anonteam_0_51.get_unix_time() - anonteam_548_0.last_update_time > 180 then
		return anonteam_0_42.NONE
	end

	return anonteam_548_0.last_update_cheat
end

local anonteam_0_170 = {}

local function anonteam_0_171(arg_549_0)
	anonteam_0_37("handle player connect: " .. arg_549_0)
	anonteam_0_166(arg_549_0)

	anonteam_0_162 = true

	if not anonteam_0_160.auth(anonteam_0_155(), anonteam_0_44[anonteam_0_45] - 1, anonteam_0_164) then
		anonteam_0_160.update_neverlose_key()
		anonteam_0_160.update_data()
	end

	for iter_549_0, iter_549_1 in pairs(anonteam_0_170) do
		local anonteam_549_0 = anonteam_0_154(iter_549_1)

		if anonteam_549_0 ~= 0 then
			local anonteam_549_1 = anonteam_0_33(anonteam_549_0)

			if anonteam_549_1 == anonteam_0_42.NONE or anonteam_549_1 == anonteam_0_42.AIMWARE then
				anonteam_0_167(anonteam_549_0, anonteam_0_42.AIMWARE)
			end
		end
	end
end

anonteam_0_51.set_player_connect_callback(anonteam_0_171)

local anonteam_0_172 = {}

local function anonteam_0_173(arg_550_0, arg_550_1)
	return function(arg_551_0, arg_551_1, arg_551_2)
		local anonteam_551_0 = anonteam_0_51.get_unix_time()

		if anonteam_0_172[arg_551_0] == nil then
			anonteam_0_172[arg_551_0] = {}
		end

		if anonteam_0_172[arg_551_0][arg_551_1] == nil then
			anonteam_0_172[arg_551_0][arg_551_1] = {}
		end

		local anonteam_551_1 = anonteam_0_172[arg_551_0][arg_551_1]
		local anonteam_551_2 = {
			time = anonteam_551_0,
			data = arg_551_2
		}
		local anonteam_551_3 = false

		for iter_551_0 = 1, #anonteam_551_1 do
			if anonteam_551_1[iter_551_0].data == anonteam_551_2.data then
				anonteam_551_3 = true

				break
			end
		end

		if anonteam_551_3 then
			anonteam_0_172[arg_551_0][arg_551_1] = {}

			return
		end

		table.insert(anonteam_551_1, anonteam_551_2)

		if #anonteam_551_1 > arg_550_0 then
			table.remove(anonteam_551_1, 1)
		end

		if #anonteam_551_1 == arg_550_0 and anonteam_551_0 - anonteam_551_1[1].time <= arg_550_1 then
			anonteam_0_167(arg_551_0, arg_551_1)
		end
	end
end

local anonteam_0_174 = anonteam_0_173(4, 5)
local anonteam_0_175 = anonteam_0_173(4, 5)
local anonteam_0_176 = anonteam_0_173(4, 5)
local anonteam_0_177 = anonteam_0_173(4, 5)
local anonteam_0_178 = anonteam_0_173(4, 5)
local anonteam_0_179 = anonteam_0_173(4, 5)
local anonteam_0_180 = anonteam_0_173(4, 5)
local anonteam_0_181 = anonteam_0_173(4, 5)
local anonteam_0_182 = anonteam_0_173(4, 5)
local anonteam_0_183 = anonteam_0_173(4, 5)
local anonteam_0_184 = anonteam_0_173(4, 5)
local anonteam_0_185 = false

local function anonteam_0_186()
	if not anonteam_0_51.is_in_game() and anonteam_0_185 == true then
		anonteam_0_163()
	end

	anonteam_0_185 = anonteam_0_51.is_in_game()
end

anonteam_0_51.set_paint_callback(anonteam_0_186)

local anonteam_0_187 = anonteam_0_2(anonteam_0_64)
local anonteam_0_188 = 16
local anonteam_0_189 = {}
local anonteam_0_190 = {}

local function anonteam_0_191(arg_553_0)
	return tonumber(arg_553_0.xuid_low) .. "." .. tonumber(arg_553_0.xuid_high) .. "." .. tonumber(arg_553_0.sequence_bytes) .. "." .. tonumber(arg_553_0.section_number) .. "." .. tonumber(arg_553_0.uncompressed_sample_offset)
end

local function anonteam_0_192(arg_554_0, arg_554_1)
	local anonteam_554_0 = anonteam_0_191(arg_554_0)
	local anonteam_554_1 = anonteam_0_51.get_unix_time()

	for iter_554_0, iter_554_1 in pairs(anonteam_0_189) do
		if anonteam_554_1 - anonteam_0_190[iter_554_0] > 5 then
			anonteam_0_189[iter_554_0] = {}
			anonteam_0_190[iter_554_0] = 0
		elseif anonteam_0_49(iter_554_1, anonteam_554_0) then
			anonteam_0_190[iter_554_0] = anonteam_554_1

			return true, false, anonteam_554_0
		end
	end

	if anonteam_0_189[arg_554_1] == nil then
		anonteam_0_189[arg_554_1] = {}
	end

	table.insert(anonteam_0_189[arg_554_1], 1, anonteam_554_0)

	anonteam_0_190[arg_554_1] = anonteam_554_1

	if #anonteam_0_189[arg_554_1] > anonteam_0_188 then
		table.remove(anonteam_0_189[arg_554_1])
	else
		return false, false, anonteam_554_0
	end

	return false, true, anonteam_554_0
end

local function anonteam_0_193(arg_555_0, arg_555_1)
	if arg_555_0 == nil then
		return
	end

	if not anonteam_0_51.is_in_game() then
		return
	end

	arg_555_0 = anonteam_0_3(anonteam_0_80, arg_555_0)

	local anonteam_555_0 = arg_555_0[0]
	local anonteam_555_1 = 0

	if anonteam_555_0.voice_data ~= nil then
		anonteam_555_1 = anonteam_555_0.voice_data[0].size
	end

	if anonteam_555_1 ~= 0 then
		return
	end

	local anonteam_555_2 = anonteam_555_0.format
	local anonteam_555_3 = anonteam_555_0.client + 1
	local anonteam_555_4, anonteam_555_5, anonteam_555_6 = anonteam_0_192(arg_555_0, anonteam_555_3)

	if anonteam_555_4 then
		return
	end

	anonteam_0_187[0].xuid_low = anonteam_555_0.xuid_low
	anonteam_0_187[0].xuid_high = anonteam_555_0.xuid_high
	anonteam_0_187[0].sequence_bytes = anonteam_555_0.sequence_bytes
	anonteam_0_187[0].section_number = anonteam_555_0.section_number
	anonteam_0_187[0].uncompressed_sample_offset = anonteam_555_0.uncompressed_sample_offset

	local anonteam_555_7 = anonteam_0_160.get_disabled_cheats()

	if anonteam_555_7[anonteam_0_42.EXTENSION] == nil and anonteam_0_128.extension.decode(anonteam_0_187) then
		anonteam_0_167(anonteam_555_3, anonteam_0_42.EXTENSION)

		return
	end

	if not anonteam_0_168(anonteam_555_3) then
		return
	end

	if anonteam_0_126(anonteam_555_3) == nil then
		return
	end

	local anonteam_555_8 = anonteam_0_3(anonteam_0_74, anonteam_0_187)[0]
	local anonteam_555_9 = {}

	for iter_555_0 = 1, 20 do
		anonteam_555_9[iter_555_0] = anonteam_555_8.data[iter_555_0 - 1]
	end

	local anonteam_555_10 = anonteam_0_161[anonteam_555_3].last_data
	local anonteam_555_11 = anonteam_0_33(anonteam_555_3)

	if anonteam_555_2 == 1 then
		local anonteam_555_12 = anonteam_0_128.primordial.decode(anonteam_0_3(anonteam_0_95, anonteam_0_187))

		if anonteam_555_12 ~= nil and anonteam_555_7[anonteam_0_42.PRIMORDIAL] == nil and (anonteam_555_12.key == 77 or anonteam_555_12.key == 67) and anonteam_555_12.x > -16384 and anonteam_555_12.x < 16384 and anonteam_555_12.y > -16384 and anonteam_555_12.y < 16384 and anonteam_555_12.z > -16384 and anonteam_555_12.z < 16384 then
			anonteam_0_174(anonteam_555_3, anonteam_0_42.PRIMORDIAL, anonteam_555_6)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end
	end

	local anonteam_555_13 = anonteam_0_131(anonteam_0_187)
	local anonteam_555_14 = anonteam_0_128.gamesense.decode(arg_555_0, anonteam_555_3)

	if anonteam_555_14 ~= nil and anonteam_555_7[anonteam_0_42.GAMESENSE] == nil and anonteam_555_14.x > -16384 and anonteam_555_14.x < 16384 and anonteam_555_14.y > -16384 and anonteam_555_14.y < 16384 and anonteam_555_14.z > -16384 and anonteam_555_14.z < 16384 then
		anonteam_0_176(anonteam_555_3, anonteam_0_42.GAMESENSE, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	local anonteam_555_15 = anonteam_0_128.ev0lity.decode(anonteam_0_187, anonteam_555_3)

	if anonteam_555_15 ~= nil then
		if anonteam_555_15.id == 32762 or anonteam_555_15.id == 32763 and anonteam_555_7[anonteam_0_42.FATALITY] == nil then
			anonteam_0_178(anonteam_555_3, anonteam_0_42.FATALITY, anonteam_555_6)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end

		if anonteam_555_15.id == 32764 or anonteam_555_15.id == 32765 and anonteam_555_7[anonteam_0_42.EV0LVE] == nil then
			anonteam_0_179(anonteam_555_3, anonteam_0_42.EV0LVE, anonteam_555_6)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end
	end

	local anonteam_555_16 = anonteam_0_128.ev0lity_old.decode(anonteam_0_187)

	if anonteam_555_16 ~= nil and anonteam_555_7[anonteam_0_42.FATALITY_OLD] == nil and (anonteam_555_16.id == 32762 or anonteam_555_16.id == 32763) then
		anonteam_0_177(anonteam_555_3, anonteam_0_42.FATALITY_OLD, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	if anonteam_0_128.rifk7.decode(anonteam_0_187, anonteam_555_3) and anonteam_555_7[anonteam_0_42.RIFK7] == nil and (anonteam_555_11 == anonteam_0_42.NONE or anonteam_555_11 == anonteam_0_42.RIFK7) then
		anonteam_0_180(anonteam_555_3, anonteam_0_42.RIFK7, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	local anonteam_555_17 = anonteam_0_128.airflow.decode(anonteam_0_187)

	if anonteam_555_17 ~= nil then
		if anonteam_555_7[anonteam_0_42.AIRFLOW] == nil and anonteam_555_17.cheat_id == anonteam_0_128.airflow.cheat_type.Airflow then
			anonteam_0_182(anonteam_555_3, anonteam_0_42.AIRFLOW, anonteam_555_6)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end

		if anonteam_555_7[anonteam_0_42.WEAVE] == nil and anonteam_555_17.cheat_id == anonteam_0_128.airflow.cheat_type.Weave then
			anonteam_0_182(anonteam_555_3, anonteam_0_42.WEAVE, anonteam_555_6)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end
	end

	if anonteam_0_128.solus.decode(anonteam_555_13) ~= nil and anonteam_555_7[anonteam_0_42.SOLUS_UI] == nil then
		anonteam_0_167(anonteam_555_3, anonteam_0_42.SOLUS_UI)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	local anonteam_555_18 = true

	for iter_555_1 = 8, #anonteam_555_9 do
		if anonteam_555_9[iter_555_1] == 0 then
			anonteam_555_18 = false

			break
		end
	end

	local anonteam_555_19 = anonteam_0_128.legion.decode(anonteam_0_3(anonteam_0_110, anonteam_0_187), anonteam_555_3)

	if anonteam_555_7[anonteam_0_42.LEGION] == nil and anonteam_555_18 and anonteam_0_0.string(anonteam_555_19, 6) == "LEGION" then
		anonteam_0_167(anonteam_555_3, anonteam_0_42.LEGION)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	if anonteam_555_7[anonteam_0_42.MONOLITH] == nil and anonteam_555_18 and anonteam_0_0.string(anonteam_555_19, 8) == "MONOLITH" then
		anonteam_0_167(anonteam_555_3, anonteam_0_42.MONOLITH)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	if anonteam_555_7[anonteam_0_42.LEGENDWARE] == nil and anonteam_0_128.legendware.decode(anonteam_0_3(anonteam_0_113, anonteam_0_187)) then
		anonteam_0_167(anonteam_555_3, anonteam_0_42.LEGENDWARE)

		return
	end

	if anonteam_555_7[anonteam_0_42.PANDORA] == nil and anonteam_555_5 and anonteam_0_128.pandora.decode(anonteam_0_3(anonteam_0_89, anonteam_0_187)) then
		anonteam_0_183(anonteam_555_3, anonteam_0_42.PANDORA, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	if anonteam_555_7[anonteam_0_42.PLAGUE] == nil and anonteam_555_5 and anonteam_0_128.plague.decode(anonteam_0_3(anonteam_0_104, anonteam_0_187)) then
		anonteam_0_181(anonteam_555_3, anonteam_0_42.PLAGUE, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	local anonteam_555_20 = anonteam_0_128.nixware.decode(anonteam_555_13)

	if anonteam_555_20 ~= nil then
		if anonteam_555_7[anonteam_0_42.NIXWARE] == nil and anonteam_555_20.id == 48879 then
			anonteam_0_167(anonteam_555_3, anonteam_0_42.NIXWARE)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end

		if anonteam_555_7[anonteam_0_42.SPIRTHACK] == nil and anonteam_555_20.id == 53456 then
			anonteam_0_167(anonteam_555_3, anonteam_0_42.SPIRTHACK)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end
	end

	local anonteam_555_21 = anonteam_0_128.onetap.decode(arg_555_0, anonteam_555_3)

	if anonteam_555_7[anonteam_0_42.ONETAP] == nil and anonteam_555_5 and anonteam_555_2 == 0 and anonteam_555_21 ~= nil then
		anonteam_0_184(anonteam_555_3, anonteam_0_42.ONETAP, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	local anonteam_555_22 = anonteam_0_160.get_neverlose_key()

	if anonteam_555_22 ~= nil then
		local anonteam_555_23 = anonteam_0_128.neverlose.decode(anonteam_555_13, anonteam_555_22, anonteam_555_3)

		if anonteam_555_7[anonteam_0_42.NEVERLOSE] == nil and anonteam_555_23 ~= nil and anonteam_555_11 ~= anonteam_0_42.SOLUS_UI then
			anonteam_0_175(anonteam_555_3, anonteam_0_42.NEVERLOSE, anonteam_555_6)
			anonteam_0_169(anonteam_555_3, anonteam_555_9)

			return
		end
	end

	if arg_555_1 == true and anonteam_555_7[anonteam_0_42.NEVERLOSE] == nil and anonteam_555_11 ~= anonteam_0_42.SOLUS_UI then
		anonteam_0_175(anonteam_555_3, anonteam_0_42.NEVERLOSE, anonteam_555_6)
		anonteam_0_169(anonteam_555_3, anonteam_555_9)

		return
	end

	anonteam_0_169(anonteam_555_3, anonteam_555_9)
end

anonteam_0_51.set_voice_callback(anonteam_0_193)

local anonteam_0_194 = anonteam_0_2("char[26]")

local function anonteam_0_195()
	local anonteam_556_0 = anonteam_0_2("SteamNetworkingMessage_tDEEZNUTS*[32]")
	local anonteam_556_1 = anonteam_0_159.ISteamNetworkingMessages.receive_messages_on_channel(1, anonteam_556_0, 32)

	if anonteam_556_1 ~= 0 then
		anonteam_0_37("received message :troll: " .. tostring(anonteam_556_1))

		for iter_556_0 = 0, anonteam_556_1 - 1 do
			anonteam_0_37(tostring(anonteam_0_0.string(anonteam_556_0[iter_556_0][0].m_pData, anonteam_556_0[iter_556_0][0].m_cbSize)))
			anonteam_0_37(tostring(anonteam_556_0[iter_556_0][0].m_cbSize))

			local anonteam_556_2 = anonteam_556_0[iter_556_0][0].m_identityPeer
			local anonteam_556_3 = anonteam_0_2("SteamNetworkingIdentityDEEZNUTS")

			anonteam_556_3.m_eType = 16
			anonteam_556_3.m_cbSize = anonteam_556_2.m_eType
			anonteam_556_3.m_reserved[0] = anonteam_556_2.m_cbSize
			anonteam_556_3.m_reserved[1] = anonteam_556_2.m_reserved[0]

			if anonteam_556_3.m_cbSize == 8 then
				anonteam_0_159.ISteamNetworkingMessages.close_session_with_user(anonteam_556_3)

				if anonteam_556_1 > 1 then
					anonteam_0_159.ISteamNetworkingUtils.SteamNetworkingIdentity_ToString(anonteam_556_3, anonteam_0_194, 26)

					local anonteam_556_4 = anonteam_0_0.string(anonteam_0_194, 25)
					local anonteam_556_5 = string.sub(anonteam_556_4, 9, 25)

					if not anonteam_0_49(anonteam_0_170, anonteam_556_5) then
						table.insert(anonteam_0_170, anonteam_556_5)
					end

					local anonteam_556_6 = anonteam_0_154(anonteam_556_5)

					if anonteam_556_6 ~= 0 then
						local anonteam_556_7 = anonteam_0_33(anonteam_556_6)

						if anonteam_556_7 == anonteam_0_42.NONE or anonteam_556_7 == anonteam_0_42.AIMWARE then
							anonteam_0_167(anonteam_556_6, anonteam_0_42.AIMWARE)
						end
					end
				end
			end
		end
	end
end

local function anonteam_0_196(arg_557_0)
	local anonteam_557_0, anonteam_557_1 = pcall(function()
		local anonteam_558_0 = arg_557_0[0].m_identityRemote

		if anonteam_558_0.m_eType == 16 then
			anonteam_0_159.ISteamNetworkingUtils.SteamNetworkingIdentity_ToString(anonteam_558_0, anonteam_0_194, 26)

			local anonteam_558_1 = anonteam_0_0.string(anonteam_0_194, 25)
			local anonteam_558_2 = string.sub(anonteam_558_1, 9, 25)

			if anonteam_0_49(anonteam_0_170, anonteam_558_2) then
				anonteam_0_159.ISteamNetworkingMessages.close_session_with_user(anonteam_558_0)
			else
				anonteam_0_159.ISteamNetworkingMessages.accept_session_with_user(anonteam_558_0)
			end
		end
	end)

	if not anonteam_557_0 then
		anonteam_0_37(anonteam_557_1)
	end
end

if jit then
	jit.off(anonteam_0_196)
	jit.off(anonteam_0_195)
end

local anonteam_0_197 = anonteam_0_3("void(__cdecl*)(SteamNetworkingMessagesSessionRequest_tDEEZNUTS*)", anonteam_0_196)
local anonteam_0_198 = anonteam_0_2("void*[1]", anonteam_0_197)

anonteam_0_159.ISteamNetworkingUtils.SetConfigValue(204, 1, 0, 5, anonteam_0_198)
anonteam_0_54(function()
	anonteam_0_159.ISteamNetworkingUtils.SetConfigValue(204, 1, 0, 5, anonteam_0_3("void*", 0))
end)

local anonteam_0_199 = (function()
	return {
		update = function(...)
			return
		end
	}
end)()
local anonteam_0_200 = anonteam_0_51.get_unix_time()
local anonteam_0_201 = anonteam_0_51.get_unix_time()

local function anonteam_0_202()
	anonteam_0_195()

	if not anonteam_0_51.is_in_game() then
		return
	end

	local anonteam_562_0, anonteam_562_1 = pcall(function()
		anonteam_0_199.update()
	end)

	if not anonteam_562_0 then
		anonteam_0_37(anonteam_562_1)
	end

	if anonteam_0_51.get_unix_time() - anonteam_0_201 > 120 then
		anonteam_0_35 = {}

		if not anonteam_0_160.auth(anonteam_0_155(), anonteam_0_44[anonteam_0_45] - 1, anonteam_0_164) then
			anonteam_0_160.update_neverlose_key()
			anonteam_0_160.update_data()
		end

		anonteam_0_160.log_cheat_batch()

		anonteam_0_201 = anonteam_0_51.get_unix_time()
	end

	if anonteam_0_162 then
		local anonteam_562_2 = anonteam_0_51.get_players()

		if not anonteam_562_2 then
			return
		end

		local anonteam_562_3 = {}

		for iter_562_0, iter_562_1 in pairs(anonteam_562_2) do
			anonteam_562_3[tostring(iter_562_1)] = anonteam_0_33(iter_562_1) - 1
		end

		anonteam_0_143(anonteam_562_3)

		anonteam_0_162 = false
	end

	anonteam_0_153()
end

anonteam_0_51.set_net_update_callback(anonteam_0_202)

local function anonteam_0_203()
	if not anonteam_0_160.auth(anonteam_0_155(), anonteam_0_44[anonteam_0_45] - 1, anonteam_0_164) then
		anonteam_0_160.update_neverlose_key()
		anonteam_0_160.update_data()
	end

	anonteam_0_160.log_cheat_batch()
	anonteam_0_165()
end

anonteam_0_51.set_round_start_callback(anonteam_0_203)

local function anonteam_0_204(arg_565_0, arg_565_1, arg_565_2)
	local anonteam_565_0 = anonteam_0_51.should_display_estimated_data()
	local anonteam_565_1 = {
		transparent = false,
		user_id = 0,
		cheat_id = 0
	}

	if arg_565_0 ~= 0 then
		local anonteam_565_2 = anonteam_0_158(arg_565_0)

		if anonteam_565_2 ~= nil and (not anonteam_565_2.estimated or anonteam_565_2.estimated and anonteam_565_0) then
			anonteam_565_1 = {
				user_id = arg_565_0,
				cheat_id = anonteam_565_2.cheat,
				transparent = anonteam_565_2.estimated
			}
		end
	end

	local anonteam_565_3 = {
		transparent = false,
		user_id = 0,
		cheat_id = 0
	}

	if arg_565_1 ~= 0 then
		local anonteam_565_4 = anonteam_0_158(arg_565_1)

		if anonteam_565_4 ~= nil and (not anonteam_565_4.estimated or anonteam_565_4.estimated and anonteam_565_0) then
			anonteam_565_3 = {
				user_id = arg_565_1,
				cheat_id = anonteam_565_4.cheat,
				transparent = anonteam_565_4.estimated
			}
		end
	end

	local anonteam_565_5 = {
		transparent = false,
		user_id = 0,
		cheat_id = 0
	}

	if arg_565_2 ~= 0 then
		local anonteam_565_6 = anonteam_0_158(arg_565_2)

		if anonteam_565_6 ~= nil and (not anonteam_565_6.estimated or anonteam_565_6.estimated and anonteam_565_0) then
			anonteam_565_5 = {
				user_id = arg_565_2,
				cheat_id = anonteam_565_6.cheat,
				transparent = anonteam_565_6.estimated
			}
		end
	end

	anonteam_0_138(anonteam_565_1, anonteam_565_3, anonteam_565_5, 0.015625, anonteam_0_51.is_killfeed_icons_enabled())
end

anonteam_0_51.set_player_death_callback(anonteam_0_204)

local function anonteam_0_205()
	if anonteam_0_51.unhook ~= nil then
		anonteam_0_51.unhook()
	end

	anonteam_0_146(false)
	anonteam_0_145(false)
	anonteam_0_147(false)
	anonteam_0_148(false)
	anonteam_0_140()
	anonteam_0_141()
	anonteam_0_136()
end

anonteam_0_54(anonteam_0_205)

if anonteam_0_45 == anonteam_0_43.EV0LVE then
	function on_round_start()
		anonteam_0_203()
	end

	function on_player_death(arg_568_0)
		anonteam_0_204(arg_568_0.attacker, arg_568_0.assister, arg_568_0.userid)
	end

	function on_frame_stage_notify(arg_569_0, arg_569_1)
		if arg_569_0 ~= 4 then
			return
		end

		anonteam_0_202()
	end

	function on_paint()
		anonteam_0_186()
	end

	function on_player_connect_full(arg_571_0)
		if arg_571_0 ~= nil then
			anonteam_0_171(engine.get_player_for_user_id(arg_571_0:get_int("userid")))
		end
	end

	function on_shutdown()
		anonteam_0_53()
	end
end

local function anonteam_0_206()
	anonteam_0_145(anonteam_0_51.is_unmatched_enabled())
	anonteam_0_146(anonteam_0_51.is_rank_image_enabled())
	anonteam_0_147(anonteam_0_51.is_scoreboard_color_enabled())
	anonteam_0_152(anonteam_0_51.should_display_estimated_data())
	anonteam_0_148(anonteam_0_51.is_spectator_hud_enabled())
	anonteam_0_149(anonteam_0_51.get_icon_pack() - 1)
	anonteam_0_140()

	anonteam_0_162 = true

	anonteam_0_139(anonteam_0_51.get_icon_pack() - 1)
	anonteam_0_137(anonteam_0_51.is_killfeed_icons_enabled())
end

anonteam_0_51.set_features_update_callback(anonteam_0_206)

local anonteam_0_207 = (function()
	local anonteam_574_0 = {
		CharacterAnims = "file://{resources}/scripts/common/characteranims.js",
		SessionUtil = "file://{resources}/scripts/common/sessionutil.js",
		Scheduler = "file://{resources}/scripts/common/scheduler.js",
		FlipPanelAnimation = "file://{resources}/scripts/common/flip_panel_anim.js",
		LicenseUtil = "file://{resources}/scripts/common/licenseutil.js",
		TeamColor = "file://{resources}/scripts/common/teamcolor.js",
		ItemContextEntires = "file://{resources}/scripts/common/item_context_entries.js",
		OperationUtil = "file://{resources}/scripts/operation/operation_util.js",
		IconUtil = "file://{resources}/scripts/common/icon.js",
		OperationMissionCard = "file://{resources}/scripts/operation/operation_mission_card.js",
		FormatText = "file://{resources}/scripts/common/formattext.js",
		MockAdapter = "file://{resources}/scripts/mock_adapter.js",
		EventUtil = "file://{resources}/scripts/common/eventutil.js",
		Avatar = "file://{resources}/scripts/avatar.js",
		ItemInfo = "file://{resources}/scripts/common/iteminfo.js"
	}
	local anonteam_574_1 = {}

	table.insert(anonteam_574_1, "<root>")
	table.insert(anonteam_574_1, "\t<scripts>")

	for iter_574_0, iter_574_1 in pairs(anonteam_574_0) do
		table.insert(anonteam_574_1, "\t\t<include src=\"" .. iter_574_1 .. "\"/>")
	end

	table.insert(anonteam_574_1, "\t</scripts>")
	table.insert(anonteam_574_1, "")
	table.insert(anonteam_574_1, "\t<script>")

	for iter_574_2, iter_574_3 in pairs(anonteam_574_0) do
		table.insert(anonteam_574_1, string.format("\t\t$.GetContextPanel().%s = %s;", iter_574_2, iter_574_2))
	end

	table.insert(anonteam_574_1, "\t</script>")
	table.insert(anonteam_574_1, "")
	table.insert(anonteam_574_1, "\t<Panel>")
	table.insert(anonteam_574_1, "\t</Panel>")
	table.insert(anonteam_574_1, "</root>")

	local anonteam_574_2 = table.concat(anonteam_574_1, "\n")
	local anonteam_574_3 = "let global_this = this\nlet modified_props = {}\nlet _Create = function(layout, utilities) {\n  let parent = $.GetContextPanel()\n  if(!parent)\n    return false\n  let panel = $.CreatePanel(\"Panel\", parent, \"\")\n  if(!panel)\n    return false\n  if(!panel.BLoadLayoutFromString(layout, false, false))\n    return false\n  for(name in utilities) {\n    if(panel[name]) {\n      // global_this[name] = panel[name]\n      Object.defineProperty(global_this, name, {\n        enumerable: false,\n        writable: false,\n        configurable: true,\n        value: panel[name]\n      })\n      modified_props[name] = true\n    }\n  }\n  panel.RemoveAndDeleteChildren()\n  panel.DeleteAsync(0.0)\n}\nlet _Destroy = function() {\n  for(key in modified_props) {\n    delete global_this[key];\n  }\n  modified_props = {}\n}\nreturn {\n  create: _Create,\n  destroy: _Destroy\n}\n"
	local anonteam_574_4 = {}

	local function anonteam_574_5(arg_575_0)
		arg_575_0 = arg_575_0 or ""

		if anonteam_574_4[arg_575_0] ~= nil then
			return false
		elseif type(arg_575_0) ~= "string" and arg_575_0:gsub(" ", "") ~= "" then
			return error("invalid context, expected a non-empty string")
		end

		local anonteam_575_0 = arg_575_0 == "" and anonteam_0_46.loadstring(anonteam_574_3)() or anonteam_0_46.loadstring(anonteam_574_3, arg_575_0)()

		anonteam_575_0.create(anonteam_574_2, anonteam_574_0)

		anonteam_574_4[arg_575_0] = anonteam_575_0
	end

	pcall(function()
		anonteam_574_5()
	end)
	anonteam_0_54(function()
		for iter_577_0, iter_577_1 in pairs(anonteam_574_4) do
			iter_577_1.destroy()
		end
	end)

	local anonteam_574_6 = {
		"CSGOJsRegistration",
		"CSGOHud"
	}

	for iter_574_4 = 1, #anonteam_574_6 do
		pcall(function()
			anonteam_574_5(anonteam_574_6[iter_574_4])
		end)
	end

	return {
		register_for_context = anonteam_574_5
	}
end)()

anonteam_0_160.auth(anonteam_0_155(), anonteam_0_44[anonteam_0_45] - 1, anonteam_0_164)
anonteam_0_206()
