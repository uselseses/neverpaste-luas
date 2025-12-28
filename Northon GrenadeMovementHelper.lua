 anonteam_0_0 = false
 anonteam_0_1 = render.camera_position
 anonteam_0_2 = render.camera_angles
 anonteam_0_3 = render.measure_text
 anonteam_0_4 = render.rect_outline
 anonteam_0_5 = render.rect
 anonteam_0_6 = render.texture
 anonteam_0_7 = render.push_clip_rect
 anonteam_0_8 = render.pop_clip_rect
 anonteam_0_9 = render.circle_outline
 anonteam_0_10 = render.circle
 anonteam_0_11 = render.text
 anonteam_0_12 = string.sub
 anonteam_0_13 = string.gsub
 anonteam_0_14 = string.format
 anonteam_0_15 = string.find
 anonteam_0_16 = string.lower
 anonteam_0_17 = string.upper
 anonteam_0_18 = string.byte
 anonteam_0_19 = string.char
 anonteam_0_20 = string.rep
 anonteam_0_21 = string.gmatch
 anonteam_0_22 = math.sin
 anonteam_0_23 = math.cos
 anonteam_0_24 = math.pow
 anonteam_0_25 = math.atan2
 anonteam_0_26 = math.abs
 anonteam_0_27 = math.min
 anonteam_0_28 = math.max
 anonteam_0_29 = math.floor
 anonteam_0_30 = math.clamp
 anonteam_0_31 = math.normalize_yaw
 anonteam_0_32 = math.pi
 anonteam_0_33 = tostring
 anonteam_0_34 = tonumber
 anonteam_0_35 = next
 anonteam_0_36 = type
 anonteam_0_37 = pcall
 anonteam_0_38 = error
 anonteam_0_39 = select
 anonteam_0_40 = unpack
 anonteam_0_41 = setmetatable
 anonteam_0_42 = bit.band
 anonteam_0_43 = bit.bnot
 anonteam_0_44 = bit.bxor
 anonteam_0_45 = bit.rshift
 anonteam_0_46 = bit.lshift
 anonteam_0_47 = bit.bor
 anonteam_0_48 = common.get_map_data
 anonteam_0_49 = common.add_notify
 anonteam_0_50 = common.get_timestamp
 anonteam_0_51 = utils.execute_after
 anonteam_0_52 = utils.console_exec
 anonteam_0_53 = utils.trace_line
 anonteam_0_54 = table.remove
 anonteam_0_55 = table.concat
 anonteam_0_56 = table.sort
 anonteam_0_57 = entity.get
 anonteam_0_58 = entity.get_local_player
 anonteam_0_59 = msgpack.pack
 anonteam_0_60 = msgpack.unpack
 anonteam_0_61 = json.parse
 anonteam_0_62 = json.stringify
 anonteam_0_63 = network.get
 anonteam_0_64 = network.post
 anonteam_0_65 = print_raw
 anonteam_0_66 = print_dev
 anonteam_0_67 = events
 anonteam_0_68 = globals
 anonteam_0_69 = vector

 anonteam_0_79 = anonteam_0_69()
 anonteam_0_80 = anonteam_0_79.clone
 anonteam_0_81 = anonteam_0_79.angles
 anonteam_0_82 = anonteam_0_79.length2d
 anonteam_0_83 = anonteam_0_79.to_screen
 anonteam_0_84, anonteam_0_85 = anonteam_0_79.dist, anonteam_0_79.dist2d
 anonteam_0_86, anonteam_0_87 = anonteam_0_79.normalize, anonteam_0_79.normalized
 anonteam_0_88 = color

 anonteam_0_93 = anonteam_0_88()
 anonteam_0_94 = anonteam_0_93.lerp
 anonteam_0_95 = anonteam_0_93.to_hex
 anonteam_0_96 = anonteam_0_93.alpha_modulate
 anonteam_0_102 = ui.find
 anonteam_0_103 = anonteam_0_102("Aimbot", "Ragebot", "Main", "Enabled")
 anonteam_0_104, anonteam_0_105 = anonteam_0_103.get, anonteam_0_103.set
 anonteam_0_106, anonteam_0_107 = anonteam_0_103.override, anonteam_0_103.get_override
 anonteam_0_108 = common.get_username()

 anonteam_0_111 = render.screen_size()
 anonteam_0_112 = anonteam_0_111 * 0.5
 anonteam_0_113 = "0ucHJINGekQRUwZWVbPXyYlshz65DfLnpxTtKiFvor4ad9A7M3mSBCE21gjO8q+/="

 anonteam_0_117 = require("neverlose/clipboard")
local anonteam_0_118 = (function()
	local function anonteam_1_0(arg_2_0, arg_2_1, arg_2_2)
		return anonteam_0_42(anonteam_0_45(arg_2_0, arg_2_1), anonteam_0_46(1, arg_2_2) - 1)
	end

	local function anonteam_1_1(arg_3_0)
		local anonteam_3_0 = {}
		local anonteam_3_1 = {}

		for iter_3_0 = 1, 65 do
			local anonteam_3_2 = anonteam_0_18(anonteam_0_12(arg_3_0, iter_3_0, iter_3_0)) or 32

			if anonteam_3_1[anonteam_3_2] ~= nil then
				anonteam_0_38("invalid alphabet: duplicate character " .. anonteam_0_33(anonteam_3_2), 3)
			end

			anonteam_3_0[iter_3_0 - 1] = anonteam_3_2
			anonteam_3_1[anonteam_3_2] = iter_3_0 - 1
		end

		return anonteam_3_0, anonteam_3_1
	end

	local anonteam_1_2 = {}
	local anonteam_1_3 = {}

	anonteam_1_2.base64, anonteam_1_3.base64 = anonteam_1_1("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=")

	local anonteam_1_4 = {
		__index = function(arg_4_0, arg_4_1)
			local anonteam_4_0 = #arg_4_1

			if anonteam_4_0 == 64 or anonteam_4_0 == 65 then
				anonteam_1_2[arg_4_1], anonteam_1_3[arg_4_1] = anonteam_1_1(arg_4_1)

				return arg_4_0[arg_4_1]
			end
		end
	}

	anonteam_0_41(anonteam_1_2, anonteam_1_4)
	anonteam_0_41(anonteam_1_3, anonteam_1_4)

	local function anonteam_1_5(arg_5_0, arg_5_1)
		arg_5_1 = anonteam_1_2[arg_5_1 or "base64"] or anonteam_0_38("invalid alphabet specified", 2)

		 anonteam_5_0 = {}
		 anonteam_5_1 = 1
		 anonteam_5_2 = #arg_5_0
		 anonteam_5_3 = anonteam_5_2 % 3
		 anonteam_5_4 = {}

		for iter_5_0 = 1, anonteam_5_2 - anonteam_5_3, 3 do
			local anonteam_5_5, anonteam_5_6, anonteam_5_7 = anonteam_0_18(arg_5_0, iter_5_0, iter_5_0 + 2)
			local anonteam_5_8 = anonteam_5_5 * 65536 + anonteam_5_6 * 256 + anonteam_5_7

			anonteam_5_0[anonteam_5_1] = anonteam_0_19(arg_5_1[anonteam_1_0(anonteam_5_8, 18, 6)], arg_5_1[anonteam_1_0(anonteam_5_8, 12, 6)], arg_5_1[anonteam_1_0(anonteam_5_8, 6, 6)], arg_5_1[anonteam_1_0(anonteam_5_8, 0, 6)])
			anonteam_5_1 = anonteam_5_1 + 1
		end

		if anonteam_5_3 == 2 then
			local anonteam_5_9, anonteam_5_10 = anonteam_0_18(arg_5_0, anonteam_5_2 - 1, anonteam_5_2)
			local anonteam_5_11 = anonteam_5_9 * 65536 + anonteam_5_10 * 256

			anonteam_5_0[anonteam_5_1] = anonteam_0_19(arg_5_1[anonteam_1_0(anonteam_5_11, 18, 6)], arg_5_1[anonteam_1_0(anonteam_5_11, 12, 6)], arg_5_1[anonteam_1_0(anonteam_5_11, 6, 6)], arg_5_1[64])
		elseif anonteam_5_3 == 1 then
			local anonteam_5_12 = anonteam_0_18(arg_5_0, anonteam_5_2) * 65536

			anonteam_5_0[anonteam_5_1] = anonteam_0_19(arg_5_1[anonteam_1_0(anonteam_5_12, 18, 6)], arg_5_1[anonteam_1_0(anonteam_5_12, 12, 6)], arg_5_1[64], arg_5_1[64])
		end

		return anonteam_0_55(anonteam_5_0)
	end

	local function anonteam_1_6(arg_6_0, arg_6_1, arg_6_2)
		arg_6_1 = anonteam_1_3[arg_6_1 or "base64"] or anonteam_0_38("invalid alphabet specified", 2)

		local anonteam_6_0 = "[^%w%+%/%=]"

		if arg_6_1 then

			for iter_6_0, iter_6_1 in anonteam_0_35, arg_6_1 do
				if iter_6_1 == 62 then
					anonteam_6_1 = iter_6_0
				elseif iter_6_1 == 63 then
					anonteam_6_2 = iter_6_0
				end
			end

			anonteam_6_0 = anonteam_0_14("[^%%w%%%s%%%s%%=]", anonteam_0_19(anonteam_6_1), anonteam_0_19(anonteam_6_2))
		end

		arg_6_0 = anonteam_0_13(arg_6_0, anonteam_6_0, "")

		anonteam_6_3 = {}
		anonteam_6_4 = 1
		anonteam_6_5 = #arg_6_0
		anonteam_6_6 = anonteam_0_12(arg_6_0, -2) == "==" and 2 or anonteam_0_12(arg_6_0, -1) == "=" and 1 or 0

		for iter_6_2 = 1, anonteam_6_6 > 0 and anonteam_6_5 - 4 or anonteam_6_5, 4 do
			local anonteam_6_7, anonteam_6_8, anonteam_6_9, anonteam_6_10 = anonteam_0_18(arg_6_0, iter_6_2, iter_6_2 + 3)
			local anonteam_6_11 = arg_6_1[anonteam_6_7] * 262144 + arg_6_1[anonteam_6_8] * 4096 + arg_6_1[anonteam_6_9] * 64 + arg_6_1[anonteam_6_10]

			anonteam_6_3[anonteam_6_4] = anonteam_0_19(anonteam_1_0(anonteam_6_11, 16, 8), anonteam_1_0(anonteam_6_11, 8, 8), anonteam_1_0(anonteam_6_11, 0, 8))
			anonteam_6_4 = anonteam_6_4 + 1
		end

		if anonteam_6_6 == 1 then
			local anonteam_6_12, anonteam_6_13, anonteam_6_14 = anonteam_0_18(arg_6_0, anonteam_6_5 - 3, anonteam_6_5 - 1)
			local anonteam_6_15 = arg_6_1[anonteam_6_12] * 262144 + arg_6_1[anonteam_6_13] * 4096 + arg_6_1[anonteam_6_14] * 64

			anonteam_6_3[anonteam_6_4] = anonteam_0_19(anonteam_1_0(anonteam_6_15, 16, 8), anonteam_1_0(anonteam_6_15, 8, 8))
		elseif anonteam_6_6 == 2 then
			local anonteam_6_16, anonteam_6_17 = anonteam_0_18(arg_6_0, anonteam_6_5 - 3, anonteam_6_5 - 2)
			local anonteam_6_18 = arg_6_1[anonteam_6_16] * 262144 + arg_6_1[anonteam_6_17] * 4096

			anonteam_6_3[anonteam_6_4] = anonteam_0_19(anonteam_1_0(anonteam_6_18, 16, 8))
		end

		return anonteam_0_55(anonteam_6_3)
	end

	return {
		encode = anonteam_1_5,
		decode = anonteam_1_6
	}
end)()
local anonteam_0_119 = (function()
	local anonteam_7_0 = {
		221,
		221,
		221
	}
	local anonteam_7_1 = {
		180,
		230,
		30
	}
	local anonteam_7_2 = {
		96,
		160,
		220
	}
	local anonteam_7_3 = {
		218,
		230,
		30
	}

	local function anonteam_7_4(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
		arg_8_0 = anonteam_0_33(arg_8_0)
		arg_8_1, arg_8_2, arg_8_3 = anonteam_0_33(arg_8_1 or "\n"), anonteam_0_33(arg_8_2 or "\t"), anonteam_0_33(arg_8_3 or " ")

		local anonteam_8_0 = 1
		local anonteam_8_1 = 0
		local anonteam_8_2 = 0
		local anonteam_8_3 = #arg_8_0
		local anonteam_8_4 = {}
		
		
		local anonteam_8_7 = anonteam_0_12(arg_8_3, -1) == "\n"

		for iter_8_0 = 1, anonteam_8_3 do
			local anonteam_8_8 = anonteam_0_12(arg_8_0, iter_8_0, iter_8_0)

			if not anonteam_8_6 and (anonteam_8_8 == "{" or anonteam_8_8 == "[") then
				anonteam_8_4[anonteam_8_0] = anonteam_8_5 == ":" and anonteam_8_8 .. arg_8_1 or anonteam_0_20(arg_8_2, anonteam_8_1) .. anonteam_8_8 .. arg_8_1
				anonteam_8_1 = anonteam_8_1 + 1
			elseif not anonteam_8_6 and (anonteam_8_8 == "}" or anonteam_8_8 == "]") then
				anonteam_8_1 = anonteam_8_1 - 1

				if anonteam_8_5 == "{" or anonteam_8_5 == "[" then
					anonteam_8_0 = anonteam_8_0 - 1
					anonteam_8_4[anonteam_8_0] = anonteam_0_20(arg_8_2, anonteam_8_1) .. anonteam_8_5 .. anonteam_8_8
				else
					anonteam_8_4[anonteam_8_0] = arg_8_1 .. anonteam_0_20(arg_8_2, anonteam_8_1) .. anonteam_8_8
				end
			elseif not anonteam_8_6 and anonteam_8_8 == "," then
				anonteam_8_4[anonteam_8_0] = anonteam_8_8 .. arg_8_1
				anonteam_8_2 = -1
			elseif not anonteam_8_6 and anonteam_8_8 == ":" then
				anonteam_8_4[anonteam_8_0] = anonteam_8_8 .. arg_8_3

				if anonteam_8_7 then
					anonteam_8_0 = anonteam_8_0 + 1
					anonteam_8_4[anonteam_8_0] = anonteam_0_20(arg_8_2, anonteam_8_1)
				end
			else
				if anonteam_8_8 == "\"" and anonteam_8_5 ~= "\\" then
					anonteam_8_6 = not anonteam_8_6 and true or nil
				end

				if anonteam_8_1 ~= anonteam_8_2 then
					anonteam_8_4[anonteam_8_0] = anonteam_0_20(arg_8_2, anonteam_8_1)
					anonteam_8_0, anonteam_8_2 = anonteam_8_0 + 1, anonteam_8_1
				end

				anonteam_8_4[anonteam_8_0] = anonteam_8_8
			end

			anonteam_8_5, anonteam_8_0 = anonteam_8_8, anonteam_8_0 + 1
		end

		return anonteam_0_55(anonteam_8_4)
	end

	local function anonteam_7_5(arg_9_0, arg_9_1, arg_9_2, arg_9_3, arg_9_4)
		arg_9_1, arg_9_3, arg_9_4, arg_9_2 = arg_9_1 or anonteam_7_0, arg_9_3 or anonteam_7_1, arg_9_4 or anonteam_7_2, arg_9_2 or anonteam_7_3
		arg_9_0 = anonteam_0_33(arg_9_0)

		local anonteam_9_0 = 1
		local anonteam_9_1 = #arg_9_0
		local anonteam_9_2 = {}
		local anonteam_9_5 = arg_9_1
		local anonteam_9_6 = {}

		for iter_9_0 = 1, anonteam_9_1 do
			local anonteam_9_7 = anonteam_0_12(arg_9_0, iter_9_0, iter_9_0)
			

			if not anonteam_9_4 and (anonteam_9_7 == "{" or anonteam_9_7 == "[") then
				anonteam_9_8 = arg_9_1
				anonteam_9_6[#anonteam_9_6 + 1] = anonteam_9_7
			elseif not anonteam_9_4 and (anonteam_9_7 == "}" or anonteam_9_7 == "]") then
				anonteam_9_8 = arg_9_1

				if anonteam_9_3 == "{" or anonteam_9_3 == "[" then
					anonteam_9_6[#anonteam_9_6 + 1] = anonteam_9_7
				else
					anonteam_9_6[#anonteam_9_6 + 1] = anonteam_9_7
				end
			elseif not anonteam_9_4 and (anonteam_9_7 == "," or anonteam_9_7 == ":") then
				anonteam_9_8 = arg_9_1
				anonteam_9_6[#anonteam_9_6 + 1] = anonteam_9_7
			else
				if anonteam_9_7 == "\"" and anonteam_9_3 ~= "\\" then
					anonteam_9_4 = not anonteam_9_4 and true or nil
					anonteam_9_8 = arg_9_2
				elseif anonteam_9_5 == arg_9_2 then
					anonteam_9_8 = anonteam_9_4 and arg_9_3 or arg_9_4
				elseif anonteam_9_5 == arg_9_1 and anonteam_9_7 ~= " " and anonteam_9_7 ~= "\n" and anonteam_9_7 ~= "\t" then
					anonteam_9_8 = anonteam_9_4 and arg_9_3 or arg_9_4
				end

				anonteam_9_6[#anonteam_9_6 + 1] = anonteam_9_7
			end

			if anonteam_9_8 ~= nil and anonteam_9_8 ~= anonteam_9_5 then
				local anonteam_9_9 = {
					anonteam_0_54(anonteam_9_6, #anonteam_9_6)
				}

				anonteam_9_2[#anonteam_9_2 + 1] = {
					anonteam_9_5[1],
					anonteam_9_5[2],
					anonteam_9_5[3],
					anonteam_0_55(anonteam_9_6)
				}
				anonteam_9_5, anonteam_9_6 = anonteam_9_8, anonteam_9_9
			end

			anonteam_9_3 = anonteam_9_7
		end

		if #anonteam_9_6 > 0 then
			anonteam_9_2[#anonteam_9_2 + 1] = {
				anonteam_9_5[1],
				anonteam_9_5[2],
				anonteam_9_5[3],
				anonteam_0_55(anonteam_9_6)
			}
		end

		return anonteam_9_2
	end

	local function anonteam_7_6(arg_10_0, arg_10_1, arg_10_2, arg_10_3, arg_10_4)
		local anonteam_10_0 = {}
		local anonteam_10_1 = anonteam_7_5(arg_10_0, arg_10_1, arg_10_3, arg_10_4, arg_10_2)
		local anonteam_10_2 = #anonteam_10_1

		for iter_10_0 = 1, anonteam_10_2 do
			 anonteam_10_3 = anonteam_10_1[iter_10_0]
			 anonteam_10_4 = anonteam_10_3[1]
			 anonteam_10_5 = anonteam_10_3[2]
			 anonteam_10_6 = anonteam_10_3[3]
			 anonteam_10_7 = anonteam_10_3[4]

			anonteam_10_0[#anonteam_10_0 + 1] = "\a"
			anonteam_10_0[#anonteam_10_0 + 1] = anonteam_0_95(anonteam_0_88(anonteam_10_4, anonteam_10_5, anonteam_10_6, 255))
			anonteam_10_0[#anonteam_10_0 + 1] = anonteam_10_7

			if iter_10_0 == anonteam_10_2 then
				anonteam_10_0[#anonteam_10_0 + 1] = "\n"
			end
		end

		anonteam_10_0[#anonteam_10_0] = nil

		local anonteam_10_8 = anonteam_0_55(anonteam_10_0)

		anonteam_0_65(anonteam_10_8)
	end

	return {
		format = anonteam_7_4,
		highlight = anonteam_7_5,
		print_highlighted = anonteam_7_6
	}
end)()

local function anonteam_0_126(arg_11_0, arg_11_1, arg_11_2, arg_11_3)
	arg_11_0 = arg_11_0 / arg_11_3 * 2

	if arg_11_0 < 1 then
		return arg_11_2 * 0.5 * anonteam_0_24(arg_11_0, 2) + arg_11_1
	end

	return -arg_11_2 * 0.5 * ((arg_11_0 - 1) * (arg_11_0 - 3) - 1) + arg_11_1
end

local function anonteam_0_127(arg_12_0, arg_12_1, arg_12_2, arg_12_3)
	arg_12_0 = arg_12_0 / arg_12_3 - 1

	return -arg_12_2 * (anonteam_0_24(arg_12_0, 4) - 1) + arg_12_1
end

local function anonteam_0_128(arg_13_0, arg_13_1, arg_13_2, arg_13_3)
	return -arg_13_2 * 0.5 * (anonteam_0_23(anonteam_0_32 * arg_13_0 / arg_13_3) - 1) + arg_13_1
end

local function anonteam_0_129(arg_14_0, arg_14_1, arg_14_2, arg_14_3)
	arg_14_0 = arg_14_0 / arg_14_3

	return arg_14_2 * anonteam_0_24(arg_14_0, 3) + arg_14_1
end

local function anonteam_0_130(arg_15_0, arg_15_1, arg_15_2, arg_15_3)
	return arg_15_2 * anonteam_0_22(arg_15_0 / arg_15_3 * (anonteam_0_32 * 0.5)) + arg_15_1
end

local function anonteam_0_131(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
	if arg_16_0 == 0 then
		return arg_16_1
	end

	return arg_16_2 * anonteam_0_24(2, 10 * (arg_16_0 / arg_16_3 - 1)) + arg_16_1 - arg_16_2 * 0.001
end

local anonteam_0_133 = {}

for iter_0_0 = 1, 256 do
	local anonteam_0_134 = iter_0_0 - 1

	for iter_0_1 = 1, 8 do
		local anonteam_0_135 = -anonteam_0_42(anonteam_0_134, 1)

		anonteam_0_134 = anonteam_0_44(anonteam_0_45(anonteam_0_134, 1), anonteam_0_42(3988292384, anonteam_0_135))
	end

	anonteam_0_133[iter_0_0] = anonteam_0_134
end

local function anonteam_0_136(arg_17_0)
	local anonteam_17_0 = 4294967295

	for iter_17_0 = 1, #arg_17_0 do
		local anonteam_17_1 = anonteam_0_18(arg_17_0, iter_17_0)

		anonteam_17_0 = anonteam_0_44(anonteam_0_45(anonteam_17_0, 8), anonteam_0_133[anonteam_0_42(anonteam_0_44(anonteam_17_0, anonteam_17_1), 255) + 1])
	end

	return anonteam_0_42(anonteam_0_43(anonteam_17_0), 4294967295)
end

local function anonteam_0_140(arg_18_0)
	if anonteam_0_36(arg_18_0) ~= "table" then
		return arg_18_0
	end

	local anonteam_18_0 = {}

	for iter_18_0, iter_18_1 in anonteam_0_35, arg_18_0 do
		anonteam_18_0[iter_18_0] = anonteam_0_140(iter_18_1)
	end

	return anonteam_18_0
end

local function anonteam_0_141(arg_19_0, arg_19_1)
	local anonteam_19_0 = {}

	for iter_19_0, iter_19_1 in anonteam_0_35, arg_19_0 do
		local anonteam_19_1, anonteam_19_2 = arg_19_1(iter_19_0, iter_19_1)

		anonteam_19_0[anonteam_19_1] = anonteam_19_2
	end

	return anonteam_19_0
end

local function anonteam_0_142(arg_20_0, arg_20_1, arg_20_2)
	if arg_20_1 == nil then
		arg_20_1 = {}
		arg_20_2 = ""
	end

	for iter_20_0, iter_20_1 in anonteam_0_35, arg_20_0 do
		local anonteam_20_0 = arg_20_2 .. iter_20_0

		if anonteam_0_36(iter_20_1) == "table" and #iter_20_1 == 0 then
			anonteam_0_142(iter_20_1, arg_20_1, anonteam_20_0 .. ".")
		else
			arg_20_1[anonteam_20_0] = iter_20_1
		end
	end

	return arg_20_1
end

local anonteam_0_145 = anonteam_0_118.decode
local anonteam_0_146 = anonteam_0_118.encode
local anonteam_0_147 = files.read
local anonteam_0_148 = files.write

files.create_folder("nl\\scripts\\grenade helper")

local anonteam_0_149 = "nl\\scripts\\grenade helper\\database.msg"

local function anonteam_0_150()
	local anonteam_21_0 = anonteam_0_147(anonteam_0_149)
	local anonteam_21_1, anonteam_21_2 = anonteam_0_37(anonteam_0_145, anonteam_21_0, anonteam_0_113)
	local anonteam_21_3, anonteam_21_4 = anonteam_0_37(anonteam_0_60, anonteam_21_2)

	if not anonteam_21_3 or anonteam_0_36(anonteam_21_4) ~= "table" then
		anonteam_21_4 = {}
	end

	anonteam_21_4.locations = anonteam_21_4.locations or {}
	anonteam_21_4.active_locations = anonteam_21_4.active_locations or {
		true,
		true,
		true
	}
	anonteam_21_4.cloud_active_locations = anonteam_21_4.cloud_active_locations or {}
	anonteam_21_4.map_patterns = anonteam_21_4.map_patterns or {}

	return anonteam_21_4
end

local function anonteam_0_151(arg_22_0)
	if anonteam_0_36(arg_22_0) ~= "table" then
		return
	end

	local anonteam_22_0 = anonteam_0_59(arg_22_0)
	local anonteam_22_1 = anonteam_0_146(anonteam_22_0, anonteam_0_113)

	anonteam_0_148(anonteam_0_149, anonteam_22_1)
end

local anonteam_0_153 = {}
local anonteam_0_155 = panorama.SteamOverlayAPI.OpenExternalBrowserURL

local function anonteam_0_156(arg_23_0)
	return function()
		anonteam_0_155(arg_23_0)
	end
end

local anonteam_0_158 = ui.create("\a{Link Active}\xEF\x80\x87", "\n main", 1)

anonteam_0_158:label("\a{Link Active}\xEF\x80\x87\aDEFAULT   " .. anonteam_0_108)
anonteam_0_158:label("\a{Link Active}\xEF\x84\xA6\aDEFAULT   2.1 \a{Link Active} " .. (anonteam_0_0 and "Beta" or "Stable"))

if not anonteam_0_0 then
	anonteam_0_158:button("\a{Link Active}\xEF\x8C\xB6\aDEFAULT  Beta Version", anonteam_0_156("https://neverlose.cc/market/item?id="), true)
end

local anonteam_0_160 = ui.create("\a{Link Active}\xEF\x80\x87", "\n discord", 1)

anonteam_0_160:button("\a{Link Active}\xEF\x8E\x92\aDEFAULT Discord", anonteam_0_156("https://discord.gg/"), true)

local function anonteam_0_161(arg_25_0)
	if arg_25_0 == nil or #arg_25_0 == 0 then
		return
	end

	anonteam_0_117.set(arg_25_0)
	anonteam_0_65("\a{Link Active}[Helper] \aDEFAULTYour verification code: \a{Link Active}" .. arg_25_0 .. "\aDEFAULT (Copied to clipboard)")
end

anonteam_0_160:button("\a{Link Active}\xEF\x83\x81\aDEFAULT Get Verification Code", function()
	local anonteam_26_0 = anonteam_0_0 and "grenade-helper-beta" or "grenade-helper"
	local anonteam_26_1 = anonteam_0_33(anonteam_0_29(anonteam_0_26(anonteam_0_136(anonteam_0_108) + anonteam_0_50())))
	local anonteam_26_2 = anonteam_0_108 .. ":" .. anonteam_26_0 .. ":" .. anonteam_26_1
	local anonteam_26_3 = anonteam_0_118.encode(anonteam_26_2, anonteam_0_113)

	anonteam_0_63("https://northon.dev/neverlose/discord/get_verification_code.php?data=" .. anonteam_26_3, nil, anonteam_0_161)
end, true)

local anonteam_0_163 = ui.create("\a{Link Active}\xEF\x80\x87", "best world editor ~ remaper", 1)

anonteam_0_163:button("\xEF\x95\xBD Best World Edtior ~ Remaper", anonteam_0_156("https://neverlose.cc/market/item?id="))

local anonteam_0_165 = ui.create("\a{Link Active}\xEF\x80\x93", "\n settings", 1)
local anonteam_0_166 = {
	hotkey = anonteam_0_165:hotkey("\a{Link Active}\xEE\x96\xA2\aDEFAULT  Hotkey")
}
local anonteam_0_167 = anonteam_0_165:combo("\a{Link Active}\xEF\x81\x9B\aDEFAULT   Aimbot", "Off", "Legit", "Rage"):set_callback(function(arg_27_0)
	anonteam_0_166.aimbot = anonteam_0_104(arg_27_0)
end, true)
local anonteam_0_168 = anonteam_0_167:create()
local anonteam_0_169 = anonteam_0_168:slider("\a{Link Active}\xEF\x83\x9A\aDEFAULT  Field Of View", 40, 180, 100, 1, "\xC2\xB0"):set_callback(function(arg_28_0)
	anonteam_0_166.fov = anonteam_0_104(arg_28_0)
end, true)
local anonteam_0_170 = anonteam_0_168:slider("\a{Link Active}\xEF\x83\x9A\aDEFAULT  Smooth", 1, 100, 50, 1, "%"):set_callback(function(arg_29_0)
	anonteam_0_166.smooth = anonteam_0_104(arg_29_0) * 0.1
end, true)

anonteam_0_167:set_callback(function(arg_30_0)
	local anonteam_30_0 = anonteam_0_104(arg_30_0)

	anonteam_0_169:visibility(anonteam_30_0 ~= "Off")
	anonteam_0_170:visibility(anonteam_30_0 == "Legit")
end, true)
anonteam_0_165:selectable("\a{Link Active}\xEF\x82\x85\aDEFAULT  Options", "\a{Link Active}\xEE\x93\xA2\aDEFAULT   Automatic Throw", "\a{Link Active}\xEF\x8F\xAD   Exploit:\aDEFAULT Force Defensive", "\a{Link Active}\xEE\x81\x85   Exploit:\aDEFAULT Recovery Teleport"):set_callback(function(arg_31_0)
	anonteam_0_166.automatic_throw, anonteam_0_166.force_defensive, anonteam_0_166.recovery_teleport = anonteam_0_104(arg_31_0, 1), anonteam_0_104(arg_31_0, 2), anonteam_0_104(arg_31_0, 3)
end, true)

anonteam_0_153.settings = anonteam_0_166


local anonteam_0_172 = ui.create("\a{Link Active}\xEF\x80\x93", "customization", 1)
local anonteam_0_173 = {}

anonteam_0_173.options = anonteam_0_172:selectable("\n customization", "\a{Link Active}\xEF\x81\xB0\aDEFAULT  Show Behind Walls", "\a{Link Active}\xEF\x83\x85\aDEFAULT   Hide Duplicates", "\a{Link Active}\xEE\x92\x81\aDEFAULT  Hide Icon With Text"):set_callback(function(arg_32_0)
	anonteam_0_173.show_behind_walls, anonteam_0_173.hide_duplicates, anonteam_0_173.hide_icon_with_text = anonteam_0_104(arg_32_0, 1), anonteam_0_104(arg_32_0, 2), anonteam_0_104(arg_32_0, 3)
end, true)

local anonteam_0_174 = ui.get_style("Link Active")

anonteam_0_173.options:color_picker(anonteam_0_174):set_callback(function(arg_33_0)
	local anonteam_33_0 = anonteam_0_104(arg_33_0)
	local anonteam_33_1 = anonteam_0_28(40, anonteam_33_0.a) / 255

	anonteam_0_173.color, anonteam_0_173.alpha = anonteam_33_0, anonteam_33_1
end, true)

anonteam_0_153.customization = anonteam_0_173


local anonteam_0_176 = ui.create("\a{Link Active}\xEF\x80\x93", "\n grenade release", 1)
local anonteam_0_177 = {
	enabled = anonteam_0_176:switch("\a{Link Active}\xEF\x87\xA2\aDEFAULT   Grenade Release"):tooltip("Releases the grenade is there's a possibility of dealing damage to an enemy\n\n\aAFAF62FF" .. ui.get_icon("triangle-exclamation") .. "  This feature is a work in progress and may not work as intended")
}
local anonteam_0_178 = anonteam_0_177.enabled:create()

anonteam_0_177.enabled:set_callback(function(arg_34_0)
	anonteam_0_178:visibility(anonteam_0_104(arg_34_0))
end, true)
anonteam_0_178:switch("\a{Link Active}\xEF\x83\x9A\aDEFAULT  Disable in Air", true):set_callback(function(arg_35_0)
	anonteam_0_177.disable_in_air = anonteam_0_104(arg_35_0)
end, true)
anonteam_0_178:slider("\a{Link Active}\xEF\x83\x9A\aDEFAULT  High Explosive", 0, 51, 50, 1, function(arg_36_0)
	if arg_36_0 == 0 then
		return "Off"
	end

	if arg_36_0 == 51 then
		return "Lethal"
	end

	return arg_36_0 .. " dmg"
end):set_callback(function(arg_37_0)
	anonteam_0_177.hegrenade = anonteam_0_104(arg_37_0)
end, true)
anonteam_0_178:slider("\a{Link Active}\xEF\x83\x9A\aDEFAULT  Flashbang", 0, 90, 60, 1, function(arg_38_0)
	if arg_38_0 == 0 then
		return "Off"
	end

	return arg_38_0 .. "%"
end):set_callback(function(arg_39_0)
	anonteam_0_177.flashbang = anonteam_0_104(arg_39_0)
end, true)
anonteam_0_178:slider("\a{Link Active}\xEF\x83\x9A\aDEFAULT  Molotov", 0, 30, 20, 1, function(arg_40_0)
	if arg_40_0 == 0 then
		return "Off"
	end

	return arg_40_0 * 0.1 .. "m"
end):set_callback(function(arg_41_0)
	anonteam_0_177.molotov = anonteam_0_104(arg_41_0) * 0.1
end, true)

anonteam_0_153.grenade_release = anonteam_0_177


local anonteam_0_180 = ui.create("\a{Link Active}\xEF\x80\x93", "best world editor ~ remaper", 1)

anonteam_0_180:button("\xEF\x95\xBD Best World Edtior ~ Remaper", anonteam_0_156("https://neverlose.cc/market/item?id="))

local anonteam_0_181 = ui.create("\a{Link Active}\xEF\x80\x93", "best world editor ~ remaper ", 2)

anonteam_0_63("https://northon.dev/neverlose/remaper/world_editor.jpg", nil, function(arg_42_0)
	if arg_42_0 == nil or #arg_42_0 == 0 then
		return
	end

	local anonteam_42_0 = render.load_image(arg_42_0)

	anonteam_0_163:texture(anonteam_42_0, anonteam_0_69(480, 270))
	anonteam_0_180:texture(anonteam_42_0, anonteam_0_69(280, 175))
end)


local anonteam_0_183 = ui.create("\a{Link Active}\xEF\x80\x93", "\n types", 2)
local anonteam_0_184 = {
	"weapon_smokegrenade",
	"weapon_flashbang",
	"weapon_decoy",
	"weapon_hegrenade",
	"weapon_molotov",
	"weapon_wallbang",
	"weapon_knife"
}
local anonteam_0_185 = {
	selection = anonteam_0_183:listable("\n types", "\a{Link Active}\xEF\x9D\xA0\aDEFAULT  Smoke", "\a{Link Active}\xEF\x81\xB0\aDEFAULT  Flashbang", " \a{Link Active}\xEF\x9E\xB8\aDEFAULT   Decoy", " \a{Link Active}\xEF\x87\xA2\aDEFAULT  High Explosive", " \a{Link Active}\xEF\x81\xAD\aDEFAULT   Molotov", "\a{Link Active}\xEF\x9B\xAB\aDEFAULT   Wallbang", "\a{Link Active}\xEF\x9C\x89\aDEFAULT  Movement")
}

anonteam_0_185.selection:set_callback(function(arg_43_0)
	for iter_43_0 = 1, #anonteam_0_184 do
		local anonteam_43_0 = anonteam_0_184[iter_43_0]

		anonteam_0_185[anonteam_43_0] = anonteam_0_104(arg_43_0, iter_43_0)
	end
end, true)

anonteam_0_153.types = anonteam_0_185

local anonteam_0_187 = ui.create("\a{Link Active}\xEF\x95\xB0", "\n locations", 1)
local anonteam_0_188 = {
	selection = anonteam_0_187:list("\n selection"),
	enabled = anonteam_0_187:switch("Enabled"),
	new_source_name = anonteam_0_187:input("\n name"):reset(),
	create_label = anonteam_0_187:label("Create"),
	create = anonteam_0_187:button("\a{Link Active}    \xEF\x83\x87    ", nil, true):tooltip("Create"),
	label = anonteam_0_187:label("Edit & Delete"),
	edit = anonteam_0_187:button("\a{Link Active}   \xEF\x81\x84   ", nil, true):tooltip("Edit"),
	delete = anonteam_0_187:button("\a{Link Active}   \xEF\x87\xB8   ", nil, true):tooltip("Delete"),
	delete_confirm = anonteam_0_187:button("\a{Link Active}   \xEE\x8A\xAF   ", nil, true):tooltip("Confirm"),
	delete_cancel = anonteam_0_187:button("\a{Link Active}   \xEE\x8A\xAE   ", nil, true):tooltip("Cancel")
}

function anonteam_0_188.on_visibility()
	local anonteam_44_0 = anonteam_0_104(anonteam_0_188.selection)
	local anonteam_44_1 = anonteam_44_0 == #anonteam_0_188.selection:list()

	anonteam_0_188.enabled:visibility(not anonteam_44_1)
	anonteam_0_188.new_source_name:visibility(anonteam_44_1)
	anonteam_0_188.create_label:visibility(anonteam_44_1)
	anonteam_0_188.create:visibility(anonteam_44_1)
	anonteam_0_188.delete_confirm:visibility(false)
	anonteam_0_188.delete_cancel:visibility(false)
	anonteam_0_188.label:visibility(not anonteam_44_1 and anonteam_44_0 > 3)
	anonteam_0_188.edit:visibility(not anonteam_44_1 and anonteam_44_0 > 3)
	anonteam_0_188.delete:visibility(not anonteam_44_1 and anonteam_44_0 > 3)
end

anonteam_0_188.selection:set_callback(anonteam_0_188.on_visibility, true)
anonteam_0_188.delete:set_callback(function()
	anonteam_0_188.delete_confirm:visibility(true)
	anonteam_0_188.delete_cancel:visibility(true)
	anonteam_0_188.delete:visibility(false)
end)
anonteam_0_188.delete_confirm:set_callback(function()
	anonteam_0_188.delete_confirm:visibility(false)
	anonteam_0_188.delete_cancel:visibility(false)
	anonteam_0_188.delete:visibility(true)
end)
anonteam_0_188.delete_cancel:set_callback(function()
	anonteam_0_188.delete_confirm:visibility(false)
	anonteam_0_188.delete_cancel:visibility(false)
	anonteam_0_188.delete:visibility(true)
end)

anonteam_0_188.search = anonteam_0_187:input("\n search"):reset()
anonteam_0_188.locations_selection = anonteam_0_187:list("\n locations selection")
anonteam_0_188.all_maps = anonteam_0_187:switch("All Maps")
anonteam_0_188.clipboard = anonteam_0_187:label("Clipboard")
anonteam_0_188.import = anonteam_0_187:button("\a{Link Active}   \xEF\x95\xAF    ", nil, true):tooltip("Import")
anonteam_0_188.export = anonteam_0_187:button("\a{Link Active}    \xEF\x95\xAE   ", nil, true):tooltip("Export")
anonteam_0_188.delete_location_label = anonteam_0_187:label("Delete & Back")
anonteam_0_188.back_label = anonteam_0_187:label("Back")
anonteam_0_188.delete_location = anonteam_0_187:button("\a{Link Active}    \xEF\x87\xB8    ", nil, true):tooltip("Delete")
anonteam_0_188.delete_location_confirm = anonteam_0_187:button("\a{Link Active}    \xEE\x8A\xAF    ", nil, true):tooltip("Confirm")
anonteam_0_188.delete_location_cancel = anonteam_0_187:button("\a{Link Active}    \xEE\x8A\xAE    ", nil, true):tooltip("Cancel")
anonteam_0_188.back = anonteam_0_187:button("\a{Link Active}   \xEF\x8B\xAA    ", nil, true):tooltip("Back")

anonteam_0_188.edit:set_callback(function()
	anonteam_0_188.search:reset()
	anonteam_0_188.edit:visibility(false)
	anonteam_0_188.back:visibility(true)
	anonteam_0_188.selection:visibility(false)
	anonteam_0_188.enabled:visibility(false)
	anonteam_0_188.delete_confirm:visibility(false)
	anonteam_0_188.delete_cancel:visibility(false)
	anonteam_0_188.label:visibility(false)
	anonteam_0_188.delete:visibility(false)
	anonteam_0_188.search:visibility(true)
	anonteam_0_188.locations_selection:visibility(true)
	anonteam_0_188.all_maps:visibility(true)
	anonteam_0_188.clipboard:visibility(true)
	anonteam_0_188.import:visibility(true)
	anonteam_0_188.export:visibility(true)
	anonteam_0_188.delete_location_confirm:visibility(false)
	anonteam_0_188.delete_location_cancel:visibility(false)
	anonteam_0_188.delete_location_label:visibility(true)
	anonteam_0_188.back_label:visibility(false)
	anonteam_0_188.delete_location:visibility(true)
end)
anonteam_0_188.locations_selection:set_callback(function(arg_49_0)
	local anonteam_49_0 = anonteam_0_104(arg_49_0)
	local anonteam_49_1 = not anonteam_0_188.edit:visibility()

	anonteam_0_188.delete_location_confirm:visibility(false)
	anonteam_0_188.delete_location_cancel:visibility(false)
	anonteam_0_188.delete_location_label:visibility(anonteam_49_0 > 1 and anonteam_49_1)
	anonteam_0_188.back_label:visibility(anonteam_49_0 == 1 and anonteam_49_1)
	anonteam_0_188.delete_location:visibility(anonteam_49_0 > 1 and anonteam_49_1)
end, true)
anonteam_0_188.delete_location:set_callback(function()
	anonteam_0_188.delete_location_confirm:visibility(true)
	anonteam_0_188.delete_location_cancel:visibility(true)
	anonteam_0_188.delete_location:visibility(false)
end)
anonteam_0_188.delete_location_confirm:set_callback(function()
	anonteam_0_188.delete_location_confirm:visibility(false)
	anonteam_0_188.delete_location_cancel:visibility(false)
	anonteam_0_188.delete_location:visibility(true)
end)
anonteam_0_188.delete_location_cancel:set_callback(function()
	anonteam_0_188.delete_location_confirm:visibility(false)
	anonteam_0_188.delete_location_cancel:visibility(false)
	anonteam_0_188.delete_location:visibility(true)
end)
anonteam_0_188.back:set_callback(function()
	anonteam_0_188.search:reset()
	anonteam_0_188.label:visibility(true)
	anonteam_0_188.edit:visibility(true)
	anonteam_0_188.back:visibility(false)
	anonteam_0_188.selection:visibility(true)
	anonteam_0_188.search:visibility(false)
	anonteam_0_188.locations_selection:visibility(false)
	anonteam_0_188.all_maps:visibility(false)
	anonteam_0_188.clipboard:visibility(false)
	anonteam_0_188.import:visibility(false)
	anonteam_0_188.export:visibility(false)
	anonteam_0_188.delete_location_confirm:visibility(false)
	anonteam_0_188.delete_location_cancel:visibility(false)
	anonteam_0_51(0, anonteam_0_188.back_label.visibility, anonteam_0_188.back_label, false)
	anonteam_0_188.delete_location_label:visibility(false)
	anonteam_0_188.delete_location:visibility(false)
	anonteam_0_188.on_visibility()
end, true)

anonteam_0_153.locations = anonteam_0_188


local anonteam_0_190 = ui.create("\a{Link Active}\xEF\x95\xB0", "\n builder", 2)

anonteam_0_153.locations.edit:set_callback(function()
	anonteam_0_190:visibility(true)
end)
anonteam_0_153.locations.back:set_callback(function()
	anonteam_0_190:visibility(false)
end, true)

local anonteam_0_191 = {
	type = anonteam_0_190:combo("\n type", "Grenade", "Wallbang", "Movement"),
	name = anonteam_0_190:input("Name"):reset(),
	description = anonteam_0_190:input("Description"):reset(),
	jump = anonteam_0_190:switch("Jump"),
	run = anonteam_0_190:combo("Run", "Disabled", "Forward", "Left", "Right", "Back", "Custom")
}
local anonteam_0_192 = anonteam_0_191.run:create()

anonteam_0_191.run_custom = anonteam_0_192:slider("Direction", -180, 180, 0)
anonteam_0_191.run_duration = anonteam_0_192:slider("Duration", 0, 256, 20)
anonteam_0_191.run_walk = anonteam_0_192:switch("Walk (Shift)")

anonteam_0_191.run:set_callback(function(arg_56_0)
	local anonteam_56_0 = anonteam_0_104(arg_56_0)

	anonteam_0_192:visibility(anonteam_56_0 ~= "Disabled")
	anonteam_0_191.run_custom:visibility(anonteam_56_0 == "Custom")
end, true)

anonteam_0_191.recovery = anonteam_0_190:combo("Recovery", "Disabled", "Forward", "Left", "Right", "Back", "Custom")

local anonteam_0_193 = anonteam_0_191.recovery:create()

anonteam_0_191.recovery_custom = anonteam_0_193:slider("Direction", -180, 180, 0)
anonteam_0_191.recovery_bunnyhop = anonteam_0_193:switch("Bunny Hop")

anonteam_0_191.recovery:set_callback(function(arg_57_0)
	local anonteam_57_0 = anonteam_0_104(arg_57_0)

	anonteam_0_193:visibility(anonteam_57_0 ~= "Disabled")
	anonteam_0_191.recovery_custom:visibility(anonteam_57_0 == "Custom")
end, true)

anonteam_0_191.strength = anonteam_0_190:combo("Strength", "Left", "Left / Right", "Right")
anonteam_0_191.delay = anonteam_0_190:slider("Delay", 0, 64, 0, 1, function(arg_58_0)
	if arg_58_0 == 0 then
		return "Off"
	end
end)

local anonteam_0_194 = ui.create("\a{Link Active}\xEF\x95\xB0", "\n buttons", 2)

anonteam_0_153.locations.edit:set_callback(function()
	anonteam_0_194:visibility(true)
end)
anonteam_0_153.locations.back:set_callback(function()
	anonteam_0_194:visibility(false)
end, true)

anonteam_0_191.record = anonteam_0_194:switch("Record")
anonteam_0_191.set_location_teleport_label, anonteam_0_191.teleport_label = anonteam_0_194:label("Set Location & Teleport"), anonteam_0_194:label("Teleport")
anonteam_0_191.set_location = anonteam_0_194:button("\a{Link Active}   \xEF\x82\xAD   ", nil, true):tooltip("Set Position, Angles, Weapon")
anonteam_0_191.teleport = anonteam_0_194:button("\a{Link Active}   \xEE\x81\x85   ", nil, true):tooltip("Teleport")
anonteam_0_191.export_save = anonteam_0_194:label("Export & Save")
anonteam_0_191.export = anonteam_0_194:button("\a{Link Active}   \xEF\x95\xAE   ", nil, true):tooltip("Export")
anonteam_0_191.save = anonteam_0_194:button("\a{Link Active}   \xEF\x83\x87   ", nil, true):tooltip("Save")

anonteam_0_191.type:set_callback(function(arg_61_0)
	local anonteam_61_0 = anonteam_0_104(arg_61_0)
	local anonteam_61_1 = anonteam_61_0 == "Grenade"

	anonteam_61_2 = anonteam_61_0 == "Wallbang"

	local anonteam_61_3 = anonteam_61_0 == "Movement"

	anonteam_0_191.jump:visibility(anonteam_61_1)
	anonteam_0_191.run:visibility(anonteam_61_1)
	anonteam_0_191.recovery:visibility(anonteam_61_1)
	anonteam_0_191.strength:visibility(anonteam_61_1)
	anonteam_0_191.delay:visibility(anonteam_61_1)
	anonteam_0_191.record:visibility(anonteam_61_3)
	anonteam_0_191.set_location_teleport_label:visibility(not anonteam_61_3)
	anonteam_0_191.set_location:visibility(not anonteam_61_3)
	anonteam_0_191.teleport_label:visibility(anonteam_61_3)
end, true)

local anonteam_0_195 = ui.create("\a{Link Active}\xEF\x95\xB0", "\n hotkeys", 2)

anonteam_0_153.locations.edit:set_callback(function()
	anonteam_0_195:visibility(true)
end)
anonteam_0_153.locations.back:set_callback(function()
	anonteam_0_195:visibility(false)
end, true)

anonteam_0_191.set_location_hotkey = anonteam_0_195:hotkey("Set Location"):tooltip("Set Position, Angles, Weapon")
anonteam_0_191.teleport_hotkey = anonteam_0_195:hotkey("Teleport"):tooltip("Teleport")
anonteam_0_153.builder = anonteam_0_191

local anonteam_0_197 = ui.create("\a{Link Active}\xEF\x95\xB0", "\n cloud sources", 2)
local anonteam_0_198 = {}

anonteam_0_153.locations.edit:set_callback(function()
	anonteam_0_197:visibility(false)
end)
anonteam_0_153.locations.back:set_callback(function()
	anonteam_0_197:visibility(true)
end)

local anonteam_0_199 = not anonteam_0_0

if anonteam_0_199 then
	anonteam_0_197:button("Cloud Sources Is Available in Beta Version", anonteam_0_156("https://neverlose.cc/market/item?id="), false)
end

anonteam_0_198.selection = anonteam_0_197:list("\n selection"):disabled(anonteam_0_199)

if anonteam_0_0 then
	anonteam_0_198.enabled = anonteam_0_197:switch("Enabled")

	anonteam_0_198.selection:set_callback(function(arg_66_0)
		anonteam_0_198.enabled:visibility(anonteam_0_104(arg_66_0) > 1)
	end, true)

	anonteam_0_198.update_selection = anonteam_0_197:list("\n update selection")
	anonteam_0_198.upload_selection = anonteam_0_197:list("\n upload selection")
	anonteam_0_198.update_delete_label = anonteam_0_197:label("Update & Delete")
	anonteam_0_198.delete_label = anonteam_0_197:label("Delete")
	anonteam_0_198.update = anonteam_0_197:button("\a{Link Active}   \xEF\x83\xAE   ", nil, true):tooltip("Update")
	anonteam_0_198.delete = anonteam_0_197:button("\a{Link Active}   \xEF\x87\xB8   ", nil, true):tooltip("Delete")
	anonteam_0_198.delete_confirm = anonteam_0_197:button("\a{Link Active}   \xEE\x8A\xAF   ", nil, true):tooltip("Confirm")
	anonteam_0_198.delete_cancel = anonteam_0_197:button("\a{Link Active}   \xEE\x8A\xAE   ", nil, true):tooltip("Cancel")
	anonteam_0_198.upload_label = anonteam_0_197:label("Upload")
	anonteam_0_198.upload = anonteam_0_197:button("\a{Link Active}   \xEF\x82\x93   ", nil, true):tooltip("Upload")
	anonteam_0_198.upload_text = anonteam_0_197:label("\a{Link Active}\xEF\x81\xB1\aDEFAULT You don't have any locations that you can upload to the cloud")
end

anonteam_0_198.market_locations_label = anonteam_0_197:label("Market Locations"):visibility(false)
anonteam_0_198.market_locations = anonteam_0_198.market_locations_label:create()

if anonteam_0_0 then
	anonteam_0_198.delete:set_callback(function()
		anonteam_0_198.delete:visibility(false)
		anonteam_0_198.delete_confirm:visibility(true)
		anonteam_0_198.delete_cancel:visibility(true)
	end)
	anonteam_0_198.delete_confirm:set_callback(function()
		anonteam_0_198.delete:visibility(true)
		anonteam_0_198.delete_confirm:visibility(false)
		anonteam_0_198.delete_cancel:visibility(false)
	end)
	anonteam_0_198.delete_cancel:set_callback(function()
		anonteam_0_198.delete:visibility(true)
		anonteam_0_198.delete_confirm:visibility(false)
		anonteam_0_198.delete_cancel:visibility(false)
	end)
end

anonteam_0_153.cloud_sources = anonteam_0_198

local anonteam_0_201 = ui.create("\a{Link Active}\xEF\x95\xB0", "\n map patterns", 1)

anonteam_0_153.locations.edit:set_callback(function()
	anonteam_0_201:visibility(false)
end)
anonteam_0_153.locations.back:set_callback(function()
	anonteam_0_201:visibility(true)
end)

local anonteam_0_202 = {
	selection = anonteam_0_201:list("\n selection", "Edit Current Map Pattern"),
	new_map_name = anonteam_0_201:input("\n new map name"):reset(),
	save_label = anonteam_0_201:label("Save"),
	current_map_pattern = anonteam_0_201:button("\n map pattern", nil, true):tooltip("Current Map Pattern"),
	save = anonteam_0_201:button("\a{Link Active}    \xEF\x83\x87    ", nil, true):tooltip("Save"),
	delete_label = anonteam_0_201:label("Delete"),
	delete = anonteam_0_201:button("\a{Link Active}    \xEF\x87\xB8    ", nil, true):tooltip("Delete")
}

function anonteam_0_202.on_visibility()
	local anonteam_72_0 = anonteam_0_202.selection:list()
	local anonteam_72_1 = anonteam_0_104(anonteam_0_202.selection)

	anonteam_72_1 = anonteam_72_1 > #anonteam_72_0 and #anonteam_72_0 or anonteam_72_1

	local anonteam_72_2 = anonteam_72_1 == 1

	anonteam_0_202.new_map_name:visibility(anonteam_72_2)
	anonteam_0_202.save_label:visibility(anonteam_72_2)
	anonteam_0_202.save:visibility(anonteam_72_2)
	anonteam_0_202.current_map_pattern:visibility(anonteam_72_2)
	anonteam_0_202.delete_label:visibility(not anonteam_72_2)
	anonteam_0_202.delete:visibility(not anonteam_72_2)
end

anonteam_0_202.selection:set_callback(anonteam_0_202.on_visibility)

anonteam_0_153.map_patterns = anonteam_0_202

local anonteam_0_204 = ui.get_alpha
local anonteam_0_205 = ui.get_style
local anonteam_0_206 = ui.sidebar
local anonteam_0_207 = " Grenade Helper"
local anonteam_0_208 = #anonteam_0_207 + 1

local function anonteam_0_209()
	if anonteam_0_204() == 0 then
		return
	end

	local anonteam_73_0 = {}
	local anonteam_73_1 = anonteam_0_205("Link Active")
	local anonteam_73_2 = anonteam_73_1 * 0.3

	for iter_73_0 = 1, anonteam_0_208 do
		local anonteam_73_4 = (iter_73_0 - 1) / anonteam_0_208
		local anonteam_73_5 = anonteam_0_26(anonteam_0_22(anonteam_0_68.realtime % anonteam_0_32 + anonteam_73_4 * 2))
		local anonteam_73_6 = anonteam_0_94(anonteam_73_2, anonteam_73_1, anonteam_73_5)

		anonteam_73_6.a = 255

		local anonteam_73_7 = "\a" .. anonteam_0_95(anonteam_73_6)

		if iter_73_0 == 1 then
			anonteam_73_3 = anonteam_73_7
		else
			local anonteam_73_8 = anonteam_0_12(anonteam_0_207, iter_73_0, iter_73_0)

			anonteam_73_0[#anonteam_73_0 + 1] = anonteam_73_7 .. anonteam_73_8
		end
	end

	local anonteam_73_9 = anonteam_0_55(anonteam_73_0)

	anonteam_0_206(anonteam_73_9, anonteam_73_3 .. "\xEF\x87\xA2")
end

anonteam_0_67.render(anonteam_0_209)

local function anonteam_0_210(...)
	local anonteam_74_0 = {
		...
	}
	local anonteam_74_1 = anonteam_0_55(anonteam_74_0)
	local anonteam_74_2 = "\a{Link Active}[Helper] \aDEFAULT"

	anonteam_0_65(anonteam_74_2 .. anonteam_74_1)
	anonteam_0_66(anonteam_74_2 .. anonteam_74_1)
end


local anonteam_0_212 = {
	[38] = "weapon_wallbang",
	[40] = "weapon_wallbang",
	[1] = "weapon_wallbang",
	[44] = "weapon_hegrenade",
	[48] = "weapon_molotov",
	[11] = "weapon_wallbang",
	[46] = "weapon_molotov",
	[64] = "weapon_wallbang",
	[9] = "weapon_wallbang",
	[45] = "weapon_smokegrenade",
	[43] = "weapon_flashbang",
	[47] = "weapon_decoy"
}

local function anonteam_0_213(arg_75_0)
	local anonteam_75_0 = arg_75_0:get_player_weapon()

	if anonteam_75_0 == nil then
		return
	end

	local anonteam_75_1 = anonteam_75_0:get_weapon_index()
	local anonteam_75_2 = anonteam_0_212[anonteam_75_1]

	if anonteam_75_2 ~= nil then
		return anonteam_75_0, anonteam_75_2
	end

	local anonteam_75_3 = anonteam_75_0:get_weapon_info().weapon_name

	return anonteam_75_0, anonteam_75_3
end

local anonteam_0_214 = anonteam_0_67["[Grenade Helper] Map Change"]
local anonteam_0_215 = anonteam_0_67["[Grenade Helper] Cloud Updated"]


local anonteam_0_218 = anonteam_0_153.map_patterns
local anonteam_0_219 = anonteam_0_150().map_patterns

local anonteam_0_221 = {
	["1722587796"] = "de_dust2_old",
	["-692592072"] = "cs_italy",
	["1850283081"] = "de_anubis",
	["-768791216"] = "de_dust2",
	["1900771637"] = "de_cache",
	["-923663825"] = "dz_frostbite",
	["1964982021"] = "de_elysion",
	["-1218081885"] = "de_guard",
	["2041417734"] = "de_cbble",
	["-1348292803"] = "cs_apollo",
	["2056138930"] = "gd_rialto",
	["-1411074561"] = "de_tulip",
	["-1439577949"] = "de_canals",
	["-1541779215"] = "de_sugarcane",
	["-1621571143"] = "de_dust",
	["-1639993233"] = "de_mirage",
	["-1752602089"] = "de_inferno",
	["-1768287648"] = "dz_blacksite",
	["-1890957714"] = "ar_shoots",
	["-2011174878"] = "de_train",
	["1563115098"] = "de_nuke",
	["1507960924"] = "cs_agency",
	["1476824995"] = "de_vertigo",
	["1463756432"] = "cs_assault",
	["1445192006"] = "de_engage",
	["1364328969"] = "cs_militia",
	["1238495690"] = "ar_dizzy",
	["1014664118"] = "cs_office",
	["899765791"] = "de_safehouse",
	["878725495"] = "de_bank",
	["792319475"] = "de_ancient",
	["790893427"] = "dz_sirocco",
	["549370830"] = "de_lake",
	["405708653"] = "de_overpass",
	["371013699"] = "de_stmarc",
	["-182586077"] = "de_aztec",
	["-222265935"] = "ar_baggage",
	["-542128589"] = "ar_monastery"
}
local anonteam_0_222 = {}

local function anonteam_0_223()
	local anonteam_76_0 = anonteam_0_57(0)

	if anonteam_76_0 == nil then
		anonteam_0_217 = nil

		return
	end

	local anonteam_76_1 = anonteam_76_0.m_WorldMins
	local anonteam_76_2 = anonteam_76_0.m_WorldMaxs

	anonteam_0_217 = anonteam_0_14("bomb_%.2f_%.2f_%.2f %.2f_%.2f_%.2f", anonteam_76_1.x, anonteam_76_1.y, anonteam_76_1.z, anonteam_76_2.x, anonteam_76_2.y, anonteam_76_2.z)
	anonteam_0_217 = anonteam_0_33(anonteam_0_136(anonteam_0_217))

	anonteam_0_218.current_map_pattern:name("\a{Link Active}" .. anonteam_0_217)
end

anonteam_0_223()

local function anonteam_0_224()
	if not anonteam_0_68.is_in_game then
		anonteam_0_216 = nil

		return anonteam_0_214:call()
	end

	anonteam_0_216 = anonteam_0_222[anonteam_0_217]

	if anonteam_0_216 ~= nil then
		return anonteam_0_214:call()
	end

	anonteam_0_216 = anonteam_0_16(anonteam_0_48().shortname)

	if anonteam_0_216 == "de_shortnuke" then
		anonteam_0_216 = "de_nuke"
	end

	anonteam_0_214:call()
end

local function anonteam_0_225()
	anonteam_0_222 = {}

	for iter_78_0, iter_78_1 in anonteam_0_35, anonteam_0_221 do
		anonteam_0_222[iter_78_0] = iter_78_1
	end

	local anonteam_78_0 = {
		"Edit Current Map Pattern"
	}

	for iter_78_2 = 1, #anonteam_0_219 do
		local anonteam_78_1 = anonteam_0_219[iter_78_2]
		local anonteam_78_2 = anonteam_78_1.map
		local anonteam_78_3 = anonteam_78_1.pattern

		anonteam_0_222[anonteam_78_3] = anonteam_78_2
		anonteam_78_0[#anonteam_78_0 + 1] = anonteam_0_14("\a{Link Active}%s:\aDEFAULT %s", anonteam_78_2, anonteam_78_3)
	end

	anonteam_0_218.selection:update(anonteam_78_0)
	anonteam_0_218.on_visibility()
	anonteam_0_224()
end

anonteam_0_225()

local function anonteam_0_226(arg_79_0, arg_79_1)
	return arg_79_1.pattern, arg_79_0
end

anonteam_0_218.save:set_callback(function()
	if anonteam_0_217 == nil then
		return
	end

	if anonteam_0_221[anonteam_0_217] ~= nil then
		return anonteam_0_210(anonteam_0_14("Failed to create pattern: Already exists (%s: %s)", anonteam_0_217, anonteam_0_221[anonteam_0_217]))
	end

	local anonteam_80_0 = anonteam_0_104(anonteam_0_218.new_map_name)
	local anonteam_80_1 = anonteam_0_13(anonteam_80_0, " ", "")

	if anonteam_0_36(anonteam_80_1) ~= "string" or anonteam_80_1 == "" then
		return anonteam_0_210("Failed to create pattern: Invalid map name")
	end

	local anonteam_80_2 = anonteam_0_141(anonteam_0_219, anonteam_0_226)[anonteam_0_217]

	anonteam_0_219[anonteam_80_2 or #anonteam_0_219 + 1] = {
		map = anonteam_80_1,
		pattern = anonteam_0_217
	}

	local anonteam_80_3 = anonteam_0_150()

	anonteam_80_3.map_patterns = anonteam_0_219

	anonteam_0_151(anonteam_80_3)

	

	anonteam_0_225()
end)
anonteam_0_218.delete:set_callback(function()
	local anonteam_81_0 = anonteam_0_104(anonteam_0_218.selection) - 1

	if anonteam_0_219[anonteam_81_0] == nil then
		return
	end

	anonteam_0_54(anonteam_0_219, anonteam_81_0)

	local anonteam_81_1 = anonteam_0_150()

	anonteam_81_1.map_patterns = anonteam_0_219

	anonteam_0_151(anonteam_81_1)

	

	anonteam_0_225()
end)

local function anonteam_0_227()
	anonteam_0_223()
	anonteam_0_225()
end

anonteam_0_67.level_init(anonteam_0_227)
anonteam_0_67.cs_game_disconnected(anonteam_0_227)


local anonteam_0_235, anonteam_0_236, anonteam_0_237, anonteam_0_238 = {}, {}, {}, {}

local function anonteam_0_239(arg_83_0)
	local anonteam_83_0 = anonteam_0_153.types

	for iter_83_0, iter_83_1 in anonteam_0_35, arg_83_0 do
		if anonteam_0_216 == iter_83_0 then
			for iter_83_2 = 1, #iter_83_1 do
				local anonteam_83_1 = iter_83_1[iter_83_2]

				if anonteam_83_1 ~= nil then
					local anonteam_83_2 = anonteam_83_1.weapon

					if anonteam_83_0[anonteam_83_2] then
						local anonteam_83_3 = anonteam_0_235[anonteam_83_2]

						if anonteam_83_3 == nil then
							anonteam_83_3 = {}
							anonteam_0_235[anonteam_83_2] = anonteam_83_3
						end

						anonteam_83_3[#anonteam_83_3 + 1] = anonteam_83_1
					else
						iter_83_1[iter_83_2] = nil
					end
				end
			end
		else
			arg_83_0[iter_83_0] = nil
		end
	end
end

local function anonteam_0_240(arg_84_0, arg_84_1)
	anonteam_0_235, anonteam_0_230 = {}
	anonteam_0_238 = {}

	if anonteam_0_216 == nil then
		return
	end

	local anonteam_84_0 = arg_84_0 or anonteam_0_150()
	local anonteam_84_1 = anonteam_84_0.active_locations
	local anonteam_84_2 = anonteam_84_0.locations
	local anonteam_84_3 = arg_84_1 ~= nil and arg_84_1.source_index

	for iter_84_0 = 1, #anonteam_84_2 do
		if anonteam_84_1[iter_84_0] then
			local anonteam_84_4 = anonteam_84_2[iter_84_0].locations

			if anonteam_84_3 == iter_84_0 then
				local anonteam_84_5 = arg_84_1.location
				local anonteam_84_6 = anonteam_84_5.map_name
				local anonteam_84_7 = anonteam_84_4[anonteam_84_6]

				if anonteam_84_7 == nil then
					anonteam_84_7 = {}
					anonteam_84_4[anonteam_84_6] = anonteam_84_7
				end

				local anonteam_84_8 = anonteam_0_140(anonteam_84_5.editing)

				anonteam_84_8.editing = true

				local anonteam_84_9 = anonteam_84_5.index

				if anonteam_84_9 == 0 then
					anonteam_84_9 = #anonteam_84_7 + 1
				end

				anonteam_84_7[anonteam_84_9] = anonteam_84_8
			end

			anonteam_0_239(anonteam_84_4)
		else
			if anonteam_84_3 == iter_84_0 then
				local anonteam_84_10 = arg_84_1.location
				local anonteam_84_11 = anonteam_0_140(anonteam_84_10.editing)

				anonteam_84_11.editing = true

				local anonteam_84_12 = anonteam_84_10.map_name
				local anonteam_84_13 = {
					[anonteam_84_12] = {
						anonteam_84_11
					}
				}

				anonteam_0_239(anonteam_84_13)
			end

			anonteam_84_2[iter_84_0] = nil
		end
	end

	for iter_84_1, iter_84_2 in anonteam_0_35, anonteam_0_236 do
		anonteam_0_239(iter_84_2)
	end

	for iter_84_3, iter_84_4 in anonteam_0_35, anonteam_0_237 do
		anonteam_0_239(iter_84_4)
	end

	
	
	
end

anonteam_0_240()

local function anonteam_0_241()
	anonteam_0_236 = {}
	anonteam_0_237 = {}

	anonteam_0_240()
end

anonteam_0_214(anonteam_0_241)
anonteam_0_153.types.selection:set_callback(anonteam_0_241)
anonteam_0_153.customization.options:set_callback(anonteam_0_241)

local anonteam_0_242 = false






anonteam_0_249 = {}
anonteam_0_250 = anonteam_0_153.settings
anonteam_0_251 = anonteam_0_153.customization
anonteam_0_252 = anonteam_0_102("Aimbot", "Ragebot", "Main", "Double Tap")
anonteam_0_253 = anonteam_0_102("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options")
anonteam_0_254 = anonteam_0_102("Aimbot", "Ragebot", "Main", "Double Tap", "Quick-Switch")
anonteam_0_255 = anonteam_0_102("Aimbot", "Ragebot", "Main", "Hide Shots")
anonteam_0_256 = anonteam_0_102("Aimbot", "Ragebot", "Main", "Hide Shots", "Options")
anonteam_0_257 = anonteam_0_102("Aimbot", "Anti Aim", "Angles", "Extended Angles")
anonteam_0_258 = anonteam_0_102("Aimbot", "Anti Aim", "Misc", "Slow Walk")
anonteam_0_259 = anonteam_0_102("Aimbot", "Anti Aim", "Misc", "Fake Duck")
anonteam_0_260 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Duck")
anonteam_0_261 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Strafe")
anonteam_0_262 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Strafe", "WASD Strafe")
anonteam_0_263 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Strafe", "Smoothing")
anonteam_0_264 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Quick Stop")
anonteam_0_265 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Strafe Assist")
anonteam_0_266 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Edge Jump")

local function anonteam_0_267()
	anonteam_0_106(anonteam_0_254)
	anonteam_0_106(anonteam_0_253)
	anonteam_0_106(anonteam_0_256)
	anonteam_0_106(anonteam_0_257)
	anonteam_0_106(anonteam_0_258)
	anonteam_0_106(anonteam_0_259)
	anonteam_0_106(anonteam_0_260)
	anonteam_0_106(anonteam_0_261)
	anonteam_0_106(anonteam_0_264)
	anonteam_0_106(anonteam_0_262)
	anonteam_0_106(anonteam_0_263)
	anonteam_0_106(anonteam_0_265)
	anonteam_0_106(anonteam_0_266)
end


local anonteam_0_269 = cvar.sensitivity
local anonteam_0_270 = anonteam_0_269.float(anonteam_0_269)
local anonteam_0_271 = true

local function anonteam_0_272(arg_87_0)
	return
end




local function anonteam_0_275(arg_88_0)
	arg_88_0.in_forward, arg_88_0.in_back = false, false
	arg_88_0.in_moveleft, arg_88_0.in_moveright = false, false
	arg_88_0.forwardmove, arg_88_0.sidemove = 0, 0
	arg_88_0.in_jump = false
	arg_88_0.in_speed = false
	arg_88_0.in_duck = false
end

local anonteam_0_276 = 1
local anonteam_0_277 = 2
local anonteam_0_278 = 3
local anonteam_0_279 = 4
local anonteam_0_280 = 5
local anonteam_0_281 = rage.exploit
local anonteam_0_282 = anonteam_0_281.get
local anonteam_0_283 = anonteam_0_281.force_teleport

local function anonteam_0_284(arg_89_0, arg_89_1, arg_89_2, arg_89_3)
	local anonteam_89_0 = anonteam_0_249.location
	local anonteam_89_1 = anonteam_0_249.data

	if anonteam_89_1 == nil then
		anonteam_89_1 = {}
		anonteam_0_249.data = anonteam_89_1
	end

	if not anonteam_89_1.state then
		anonteam_89_1.state = anonteam_0_276
	end

	if anonteam_0_250.aimbot == "Rage" then
		arg_89_0.view_angles = anonteam_89_0.viewangles
	elseif anonteam_89_1.state ~= anonteam_0_280 then
		anonteam_0_272(false)

		local anonteam_89_2 = anonteam_89_0.viewangles

		anonteam_0_2(anonteam_89_2)
	end

	local anonteam_89_3 = anonteam_89_0.grenade
	local anonteam_89_4 = anonteam_89_3 ~= nil and anonteam_89_3.strength or 1

	if anonteam_89_1.state == anonteam_0_276 or anonteam_89_1.state == anonteam_0_277 or anonteam_89_1.state == anonteam_0_279 then
		if anonteam_89_4 == 0 then
			arg_89_0.in_attack, arg_89_0.in_attack2 = false, true
		elseif anonteam_89_4 == 0.5 then
			arg_89_0.in_attack, arg_89_0.in_attack2 = true, true
		else
			arg_89_0.in_attack, arg_89_0.in_attack2 = true, false
		end
	end

	local anonteam_89_5 = anonteam_89_0.duck

	if anonteam_89_1.state ~= anonteam_0_280 then
		if arg_89_3 ~= anonteam_89_0.weapon then
			anonteam_0_267()

			anonteam_0_249 = {}
		end

		anonteam_0_275(arg_89_0)

		arg_89_0.in_duck = anonteam_89_5
	end

	local anonteam_89_6 = arg_89_1.m_flDuckAmount

	if anonteam_89_5 and anonteam_89_6 ~= 1 or not anonteam_89_5 and anonteam_89_6 ~= 0 then
		return
	end

	if anonteam_89_1.state == anonteam_0_276 and arg_89_2.m_flThrowStrength == anonteam_89_4 and arg_89_2.m_bPinPulled then
		anonteam_89_1.state = anonteam_0_277
		anonteam_89_1.start_at = arg_89_0.command_number
	end

	anonteam_0_106(anonteam_0_254, false)

	if anonteam_0_250.force_defensive then
		anonteam_0_106(anonteam_0_253, "Always on")
		anonteam_0_106(anonteam_0_256, "Break LC")
	end

	if anonteam_89_1.state == anonteam_0_280 then
		if anonteam_89_1.recovery_yaw ~= nil then
			if not anonteam_89_1.recovery_start_at then
				anonteam_89_1.recovery_start_at = arg_89_0.command_number
			end

			local anonteam_89_7 = arg_89_0.in_forward or arg_89_0.in_back or arg_89_0.in_moveleft or arg_89_0.in_moveright or arg_89_0.in_jump
			local anonteam_89_8 = anonteam_89_3 ~= nil and anonteam_89_3.recovery_jump
			local anonteam_89_9 = anonteam_0_27(32, anonteam_89_1.run or 16) + 13 + (anonteam_89_8 and 10 or 0)

			if arg_89_0.command_number - anonteam_89_1.recovery_start_at >= 1e-10 or anonteam_89_7 then
				anonteam_0_106(anonteam_0_261, true)

				if anonteam_0_250.recovery_teleport and anonteam_89_1.teleported == nil and not anonteam_89_7 then
					anonteam_0_283(anonteam_0_281)

					anonteam_89_1.teleported = true
				end
			end

			if anonteam_89_7 then
				anonteam_0_267()

				anonteam_0_249 = {}
			elseif anonteam_89_1.recovery_start_at + anonteam_89_9 >= arg_89_0.command_number then
				anonteam_0_275(arg_89_0)

				arg_89_0.move_yaw = arg_89_0.view_angles.y + anonteam_89_1.recovery_yaw + anonteam_89_1.run_yaw
				arg_89_0.forwardmove = 450

				if anonteam_89_8 then
					arg_89_0.in_jump = true
				end
			else
				anonteam_0_267()

				anonteam_0_249 = {}
			end
		else
			anonteam_0_267()

			anonteam_0_249 = {}
		end
	end

	if anonteam_89_1.state == anonteam_0_277 or anonteam_89_1.state == anonteam_0_278 or anonteam_89_1.state == anonteam_0_279 then
		local anonteam_89_10 = arg_89_0.command_number - anonteam_89_1.start_at
		local anonteam_89_11 = anonteam_89_3 ~= nil and anonteam_89_3.run
		local anonteam_89_12 = anonteam_89_3 ~= nil and anonteam_89_3.run_yaw or 0

		anonteam_89_1.run, anonteam_89_1.run_yaw = anonteam_89_11, anonteam_89_12

		if anonteam_89_11 and anonteam_89_10 < anonteam_89_11 then
			-- block empty
		elseif anonteam_89_1.state == anonteam_0_277 then
			anonteam_89_1.state = anonteam_0_278
		end

		if anonteam_89_11 then
			if arg_89_1.m_MoveType == 9 then
				if anonteam_89_1.run_yaw == -90 then
					arg_89_0.in_moveright = true
				elseif anonteam_89_1.run_yaw == 90 then
					arg_89_0.in_moveleft = true
				elseif anonteam_89_1.run_yaw == 180 or anonteam_89_1.run_yaw == -180 then
					arg_89_0.in_back = true
				else
					arg_89_0.in_forward = true
				end
			else
				arg_89_0.move_yaw = arg_89_0.view_angles.y + anonteam_89_1.run_yaw
				arg_89_0.forwardmove = 450
				arg_89_0.in_forward = true
			end

			arg_89_0.in_speed = anonteam_89_3 ~= nil and anonteam_89_3.run_speed and 1 or 0
		end
	end

	if anonteam_89_1.state == anonteam_0_278 then
		if anonteam_89_3 ~= nil and anonteam_89_3.jump then
			arg_89_0.in_jump = true
		end

		anonteam_89_1.state = anonteam_0_279
		anonteam_89_1.throw_at = arg_89_0.command_number
	end

	local anonteam_89_13 = anonteam_89_3 ~= nil and anonteam_89_3.delay or 0
	

	if anonteam_89_1.state == anonteam_0_279 then
		local anonteam_89_15 = anonteam_0_107(anonteam_0_252)

		if anonteam_89_15 == nil then
			anonteam_89_15 = anonteam_0_104(anonteam_0_252)
		end

		if anonteam_0_282(anonteam_0_281) == 1 and anonteam_89_15 then
			anonteam_89_13 = anonteam_89_13 + 6
		end

		anonteam_89_14 = arg_89_0.command_number - anonteam_89_1.throw_at

		if anonteam_89_14 >= anonteam_89_13 - 3 then
			anonteam_0_106(anonteam_0_254, false)
			anonteam_0_106(anonteam_0_253, "Disabled")
			anonteam_0_106(anonteam_0_256, "Favor Fake Lag")
		end

		if anonteam_89_13 <= anonteam_89_14 then
			arg_89_0.in_attack, arg_89_0.in_attack2 = false, false
			anonteam_89_1.recovery_yaw = anonteam_89_3 and anonteam_89_3.recovery_yaw and anonteam_89_3.recovery_yaw or anonteam_89_3 and (anonteam_89_0.grenade.recovery_jump or anonteam_89_0.grenade.jump) and 180
		end
	end

	if anonteam_89_1.state == anonteam_0_279 then
		if anonteam_89_13 < anonteam_89_14 then
			anonteam_89_1.thrown_at = arg_89_0.command_number
		end

		if arg_89_2.m_fThrowTime == 0 and anonteam_89_1.thrown_at and anonteam_89_1.thrown_at > anonteam_89_1.throw_at then
			anonteam_89_1.state = anonteam_0_280
		end
	end
end



local anonteam_0_287 = {}

anonteam_0_287.in_forward, anonteam_0_287.in_back = "F", "B"
anonteam_0_287.in_moveleft, anonteam_0_287.in_moveright = "L", "R"
anonteam_0_287.in_attack, anonteam_0_287.in_attack2 = "A", "Z"
anonteam_0_287.in_jump, anonteam_0_287.in_duck = "J", "D"
anonteam_0_287.in_speed = "S"
anonteam_0_287.in_use = "U"
anonteam_0_287.F, anonteam_0_287.B = "in_forward", "in_back"
anonteam_0_287.L, anonteam_0_287.R = "in_moveleft", "in_moveright"
anonteam_0_287.A, anonteam_0_287.Z = "in_attack", "in_attack2"
anonteam_0_287.J, anonteam_0_287.D = "in_jump", "in_duck"
anonteam_0_287.S = "in_speed"
anonteam_0_287.U = "in_use"

local function anonteam_0_288(arg_90_0)
	local anonteam_90_0 = {}
	local anonteam_90_1 = {}

	for iter_90_0 in anonteam_0_21(arg_90_0, ".") do
		if anonteam_0_16(iter_90_0) == iter_90_0 then
			anonteam_90_1[#anonteam_90_1 + 1] = anonteam_0_287[anonteam_0_17(iter_90_0)] or false
		else
			anonteam_90_0[#anonteam_90_0 + 1] = anonteam_0_287[iter_90_0] or false
		end
	end

	return anonteam_90_0, anonteam_90_1
end

local function anonteam_0_289(arg_91_0)
	local anonteam_91_0 = anonteam_0_249.location
	local anonteam_91_1 = anonteam_0_249.data

	if not anonteam_91_1 then
		anonteam_0_249.data = {}
		anonteam_91_1 = anonteam_0_249.data
	end

	local anonteam_91_2 = anonteam_91_1.frames

	if anonteam_91_2 == nil then
		anonteam_91_1.frames = {}
		anonteam_91_2 = anonteam_91_1.frames

		local anonteam_91_3 = anonteam_91_0.movement.frames

		for iter_91_0 = 1, #anonteam_91_3 do
			local anonteam_91_4 = anonteam_91_3[iter_91_0]

			if anonteam_0_36(anonteam_91_4) == "number" then
				if anonteam_91_4 > 0 then
					for iter_91_1 = 1, anonteam_91_4 do
						anonteam_91_2[#anonteam_91_2 + 1] = {}
					end
				end
			elseif anonteam_0_36(anonteam_91_4) == "table" then
				anonteam_91_2[#anonteam_91_2 + 1] = anonteam_91_4
			end
		end

		local anonteam_91_5 = anonteam_91_0.viewangles
		local anonteam_91_6 = {
			viewangles = {
				pitch = anonteam_91_5.x,
				yaw = anonteam_91_5.y
			},
			buttons = {}
		}

		for iter_91_2, iter_91_3 in anonteam_0_35, anonteam_0_287 do
			anonteam_91_6.buttons[iter_91_2] = false
		end

		for iter_91_4 = 1, #anonteam_91_2 do
			local anonteam_91_7 = anonteam_91_2[iter_91_4]
			local anonteam_91_8, anonteam_91_9, anonteam_91_10, anonteam_91_11, anonteam_91_12 = anonteam_0_40(anonteam_91_7)

			anonteam_91_6.viewangles.pitch = anonteam_91_6.viewangles.pitch + (anonteam_91_8 or 0)
			anonteam_91_6.viewangles.yaw = anonteam_91_6.viewangles.yaw + (anonteam_91_9 or 0)

			if anonteam_0_36(anonteam_91_10) == "string" then
				local anonteam_91_13, anonteam_91_14 = anonteam_0_288(anonteam_91_10)

				for iter_91_5 = 1, #anonteam_91_13 do
					local anonteam_91_15 = anonteam_91_13[iter_91_5]

					anonteam_91_6.buttons[anonteam_91_15] = true
				end

				for iter_91_6 = 1, #anonteam_91_14 do
					local anonteam_91_16 = anonteam_91_14[iter_91_6]

					anonteam_91_6.buttons[anonteam_91_16] = false
				end
			end

			anonteam_91_6.forwardmove = anonteam_0_36(anonteam_91_11) == "number" and anonteam_91_11 >= -450 and anonteam_91_11 <= 450 and anonteam_91_11 or anonteam_91_6.buttons.in_forward and 450 or anonteam_91_6.buttons.in_back and -450 or 0
			anonteam_91_6.sidemove = anonteam_0_36(anonteam_91_12) == "number" and anonteam_91_12 >= -450 and anonteam_91_12 <= 450 and anonteam_91_12 or anonteam_91_6.buttons.in_moveright and 450 or anonteam_91_6.buttons.in_moveleft and -450 or 0
			anonteam_91_2[iter_91_4] = {
				pitch = anonteam_91_6.viewangles.pitch,
				yaw = anonteam_91_6.viewangles.yaw,
				move_yaw = anonteam_91_6.viewangles.yaw,
				forwardmove = anonteam_91_6.forwardmove,
				sidemove = anonteam_91_6.sidemove
			}

			for iter_91_7, iter_91_8 in anonteam_0_35, anonteam_91_6.buttons do
				anonteam_91_1.frames[iter_91_4][iter_91_7] = iter_91_8
			end
		end
	end

	if not anonteam_91_1.start_at then
		anonteam_91_1.start_at = arg_91_0.command_number
	end

	local anonteam_91_17 = anonteam_91_2[arg_91_0.command_number - anonteam_91_1.start_at + 1]

	if not anonteam_91_17 then
		anonteam_0_267()

		anonteam_0_249 = {}

		return
	end

	local anonteam_91_18 = anonteam_0_69(anonteam_91_17.pitch, anonteam_91_17.yaw, 0)

	if anonteam_0_153.settings.aimbot == "Rage" then
		arg_91_0.view_angles = anonteam_91_18
	else
		anonteam_0_272(false)
		anonteam_0_2(anonteam_91_18)
	end

	arg_91_0.in_attack, arg_91_0.in_attack2 = anonteam_91_17.in_attack, anonteam_91_17.in_attack2
	arg_91_0.move_yaw = anonteam_91_17.move_yaw
	arg_91_0.forwardmove = anonteam_91_17.forwardmove
	arg_91_0.sidemove = anonteam_91_17.sidemove
	arg_91_0.in_speed = anonteam_91_17.in_speed
	arg_91_0.in_duck = anonteam_91_17.in_duck
	arg_91_0.in_use = anonteam_91_17.in_use
	arg_91_0.in_jump = anonteam_91_17.in_jump
end

local function anonteam_0_290(arg_92_0)
	local anonteam_92_0 = anonteam_0_249.location
	local anonteam_92_1 = anonteam_0_249.data

	if not anonteam_92_1 then
		anonteam_0_249.data = {}
		anonteam_92_1 = anonteam_0_249.data
	end

	if not anonteam_92_1.start_at then
		anonteam_92_1.start_at = arg_92_0.command_number
	end

	local anonteam_92_2 = arg_92_0.command_number - anonteam_92_1.start_at + 1
	local anonteam_92_3 = anonteam_92_0.movement.steps[anonteam_92_2]

	if not anonteam_92_3 then
		anonteam_0_267()

		anonteam_0_249 = {}

		return
	end

	anonteam_0_106(anonteam_0_260, false)
	anonteam_0_106(anonteam_0_261)
	anonteam_0_106(anonteam_0_265, true)
	anonteam_0_106(anonteam_0_266, false)

	local anonteam_92_4 = anonteam_92_0.strafer

	if anonteam_92_4 ~= nil then
		anonteam_0_106(anonteam_0_264, anonteam_92_4.quick_stop)
		anonteam_0_106(anonteam_0_261, anonteam_92_4.air_strafe)
		anonteam_0_106(anonteam_0_262, anonteam_92_4.wasd_strafer)
		anonteam_0_106(anonteam_0_263, anonteam_92_4.strafer_smoothing)
	end

	local anonteam_92_5 = anonteam_92_3.viewangles
	local anonteam_92_6 = anonteam_0_69(anonteam_92_5[1], anonteam_92_5[2], 0)

	if anonteam_0_153.settings.aimbot == "Rage" then
		arg_92_0.view_angles = anonteam_92_6
	else
		anonteam_0_272(false)
		anonteam_0_2(anonteam_92_6)
	end

	arg_92_0.move_yaw = anonteam_92_3.move_yaw

	local anonteam_92_7 = anonteam_92_3.forwardmove

	if anonteam_92_7 then
		arg_92_0.forwardmove = anonteam_92_7
	end

	local anonteam_92_8 = anonteam_92_3.sidemove

	if anonteam_92_8 then
		arg_92_0.sidemove = anonteam_92_8
	end

	local anonteam_92_9 = anonteam_92_3.buttons or {}

	if arg_92_0.in_attack or arg_92_0.in_attack2 or anonteam_92_9.in_attack or anonteam_92_9.in_attack2 then
		anonteam_92_1.is_attack = true
	end

	if anonteam_92_1.is_attack then
		arg_92_0.in_attack, arg_92_0.in_attack2 = anonteam_92_9.in_attack or false, anonteam_92_9.in_attack2 or false
	end

	arg_92_0.in_forward = anonteam_92_9.in_forward or false
	arg_92_0.in_moveleft = anonteam_92_9.in_moveleft or false
	arg_92_0.in_moveright = anonteam_92_9.in_moveright or false
	arg_92_0.in_back = anonteam_92_9.in_back or false
	arg_92_0.in_speed = anonteam_92_9.in_speed or false
	arg_92_0.in_duck = anonteam_92_9.in_duck or false
	arg_92_0.in_use = anonteam_92_9.in_use or false
	arg_92_0.in_jump = anonteam_92_9.in_jump or false
end

local function anonteam_0_291(arg_93_0, arg_93_1, arg_93_2, arg_93_3, arg_93_4)
	if arg_93_0 == nil then
		return
	end

	arg_93_1.jitter_move = false

	anonteam_0_106(anonteam_0_257, false)
	anonteam_0_106(anonteam_0_258, false)
	anonteam_0_106(anonteam_0_260, false)
	anonteam_0_106(anonteam_0_261, false)
	anonteam_0_106(anonteam_0_265, false)
	anonteam_0_106(anonteam_0_266, false)

	local anonteam_93_0 = arg_93_0.movement

	if anonteam_93_0 ~= nil then
		if anonteam_93_0.frames ~= nil then
			return anonteam_0_289(arg_93_1)
		end

		return anonteam_0_290(arg_93_1)
	end

	anonteam_0_284(arg_93_1, arg_93_2, arg_93_3, arg_93_4)
end


local anonteam_0_293 = anonteam_0_69(0, 0, 64)
local anonteam_0_294 = anonteam_0_69(0, 0, 6)

local function anonteam_0_295(arg_94_0, arg_94_1)
	local anonteam_94_0 = anonteam_0_251.hide_duplicates and not anonteam_0_242
	local anonteam_94_1 = {}

	for iter_94_0 = arg_94_1, 1, -1 do
		local anonteam_94_2 = arg_94_0[iter_94_0]
		local anonteam_94_3 = anonteam_94_2.name

		if anonteam_0_36(anonteam_94_3) == "table" then
			anonteam_94_2.name = anonteam_94_3[2] or anonteam_94_3
		end

		local anonteam_94_4 = anonteam_94_2.position

		if anonteam_0_36(anonteam_94_4) == "table" then
			anonteam_94_4 = anonteam_0_69(anonteam_94_4[1], anonteam_94_4[2], anonteam_94_4[3])
			anonteam_94_2.position = anonteam_94_4
			anonteam_94_2.render_position = anonteam_0_80(anonteam_94_4)
		end

		local anonteam_94_5 = anonteam_94_2.viewangles

		if anonteam_0_36(anonteam_94_5) == "table" then
			local anonteam_94_6 = anonteam_0_69(anonteam_94_5[1], anonteam_94_5[2])

			anonteam_94_2.viewangles = anonteam_94_6
			anonteam_94_2.viewangles_forward = anonteam_94_4 + anonteam_0_293 + anonteam_0_81(anonteam_0_69(), anonteam_94_6) * 700
		end

		anonteam_94_2.in_fov_select = 0
		anonteam_94_2.on_screen = 0

		if anonteam_94_0 then
			local anonteam_94_7 = anonteam_0_33(anonteam_94_2.position) .. anonteam_0_33(anonteam_94_2.viewangles)

			if anonteam_94_1[anonteam_94_7] ~= nil then
				anonteam_0_54(arg_94_0, iter_94_0)
			else
				anonteam_94_1[anonteam_94_7] = true
			end
		end
	end
end

local function anonteam_0_296(arg_95_0, arg_95_1, arg_95_2)
	if anonteam_0_238[arg_95_2] ~= nil then
		return
	end

	anonteam_0_295(arg_95_0, arg_95_1)

	for iter_95_0 = 1, arg_95_1 do
		local anonteam_95_0 = arg_95_0[iter_95_0]

		if anonteam_95_0 ~= nil then
			local anonteam_95_1 = anonteam_95_0.render_position
			local anonteam_95_2 = anonteam_95_1
			local anonteam_95_3 = {
				anonteam_95_0
			}

			for iter_95_1 = arg_95_1, iter_95_0 + 1, -1 do
				local anonteam_95_4 = arg_95_0[iter_95_1]

				if anonteam_95_4 ~= nil then
					local anonteam_95_5 = anonteam_95_4.render_position

					if anonteam_0_84(anonteam_95_1, anonteam_95_5) <= 20 then
						anonteam_95_2 = anonteam_95_2 + anonteam_95_5
						anonteam_95_3[#anonteam_95_3 + 1] = anonteam_95_4

						anonteam_0_54(arg_95_0, iter_95_1)
					end
				end
			end

			local anonteam_95_6 = anonteam_95_2 / #anonteam_95_3
			local anonteam_95_7 = {
				distance_width = 0,
				visible_alpha = 0,
				viewangles_alpha = 0,
				weapon = anonteam_95_0.weapon,
				position = anonteam_95_6,
				world_position = anonteam_95_6 + anonteam_0_294
			}
			local anonteam_95_8 = {}
			local anonteam_95_9 = false
			local anonteam_95_10 = false
			local anonteam_95_11 = #anonteam_95_3

			for iter_95_2 = 1, anonteam_95_11 do
				local anonteam_95_12 = anonteam_95_3[iter_95_2]
				local anonteam_95_13 = anonteam_95_12.name

				if anonteam_95_12.editing then
					anonteam_95_8[#anonteam_95_8 + 1] = "<editing>" .. anonteam_95_13
					anonteam_95_10 = true

					if anonteam_95_11 == 1 then
						anonteam_95_9 = true
					end
				else
					anonteam_95_8[#anonteam_95_8 + 1] = anonteam_95_13
				end

				anonteam_95_7[iter_95_2] = anonteam_95_12
			end

			local anonteam_95_14 = anonteam_0_55(anonteam_95_8, "\aDEFAULT\n")
			local anonteam_95_15 = anonteam_0_13(anonteam_95_14, "<editing>", "")
			local anonteam_95_16 = anonteam_0_3(1, nil, anonteam_95_15)

			anonteam_95_7.text = anonteam_95_14
			anonteam_95_7.width, anonteam_95_7.height = anonteam_95_16.x, anonteam_95_16.y
			anonteam_95_7.is_one_editing, anonteam_95_7.is_have_editing = anonteam_95_9, anonteam_95_10
			arg_95_0[iter_95_0] = anonteam_95_7
		end
	end

	anonteam_0_238[arg_95_2] = true
end


local anonteam_0_298 = {}



local function anonteam_0_301(arg_96_0, arg_96_1)
	return arg_96_0.distance > arg_96_1.distance
end

local function anonteam_0_302(arg_97_0, arg_97_1, arg_97_2)
	anonteam_0_56(arg_97_0, anonteam_0_301)

	anonteam_0_247, anonteam_0_248 = arg_97_0[arg_97_1], 1

	if anonteam_0_247 == nil then
		return
	end

	local anonteam_97_0 = anonteam_0_84(arg_97_2, anonteam_0_247.position)

	if anonteam_97_0 > 30 then
		anonteam_0_247 = nil

		return
	end

	anonteam_0_248 = 0.4 + anonteam_0_126(anonteam_97_0, 0, 0.6, 30)
end

local function anonteam_0_303(arg_98_0, arg_98_1, arg_98_2, arg_98_3)
	if anonteam_0_299 ~= arg_98_2 then
		anonteam_0_299 = arg_98_2
		anonteam_0_230 = nil
	end

	if anonteam_0_230 == nil then
		anonteam_0_230, anonteam_0_231 = anonteam_0_235[arg_98_2] or false, {}

		if anonteam_0_230 then
			for iter_98_0 = 1, #anonteam_0_230 do
				local anonteam_98_0 = anonteam_0_230[iter_98_0]

				anonteam_98_0.visible_alpha = 0
				anonteam_98_0.distance_width = 0
				anonteam_98_0.viewangles_alpha = 0
			end
		end

		anonteam_0_300 = 0
	end

	if not anonteam_0_230 then
		return
	end

	local anonteam_98_1 = #anonteam_0_230

	if anonteam_98_1 == 0 then
		return
	end

	anonteam_0_296(anonteam_0_230, anonteam_98_1, arg_98_2)

	local anonteam_98_2 = #anonteam_0_230
	local anonteam_98_3 = anonteam_0_68.realtime

	if anonteam_98_3 > anonteam_0_300 + 0.07 then
		anonteam_0_300 = anonteam_98_3
		anonteam_0_231, anonteam_0_298 = {}, {}

		for iter_98_1 = 1, anonteam_98_2 do
			local anonteam_98_4 = anonteam_0_230[iter_98_1]
			local anonteam_98_5 = anonteam_0_84(arg_98_1, anonteam_98_4.position)

			anonteam_98_4.distance = anonteam_98_5

			if anonteam_98_5 <= 1500 then
				anonteam_0_231[#anonteam_0_231 + 1] = anonteam_98_4

				if anonteam_98_5 <= 50 then
					anonteam_0_298[#anonteam_0_298 + 1] = anonteam_98_4
				end

				anonteam_98_4.distance_alpha = anonteam_0_127(1 - anonteam_98_5 / 1500, 0, 1, 1)
				anonteam_98_4.is_visible = anonteam_0_53(arg_98_3, anonteam_98_4.world_position, arg_98_0, 33570827).fraction > 0.97
				anonteam_98_4.in_range = anonteam_98_5 <= 650
			else
				anonteam_98_4.distance_width = 0
				anonteam_98_4.in_range = false
			end
		end

		return anonteam_0_302(anonteam_0_231, #anonteam_0_231, arg_98_1)
	end

	local anonteam_98_6 = #anonteam_0_298

	if anonteam_98_6 == 0 then
		return
	end

	for iter_98_2 = 1, anonteam_98_6 do
		local anonteam_98_7 = anonteam_0_298[iter_98_2]

		if anonteam_98_7.distance > 30 then
			anonteam_98_7.distance = anonteam_0_84(arg_98_1, anonteam_98_7.position)

			for iter_98_3 = 1, #anonteam_98_7 do
				local anonteam_98_8 = anonteam_98_7[iter_98_3]

				anonteam_98_8.in_fov_select = 0
				anonteam_98_8.on_screen = 0
			end
		end
	end

	anonteam_0_302(anonteam_0_298, anonteam_98_6, arg_98_1)
end

local function anonteam_0_304(arg_99_0)
	local anonteam_99_0 = anonteam_0_58()

	if anonteam_99_0 == nil or not anonteam_99_0:is_alive() then
		anonteam_0_272(true)
		anonteam_0_267()

		anonteam_0_249 = {}
		anonteam_0_230 = nil

		return
	end

	local anonteam_99_1, anonteam_99_2 = anonteam_0_213(anonteam_99_0)

	if anonteam_99_1 == nil then
		return
	end

	local anonteam_99_3 = anonteam_99_0:get_origin()
	local anonteam_99_4 = anonteam_0_1()

	anonteam_0_303(anonteam_99_0, anonteam_99_3, anonteam_99_2, anonteam_99_4)

	local anonteam_99_5 = anonteam_0_250.aimbot == "Legit"
	local anonteam_99_6 = anonteam_0_249.location

	if not anonteam_0_104(anonteam_0_250.hotkey) then
		if anonteam_99_5 or anonteam_0_245 ~= nil or anonteam_99_6 ~= nil then
			anonteam_0_267()
			anonteam_0_272(true)
		end

		anonteam_0_249 = {}

		return
	end

	if anonteam_0_245 ~= nil then
		anonteam_0_267()
	end

	if anonteam_0_245 ~= nil and anonteam_99_6 == nil then
		local anonteam_99_7 = anonteam_0_245.position
		local anonteam_99_8 = anonteam_0_84(anonteam_99_3, anonteam_99_7)
		local anonteam_99_9 = anonteam_0_85(anonteam_99_3, anonteam_99_7)

		if anonteam_99_9 < 0.5 and anonteam_99_8 > 0.08 and anonteam_99_8 < 5 then
			anonteam_99_8 = anonteam_99_9
		end

		local anonteam_99_10 = anonteam_0_82(anonteam_99_0.m_vecAbsVelocity)
		local anonteam_99_11 = anonteam_0_42(anonteam_99_0.m_fFlags, 1) == 1
		local anonteam_99_12 = anonteam_99_0.m_MoveType == 9
		local anonteam_99_13 = arg_99_0.in_forward or arg_99_0.in_back or arg_99_0.in_moveleft or arg_99_0.in_moveright or arg_99_0.in_jump or not anonteam_99_12 and not anonteam_99_11
		local anonteam_99_14 = anonteam_0_245.on_position

		if not anonteam_99_14 and not anonteam_99_13 then
			anonteam_0_106(anonteam_0_257, false)
			anonteam_0_106(anonteam_0_258, false)

			arg_99_0.jitter_move = false
			arg_99_0.sidemove = 0
			arg_99_0.in_moveleft, arg_99_0.in_moveright = false, false

			if anonteam_99_12 then
				local anonteam_99_15 = anonteam_99_7.z - anonteam_99_3.z
				local anonteam_99_16 = anonteam_99_7.y - anonteam_99_3.y
				local anonteam_99_17 = anonteam_99_15 > 0.5 or anonteam_99_15 < -0.5
				local anonteam_99_18 = anonteam_99_16 > 0.5 or anonteam_99_16 < -0.5

				if anonteam_99_17 then
					arg_99_0.buttons = anonteam_99_15 > 0 and anonteam_0_47(arg_99_0.buttons, 8) or anonteam_0_47(arg_99_0.buttons, 16)
				end

				if anonteam_99_18 then
					arg_99_0.buttons = anonteam_99_16 > 0 and anonteam_0_47(arg_99_0.buttons, 512) or anonteam_0_47(arg_99_0.buttons, 1024)
				end

				if anonteam_99_17 or anonteam_99_18 then
					arg_99_0.in_speed = true
					arg_99_0.in_duck = true
				end
			else
				local anonteam_99_19 = anonteam_99_7 + anonteam_0_87(anonteam_99_7 - anonteam_99_3) * 10 - anonteam_99_3

				arg_99_0.move_yaw = anonteam_0_81(anonteam_99_19).y
				arg_99_0.in_speed = false

				if anonteam_99_8 > 14 then
					arg_99_0.forwardmove = 450
				else
					local anonteam_99_20 = anonteam_99_0.m_flDuckAmount
					local anonteam_99_21 = anonteam_0_30(1.1 + anonteam_99_20 * 10, anonteam_99_8 * 9, 450)

					if anonteam_99_10 >= anonteam_0_27(250, anonteam_99_21) + 15 then
						arg_99_0.forwardmove = 0
						arg_99_0.in_forward = false
					else
						arg_99_0.forwardmove = anonteam_0_28(6, anonteam_99_10 >= anonteam_0_27(250, anonteam_99_21) and anonteam_99_21 * 0.9 or anonteam_99_21)
						arg_99_0.in_forward = true

						if anonteam_99_8 < 1 then
							anonteam_0_106(anonteam_0_264, false)
						end
					end
				end
			end
		end

		if anonteam_0_245.weapon ~= "weapon_wallbang" then
			if arg_99_0.in_attack or arg_99_0.in_attack2 then
				local anonteam_99_22 = anonteam_0_245.grenade and anonteam_0_245.grenade.strength

				if anonteam_99_22 == 0 then
					arg_99_0.in_attack, arg_99_0.in_attack2 = false, true
				elseif anonteam_99_22 == 0.5 then
					arg_99_0.in_attack, arg_99_0.in_attack2 = true, true
				else
					arg_99_0.in_attack, arg_99_0.in_attack2 = true, false
				end
			end

			local anonteam_99_23 = anonteam_0_250.automatic_throw and anonteam_0_68.curtime > anonteam_99_0.m_flNextAttack or anonteam_0_245.movement and arg_99_0.in_attack or arg_99_0.in_attack2 or anonteam_99_1.m_bPinPulled

			if anonteam_99_14 and anonteam_99_23 and anonteam_99_10 < 2 then
				if anonteam_99_5 then
					local anonteam_99_24 = anonteam_0_2()
					local anonteam_99_25 = anonteam_99_24 - anonteam_0_245.viewangles

					anonteam_99_25.y = anonteam_0_31(anonteam_99_25.y)

					local anonteam_99_26 = anonteam_99_25.x
					local anonteam_99_27 = anonteam_99_25.y
					local anonteam_99_28 = anonteam_0_26(anonteam_0_86(anonteam_99_25))
					local anonteam_99_29 = anonteam_0_250.fov
					local anonteam_99_30 = anonteam_0_250.smooth

					if anonteam_99_28 <= anonteam_99_29 then
						local anonteam_99_31 = anonteam_0_27(1, anonteam_99_28 / 3) * 0.5
						local anonteam_99_32 = (anonteam_99_31 + anonteam_0_26(anonteam_99_28 * (1 - anonteam_99_31))) * anonteam_0_68.frametime * anonteam_99_30

						anonteam_0_272(false)
						anonteam_0_2(anonteam_0_69(anonteam_99_24.x - anonteam_99_26 / anonteam_99_28 * anonteam_99_32, anonteam_99_24.y - anonteam_99_27 / anonteam_99_28 * anonteam_99_32, 0))
					end
				end

				if anonteam_0_245.is_on_fov then
					anonteam_0_249.location = anonteam_0_245
				end
			end

			if (arg_99_0.in_attack or arg_99_0.in_attack2) and anonteam_0_245.movement ~= nil then
				arg_99_0.in_attack, arg_99_0.in_attack2 = false, false
			end
		end
	elseif anonteam_99_5 then
		anonteam_0_272(true)
	end

	anonteam_0_291(anonteam_99_6, arg_99_0, anonteam_99_0, anonteam_99_1, anonteam_99_2)
end

local anonteam_0_305 = -1
local anonteam_0_306 = anonteam_0_67.createmove

local function anonteam_0_307()
	anonteam_0_51(1, anonteam_0_307)

	local anonteam_100_0 = #anonteam_0_306

	if anonteam_0_305 == anonteam_100_0 then
		return
	end

	anonteam_0_305 = anonteam_100_0

	anonteam_0_306(anonteam_0_304, false)
	anonteam_0_306(anonteam_0_304, true)
end

anonteam_0_307()


anonteam_0_309 = anonteam_0_153.settings
anonteam_0_310 = anonteam_0_153.customization
anonteam_0_311 = anonteam_0_88(16, 16, 16, 255)
anonteam_0_312 = anonteam_0_88(255, 245, 5)
anonteam_0_313 = anonteam_0_88(20, 236, 0)
anonteam_0_314 = anonteam_0_88(140, 255)
anonteam_0_315 = anonteam_0_88(255, 16, 16)

anonteam_0_318 = utils.get_vfunc("engine.dll", "VEngineClient014", 37, "struct { float m[4][4]; } & (__thiscall*)(void*)")

local function anonteam_0_319(arg_101_0, arg_101_1, arg_101_2, arg_101_3, arg_101_4, arg_101_5, arg_101_6, arg_101_7)
	local anonteam_101_0 = arg_101_0 * arg_101_3 - arg_101_1 * arg_101_2
	local anonteam_101_1 = arg_101_4 * arg_101_7 - arg_101_5 * arg_101_6
	local anonteam_101_2 = (arg_101_0 - arg_101_2) * (arg_101_5 - arg_101_7) - (arg_101_1 - arg_101_3) * (arg_101_4 - arg_101_6)

	return (anonteam_101_0 * (arg_101_4 - arg_101_6) - (arg_101_0 - arg_101_2) * anonteam_101_1) / anonteam_101_2, (anonteam_101_0 * (arg_101_5 - arg_101_7) - (arg_101_1 - arg_101_3) * anonteam_101_1) / anonteam_101_2
end

anonteam_0_320 = anonteam_0_112.x
anonteam_0_321 = anonteam_0_112.y
anonteam_0_322 = anonteam_0_111.x
anonteam_0_323 = anonteam_0_111.y

local function anonteam_0_324(arg_102_0, arg_102_1, arg_102_2)
	 anonteam_102_0 = arg_102_1.x
	 anonteam_102_1 = arg_102_1.y
	 anonteam_102_2 = arg_102_1.z
	 anonteam_102_3 = arg_102_0.m
	 anonteam_102_4 = anonteam_102_3[0]
	 anonteam_102_5 = anonteam_102_3[1]
	 anonteam_102_6 = anonteam_102_3[3]
	 anonteam_102_7, anonteam_102_8, anonteam_102_9 = anonteam_102_4[0] * anonteam_102_0 + anonteam_102_4[1] * anonteam_102_1 + anonteam_102_4[2] * anonteam_102_2 + anonteam_102_4[3], anonteam_102_5[0] * anonteam_102_0 + anonteam_102_5[1] * anonteam_102_1 + anonteam_102_5[2] * anonteam_102_2 + anonteam_102_5[3], anonteam_102_6[0] * anonteam_102_0 + anonteam_102_6[1] * anonteam_102_1 + anonteam_102_6[2] * anonteam_102_2 + anonteam_102_6[3]
	 anonteam_102_10 = anonteam_102_9 >= 0.001
	 anonteam_102_11 = (anonteam_102_10 and 1 or -1) / anonteam_102_9
	 anonteam_102_12, anonteam_102_13 = anonteam_102_7 * anonteam_102_11, anonteam_102_8 * anonteam_102_11
	 anonteam_102_14, anonteam_102_15 = anonteam_0_320 + (0.5 * anonteam_102_12 * anonteam_0_322 + 0.5), anonteam_0_321 - (0.5 * anonteam_102_13 * anonteam_0_323 + 0.5)

	if not anonteam_102_10 or anonteam_102_14 < arg_102_2 or anonteam_102_14 > anonteam_0_322 - arg_102_2 or anonteam_102_15 < arg_102_2 or anonteam_102_15 > anonteam_0_323 - arg_102_2 then
		if not anonteam_102_10 then
			local anonteam_102_16 = anonteam_0_25(anonteam_102_15 - anonteam_0_321, anonteam_102_14 - anonteam_0_320)
			local anonteam_102_17 = anonteam_0_28(anonteam_0_322, anonteam_0_323)

			anonteam_102_14, anonteam_102_15 = anonteam_0_320 + anonteam_102_17 * anonteam_0_23(anonteam_102_16), anonteam_0_321 + anonteam_102_17 * anonteam_0_22(anonteam_102_16)
		end

		local anonteam_102_18 = {
			arg_102_2,
			arg_102_2,
			anonteam_0_322 - arg_102_2,
			arg_102_2,
			anonteam_0_322 - arg_102_2,
			arg_102_2,
			anonteam_0_322 - arg_102_2,
			anonteam_0_323 - arg_102_2,
			arg_102_2,
			arg_102_2,
			arg_102_2,
			anonteam_0_323 - arg_102_2,
			arg_102_2,
			anonteam_0_323 - arg_102_2,
			anonteam_0_322 - arg_102_2,
			anonteam_0_323 - arg_102_2
		}

		for iter_102_0 = 1, 16, 4 do
			local anonteam_102_19 = anonteam_102_18[iter_102_0]
			local anonteam_102_20 = anonteam_102_18[iter_102_0 + 1]
			local anonteam_102_21 = anonteam_102_18[iter_102_0 + 2]
			local anonteam_102_22 = anonteam_102_18[iter_102_0 + 3]
			local anonteam_102_23, anonteam_102_24 = anonteam_0_319(anonteam_102_19, anonteam_102_20, anonteam_102_21, anonteam_102_22, anonteam_0_320, anonteam_0_321, anonteam_102_14, anonteam_102_15)

			if iter_102_0 == 1 and anonteam_102_15 < arg_102_2 and arg_102_2 <= anonteam_102_23 and anonteam_102_23 <= anonteam_0_322 - arg_102_2 or iter_102_0 == 5 and anonteam_102_14 > anonteam_0_322 - arg_102_2 and arg_102_2 <= anonteam_102_24 and anonteam_102_24 <= anonteam_0_323 - arg_102_2 or iter_102_0 == 9 and anonteam_102_14 < arg_102_2 and arg_102_2 <= anonteam_102_24 and anonteam_102_24 <= anonteam_0_323 - arg_102_2 or iter_102_0 == 13 and anonteam_102_15 > anonteam_0_323 - arg_102_2 and arg_102_2 <= anonteam_102_23 and anonteam_102_23 <= anonteam_0_322 - arg_102_2 then
				return anonteam_0_69(anonteam_102_23, anonteam_102_24), false
			end
		end

		return anonteam_0_69(anonteam_102_14, anonteam_102_15), false
	end

	return anonteam_0_69(anonteam_102_14, anonteam_102_15), true
end

local anonteam_0_325 = render.load_font("calibri", 11, "abd")

local anonteam_0_328 = {
	weapon_smokegrenade = render.load_image_from_file("materials\\panorama\\images\\icons\\equipment\\smokegrenade.svg"),
	weapon_flashbang = render.load_image_from_file("materials\\panorama\\images\\icons\\equipment\\flashbang.svg"),
	weapon_decoy = render.load_image_from_file("materials\\panorama\\images\\icons\\equipment\\decoy.svg"),
	weapon_hegrenade = render.load_image_from_file("materials\\panorama\\images\\icons\\equipment\\hegrenade.svg"),
	weapon_molotov = render.load_image_from_file("materials\\panorama\\images\\icons\\equipment\\molotov.svg"),
	weapon_wallbang = render.load_image_from_file("materials\\panorama\\images\\icons\\ui\\bullet.svg"),
	weapon_knife = render.load_image("<?xml version='1.0' encoding='UTF-8' standalone='no'?>\n<svg xmlns:svg='http://www.w3.org/2000/svg' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 158 200' height='200mm' width='158mm'>\n<g style='mix-blend-mode:normal'>\n<path d='m 27.692726,195.58287 c -2.00307,-2.00307 -2.362731,-5.63696 -1.252001,-12.64982 .51631,-3.25985 .938744,-6.15692 .938744,-6.43794 0,-.28102 -1.054647,-.68912 -2.343659,-.9069 -1.289012,-.21778 -2.343659,-.46749 -2.343659,-.55491 0,-.0874 .894568,-2.10761 1.987932,-4.48934 4.178194,-9.10153 7.386702,-22.1671 7.386702,-3.07983 v -3.57114 l -3.439063,-.65356 c -7.509422,-1.42712 -14.810239,-6.3854 -17.132592,-11.63547 -.617114,-1.39509 -1.6652612,-5.2594 -2.3292172,-8.58736 -.894299,-4.48252 -1.742757,-6.93351 -3.273486,-9.45625 -2.296839,-3.78538 -2.316583,-5.11371 -.151099,-1.165583 .632785,-1.47622 2.428356,-7.85932 3.990157,-14.18467 2.3650332,-9.578444 3.4874882,-12.902312 6.7157522,-19.887083 5.153317,-11.149867 5.357987,-11.987895 3.936721,-16.118875 -1.318135,-3.831228 -1.056436,-5.345174 1.69769,-9.821193 .98924,-1.607722 2.121218,-4.129295 2.515508,-5.6035 C 25.28429,28.210324 25.23258,27.949807 23.35135,24.502898 21.710552,21.496527 21.306782,19.993816 2.889474,15.340532 2.614927,12.279129 2.380889,8.4556505 2.369393,6.8439185 l -.02091,-2.930428 9.333915,.83216 9.333914,.832161 .415652,4.4356115 c .228605,2.439587 .232248,9.481725 .0081,15.649196 l -.407561,11.213581 3.401641,.387936 c 1.8709,.213363 4.456285,.528941 5.745297,.701283 l 2.343658,.31335 .01922,-4.58462 c .01523,-3.630049 .300834,-5.120017 1.371678,-7.156027 3.087768,-5.870826 9.893488,-1.61208 17.039741,-11.87087 2.720173,-.479148 4.160963,-.409507 7.136663,.344951 8.66897,2.197927 13.98192,9.621168 13.98192,19.535491 0,3.495649 -.1404,3.901096 -1.99211,5.752805 -1.24394,1.243942 -2.56423,1.992111 -3.51549,1.992111 -1.49731,0 -1.52337,.07107 -1.52337,4.153986 v 4.15399 l 8.9352,-.237138 c 5.2858,-.140285 11.170779,-.674802 14.408789,-1.308719 l 5.4736,-1.071577 -.38275,-2.552314 c -.37145,-2.476984 -.33603,-2.552315 1.19984,-2.552315 .87041,0 1.91062,-.448636 2.31157,-.996969 .68332,-.93449 1.27483,-.910186 9.43922,.387872 4.86768,.773912 12.32893,1.486871 16.91304,1.616118 4.51154,.127203 8.93123,.513358 9.82152,.858128 2.24255,.86843 2.71036,3.071333 1.03169,4.858196 -2.36272,2.515004 -4.22494,2.914196 -9.65444,2.069567 -6.49602,-1.010535 -9.48434,-.608226 -12.89073,1.735433 -1.51944,1.045409 -3.78166,2.037422 -5.02716,2.204478 -2.12756,.285364 -2.24441,.404325 -1.93193,1.966706 .54423,2.721143 -.2472,4.489222 -3.68173,8.225132 -3.77119,4.102112 -4.63155,5.89093 -5.49449,11.423793 -.94965,6.08886 -1.57396,7.52473 -5.32281,12.24226 -5.48499,6.90229 -11.865029,11.373083 -16.271159,11.401983 -2.96514,.0195 -5.44164,-1.427403 -1.64598,-6.219683 -6.09285,-5.61044 -11.509723,-9.58715 -13.059111,-9.58715 -.74413,0 -2.728788,1.56375 -5.069514,3.99435 -2.115662,2.19689 -4.279795,4.24027 -4.809188,4.54084 -.873942,.49619 -.888303,.97152 -.156034,5.16456 .443574,2.539953 1.213393,5.239093 1.710714,5.998093 1.234397,1.88393 4.464204,3.43033 1.249847,4.90755 11.894956,3.03704 24.227356,12.17082 28.700056,21.25618 3.277059,6.65665 3.756559,14.90456 1.06537,18.32585 -2.00495,2.54888 -4.71703,3.29933 -13.73034,3.79931 -12.02449,.66702 -11.43259,.30042 -25.191149,15.60203 -3.539415,3.93635 -4.947788,5.02545 -9.098134,7.03552 -6.030466,2.92066 -8.127669,5.18229 -9.759102,1.52427 -1.407053,4.60727 -3.889283,7.93618 -7.163048,9.60633 -3.066476,1.56439 -5.550268,1.48363 -7.270304,-.2364 z M 99.119321,71.201503 c 3.729129,-4.724307 6.662059,-8.707839 6.517599,-8.852305 -.14446,-.144451 -2.7777,1.571678 -5.851649,3.813635 -4.38891,3.20102 -6.56642,4.363275 -1.1411,5.412849 -2.50365,.73511 -4.68393,1.459682 -4.84506,1.610152 -.31664,.295703 6.47662,6.567603 7.13899,6.591103 .22054,.008 3.4521,-3.85113 7.18122,-8.575434 z' style='fill:#ffffff;fill-opacity:1;stroke:none;stroke-width:.585916;stroke-opacity:1' />\n</g>\n</svg>\n", anonteam_0_69(26, 26))
}
local anonteam_0_329 = {
	0,
	0,
	0,
	0
}
local anonteam_0_330 = {
	[anonteam_0_328.weapon_smokegrenade] = {
		0.2,
		-0.1,
		0.35,
		0
	},
	[anonteam_0_328.weapon_hegrenade] = {
		0.1,
		-0.12,
		0.2,
		0
	},
	[anonteam_0_328.weapon_molotov] = {
		0,
		-0.04,
		0,
		0
	},
	[anonteam_0_328.weapon_knife] = {
		0,
		0,
		-0.2,
		0
	}
}
local anonteam_0_331 = anonteam_0_41({}, {
	__index = function(arg_103_0, arg_103_1)
		local anonteam_103_0 = anonteam_0_330[arg_103_1] or anonteam_0_329

		arg_103_0[arg_103_1] = anonteam_0_41({}, {
			__index = function(arg_104_0, arg_104_1)
				local anonteam_104_0 = arg_103_1.width * arg_104_1 / arg_103_1.height
				local anonteam_104_1 = arg_104_1
				local anonteam_104_2 = anonteam_103_0[1] * anonteam_104_0
				local anonteam_104_3 = anonteam_103_0[2] * anonteam_104_1
				local anonteam_104_4 = anonteam_104_0 + anonteam_103_0[3] * anonteam_104_0
				local anonteam_104_5 = anonteam_104_1 + anonteam_103_0[4] * anonteam_104_1
				local anonteam_104_6 = {
					anonteam_104_4,
					anonteam_104_5,
					anonteam_104_2,
					anonteam_104_3,
					anonteam_0_69(anonteam_104_0, anonteam_104_1)
				}

				if anonteam_0_33(anonteam_104_6[1]) ~= "nan" then
					arg_104_0[arg_104_1] = anonteam_104_6
				end

				return anonteam_104_6
			end
		})

		return arg_103_0[arg_103_1]
	end
})

local function anonteam_0_332(arg_105_0, arg_105_1)
	return arg_105_0.fov > arg_105_1.fov
end

local function anonteam_0_333()
	anonteam_0_245 = nil

	local anonteam_106_0 = anonteam_0_58()

	if anonteam_106_0 == nil or not anonteam_106_0:is_alive() then
		return
	end

	if not anonteam_0_230 then
		return
	end

	local anonteam_106_1 = #anonteam_0_231

	if anonteam_106_1 == 0 then
		return
	end

	local anonteam_106_2 = anonteam_0_310.color
	local anonteam_106_3 = anonteam_0_310.alpha
	local anonteam_106_4 = anonteam_0_310.show_behind_walls
	local anonteam_106_5 = anonteam_0_310.hide_icon_with_text
	local anonteam_106_6 = anonteam_0_309.aimbot
	local anonteam_106_7 = anonteam_0_309.fov

	if anonteam_106_6 ~= "Rage" then
		anonteam_106_7 = 0.3
	end

	local anonteam_106_8 = anonteam_0_68.frametime
	local anonteam_106_9 = anonteam_0_249.location

	for iter_106_0 = 1, anonteam_106_1 do
		local anonteam_106_10 = anonteam_0_231[iter_106_0]
		local anonteam_106_11 = anonteam_106_10 == anonteam_0_247

		if not anonteam_106_11 then
			anonteam_106_10.viewangles_alpha = 0
		end

		local anonteam_106_12 = anonteam_106_10.in_range and (anonteam_0_248 > 0.5 or anonteam_106_11)
		local anonteam_106_13 = anonteam_106_10.distance_width

		if anonteam_106_12 and anonteam_106_13 < 1 then
			anonteam_106_13 = anonteam_0_27(1, anonteam_106_13 + anonteam_106_8 * 6)
		elseif not anonteam_106_12 and anonteam_106_13 > 0 then
			anonteam_106_13 = anonteam_0_28(0, anonteam_106_13 - anonteam_106_8 * 6)
		end

		anonteam_106_10.distance_width = anonteam_106_13

		local anonteam_106_14 = anonteam_0_126(anonteam_106_13, 0, 1, 1)
		local anonteam_106_15 = anonteam_106_10.visible_alpha
		local anonteam_106_16 = anonteam_106_10.is_visible
		local anonteam_106_17 = anonteam_106_4 and anonteam_106_14 > 0 and 0.45 or 0
		local anonteam_106_18 = anonteam_106_4 and anonteam_106_14 > 0 and not anonteam_106_16 and 0.33 or 1

		if anonteam_106_16 and anonteam_106_15 < 1 or anonteam_106_15 < anonteam_106_17 then
			anonteam_106_15 = anonteam_0_27(1, anonteam_106_15 + anonteam_106_8 * 5.5 * anonteam_106_18)
		elseif not anonteam_106_16 and anonteam_106_17 < anonteam_106_15 then
			anonteam_106_15 = anonteam_0_28(anonteam_106_17, anonteam_106_15 - anonteam_106_8 * 7.5 * anonteam_106_18)
		end

		local anonteam_106_19 = anonteam_106_9 == anonteam_106_10 and 1 or anonteam_106_10.distance_alpha

		anonteam_106_10.visible_alpha = anonteam_106_15

		local anonteam_106_20 = anonteam_0_128(anonteam_106_15, 0, 1, 1) * (anonteam_106_11 and 1 or anonteam_0_248) * anonteam_106_19

		if anonteam_106_20 > 0 then
			local anonteam_106_21 = anonteam_0_83(anonteam_106_10.world_position)

			if anonteam_106_21 ~= nil then
				local anonteam_106_22 = anonteam_106_21.x
				local anonteam_106_23 = anonteam_106_21.y
				local anonteam_106_24 = anonteam_106_3 * anonteam_106_20
				local anonteam_106_25 = 255 * anonteam_106_24
				local anonteam_106_26 = anonteam_106_2

				anonteam_106_26.a = anonteam_106_25

				local anonteam_106_27 = anonteam_106_10.is_have_editing

				if anonteam_106_27 then
					anonteam_0_315.a = anonteam_106_25

					if anonteam_106_10.is_one_editing then
						anonteam_106_26 = anonteam_0_315
					end
				end

				local anonteam_106_28 = anonteam_106_10.width
				local anonteam_106_29 = anonteam_106_10.height

				if anonteam_106_14 < 1 then
					anonteam_106_28, anonteam_106_29 = anonteam_106_28 * anonteam_106_14, anonteam_106_29 * anonteam_106_14
				end

				local anonteam_106_30 = anonteam_0_328[anonteam_106_10.weapon]
				
				
				
				

				if anonteam_106_5 and anonteam_106_14 > 0 then
					anonteam_106_30 = nil
				end

				local anonteam_106_35 = anonteam_106_29

				if anonteam_106_30 ~= nil then
					local anonteam_106_36 = anonteam_106_10.distance - 60
					local anonteam_106_37 = anonteam_0_27(20, anonteam_0_29(anonteam_0_28(13, anonteam_106_29 + 2, anonteam_106_36 < 0 and -anonteam_106_36 or 0)))
					local anonteam_106_38 = anonteam_0_331[anonteam_106_30][anonteam_106_37]

					anonteam_106_34 = anonteam_106_38[5]

					

					anonteam_106_32, anonteam_106_39 = anonteam_106_38[1], anonteam_106_38[2]
					anonteam_106_28 = anonteam_106_28 + anonteam_106_14 * 8 + anonteam_106_32
					anonteam_106_29 = anonteam_0_28(anonteam_106_39, anonteam_106_29)

					local anonteam_106_40 = anonteam_106_22 - anonteam_106_28 * 0.5 + anonteam_106_38[3]
					local anonteam_106_41 = anonteam_106_23 - anonteam_106_29 + anonteam_106_38[4]

					if anonteam_106_39 < anonteam_106_35 then
						anonteam_106_41 = anonteam_106_41 + (anonteam_106_35 - anonteam_106_39) * 0.5
					end

					anonteam_106_31 = anonteam_0_69(anonteam_0_29(anonteam_106_40), anonteam_0_29(anonteam_106_41))
				else
					anonteam_106_28 = anonteam_106_28 - 3 * anonteam_106_14
				end

				local anonteam_106_42, anonteam_106_43 = anonteam_106_22 - anonteam_106_28 * 0.5, anonteam_106_23 - anonteam_106_29
				local anonteam_106_44 = anonteam_106_42 + anonteam_106_28
				local anonteam_106_45 = anonteam_106_43 + anonteam_106_29

				anonteam_0_311.a = 180 * anonteam_106_24

				anonteam_0_5(anonteam_0_69(anonteam_106_42 - 3, anonteam_106_43 - 3), anonteam_0_69(anonteam_106_44 + 3, anonteam_106_45 + 3), anonteam_0_311, 0, true)

				anonteam_0_311.a = 195 * anonteam_106_24

				anonteam_0_4(anonteam_0_69(anonteam_106_42 - 4, anonteam_106_43 - 4), anonteam_0_69(anonteam_106_44 + 4, anonteam_106_45 + 4), anonteam_0_311, 0, 0, true)

				if anonteam_106_14 > 0 then
					if anonteam_106_32 ~= nil then
						local anonteam_106_46 = anonteam_106_42 + anonteam_106_32
						local anonteam_106_47 = anonteam_106_43 + 2

						anonteam_0_5(anonteam_0_69(anonteam_106_46 + 3, anonteam_106_47), anonteam_0_69(anonteam_106_46 + 4, anonteam_106_47 + anonteam_106_29 - 3), anonteam_106_26, 0, true)

						anonteam_106_42 = anonteam_106_42 + anonteam_106_32 + 8
					end

					if anonteam_106_35 < anonteam_106_29 then
						anonteam_106_43 = anonteam_106_43 + (anonteam_106_29 - anonteam_106_35) * 0.5
					end

					local anonteam_106_48 = anonteam_106_10.text

					if anonteam_106_27 then
						anonteam_106_48 = anonteam_0_13(anonteam_106_48, "<editing>", "\a" .. anonteam_0_95(anonteam_0_315))
					end

					anonteam_0_7(anonteam_0_69(anonteam_106_42, anonteam_106_43), anonteam_0_69(anonteam_106_44, anonteam_106_45), false)
					anonteam_0_11(1, anonteam_0_69(anonteam_106_42, anonteam_106_43 - 1), anonteam_106_26, nil, anonteam_106_48)
					anonteam_0_8()
				end

				if anonteam_106_30 ~= nil then
					anonteam_0_6(anonteam_106_30, anonteam_106_31, anonteam_106_34, anonteam_106_26, "f", 0)
				end
			end
		end
	end

	if anonteam_0_247 == nil then
		return
	end

	local anonteam_106_49 = anonteam_0_247.viewangles_alpha

	if anonteam_0_247 == anonteam_106_9 then
		anonteam_106_49 = 1
	elseif anonteam_106_49 < 1 then
		anonteam_106_49 = anonteam_0_27(1, anonteam_106_49 + anonteam_106_8 * 6)
	end

	anonteam_0_247.viewangles_alpha = anonteam_106_49

	local anonteam_106_50 = anonteam_0_129(anonteam_106_49, 0, 1, 1)

	if anonteam_106_50 == 0 then
		return
	end

	local anonteam_106_51 = anonteam_106_0:get_origin()
	local anonteam_106_52 = anonteam_0_2()
	local anonteam_106_53 = anonteam_106_0.m_flDuckAmount
	local anonteam_106_54 = anonteam_106_0.m_MoveType == 9
	local anonteam_106_55 = #anonteam_0_247

	for iter_106_1 = 1, anonteam_106_55 do
		local anonteam_106_56 = anonteam_0_247[iter_106_1]
		local anonteam_106_57 = anonteam_106_52 - anonteam_106_56.viewangles

		anonteam_106_57.y = anonteam_0_31(anonteam_106_57.y)

		local anonteam_106_58 = anonteam_0_26(anonteam_0_86(anonteam_106_57))

		anonteam_106_56.fov, anonteam_106_56.is_on_fov = anonteam_106_58, anonteam_106_58 <= anonteam_106_7

		local anonteam_106_59 = anonteam_106_56.position
		local anonteam_106_60 = anonteam_0_84(anonteam_106_51, anonteam_106_59)
		local anonteam_106_61 = anonteam_0_85(anonteam_106_51, anonteam_106_59)

		if anonteam_106_61 < 1.5 then
			anonteam_106_60 = anonteam_106_61
		end

		anonteam_106_56.distance, anonteam_106_56.distance_2d = anonteam_106_60, anonteam_106_61
		anonteam_106_56.on_position = anonteam_106_60 < (anonteam_106_54 and 0.45 or 0.1) and (anonteam_106_53 == anonteam_106_56.duck and 1 or 0)
	end

	anonteam_0_56(anonteam_0_247, anonteam_0_332)

	anonteam_0_245 = anonteam_0_247[anonteam_106_55]

	local anonteam_106_62 = anonteam_0_318()

	for iter_106_2 = 1, anonteam_106_55 do
		local anonteam_106_63 = anonteam_0_247[iter_106_2]
		local anonteam_106_64 = anonteam_106_63 == anonteam_0_245
		local anonteam_106_65 = anonteam_106_63.is_on_fov
		local anonteam_106_66 = anonteam_106_64 and anonteam_106_65
		local anonteam_106_67 = anonteam_106_63.on_position or anonteam_106_63 == anonteam_106_9
		local anonteam_106_68, anonteam_106_69 = anonteam_0_324(anonteam_106_62, anonteam_106_63.viewangles_forward, 40)
		local anonteam_106_70 = anonteam_106_63.on_screen

		if anonteam_106_69 and anonteam_106_70 < 1 then
			anonteam_106_70 = anonteam_0_27(1, anonteam_106_70 + anonteam_106_8 * 4.5)
		elseif not anonteam_106_69 and anonteam_106_70 > 0 then
			anonteam_106_70 = anonteam_0_28(0, anonteam_106_70 - anonteam_106_8 * 5.5)
		end

		anonteam_106_63.on_screen = anonteam_106_70

		local anonteam_106_71 = anonteam_106_3 * ((0.5 + anonteam_106_70 * 0.5) * anonteam_106_50)
		local anonteam_106_72 = anonteam_106_2

		if anonteam_106_63.editing then
			anonteam_106_72 = anonteam_0_315
		end

		local anonteam_106_73 = 255 * anonteam_106_71

		anonteam_106_72.a = anonteam_106_73

		local anonteam_106_74 = "\xC2\xBB" .. anonteam_106_63.name
		local anonteam_106_75 = anonteam_106_63.description
		local anonteam_106_76 = anonteam_0_3(anonteam_0_325, nil, anonteam_106_74)
		local anonteam_106_77 = anonteam_0_79

		if anonteam_106_75 ~= nil then
			anonteam_106_75 = anonteam_0_13(anonteam_0_17(anonteam_106_75), " ", "  ")
			anonteam_106_77 = anonteam_0_3(2, nil, anonteam_106_75)
		end

		local anonteam_106_78 = anonteam_0_29(anonteam_106_77.y * 0.5)
		local anonteam_106_79 = anonteam_0_28(anonteam_106_76.x, anonteam_106_77.x)
		local anonteam_106_80 = anonteam_106_76.y + anonteam_106_77.y
		local anonteam_106_81 = anonteam_0_29(anonteam_106_76.y * 0.5 - 1) * 2.25
		local anonteam_106_82 = 0

		if anonteam_106_70 > 0 then
			anonteam_106_82 = anonteam_0_29((anonteam_106_81 + 7) * anonteam_106_70) + anonteam_106_78
			anonteam_106_79 = anonteam_106_79 + anonteam_106_82
		end

		local anonteam_106_83 = anonteam_0_27(anonteam_106_68.x - anonteam_106_81 * 0.5 - anonteam_106_78 * 0.5, anonteam_0_111.x - 40 - anonteam_106_79)
		local anonteam_106_84 = anonteam_106_68.y - anonteam_106_80 * 0.5
		local anonteam_106_85 = anonteam_106_83 + anonteam_106_79
		local anonteam_106_86 = anonteam_106_84 + anonteam_106_80
		local anonteam_106_87 = anonteam_0_130(anonteam_106_71, 0, 1, 1)

		anonteam_0_311.a = 180 * anonteam_106_87

		anonteam_0_5(anonteam_0_69(anonteam_106_83 - 2, anonteam_106_84 - 2), anonteam_0_69(anonteam_106_85 + 2, anonteam_106_86 + 2), anonteam_0_311)

		anonteam_0_311.a = 170 * anonteam_106_87

		anonteam_0_4(anonteam_0_69(anonteam_106_83 - 3, anonteam_106_84 - 3), anonteam_0_69(anonteam_106_85 + 3, anonteam_106_86 + 3), anonteam_0_311)

		anonteam_0_311.a = 195 * anonteam_106_87

		anonteam_0_4(anonteam_0_69(anonteam_106_83 - 4, anonteam_106_84 - 4), anonteam_0_69(anonteam_106_85 + 4, anonteam_106_86 + 4), anonteam_0_311)

		anonteam_0_311.a = 40 * anonteam_106_87

		anonteam_0_4(anonteam_0_69(anonteam_106_83 - 5, anonteam_106_84 - 5), anonteam_0_69(anonteam_106_85 + 5, anonteam_106_86 + 5), anonteam_0_311)

		if anonteam_106_70 > 0.5 then
			local anonteam_106_88 = anonteam_106_81 * 0.5
			local anonteam_106_89 = anonteam_106_63.in_fov_select

			if anonteam_106_66 and anonteam_106_89 < 1 then
				anonteam_106_89 = anonteam_0_27(1, anonteam_106_89 + anonteam_106_8 * 2.5 * (anonteam_106_65 and 2 or 1))
			elseif not anonteam_106_66 and anonteam_106_89 > 0 then
				anonteam_106_89 = anonteam_0_28(0, anonteam_106_89 - anonteam_106_8 * 4.5)
			end

			anonteam_106_63.in_fov_select = anonteam_106_89

			local anonteam_106_90 = anonteam_0_69(anonteam_106_83 + anonteam_106_88 + anonteam_106_78 * 0.5, anonteam_106_84 + anonteam_106_80 * 0.5)

			if anonteam_106_9 == anonteam_106_63 then
				anonteam_0_10(anonteam_106_90, anonteam_106_72 * 1.2, anonteam_106_88, 0, 1)
			else
				local anonteam_106_91 = anonteam_106_73 * anonteam_0_131(anonteam_106_70, 0, 1, 1)
				local anonteam_106_92 = anonteam_0_94(anonteam_0_312, anonteam_0_313, anonteam_106_67 and 1 or 0)
				local anonteam_106_93 = anonteam_0_94(anonteam_0_314, anonteam_106_92, anonteam_106_89)

				anonteam_106_93.a = anonteam_106_91
				anonteam_0_311.a = anonteam_106_91 * 0.5

				anonteam_0_9(anonteam_106_90, anonteam_0_311, anonteam_106_88 + 1, 0, 1, 2)
				anonteam_0_10(anonteam_106_90, anonteam_106_93, anonteam_106_88, 0, 1)

				anonteam_0_311.a = anonteam_106_91 * 0.3

				anonteam_0_9(anonteam_106_90, anonteam_0_311, anonteam_106_88 + 1, 0, 1, 2)

				anonteam_0_311.a = anonteam_106_91 * 0.2

				anonteam_0_9(anonteam_106_90, anonteam_0_311, anonteam_106_88, 0, 1, 2)

				anonteam_0_311.a = anonteam_106_91 * 0.1

				anonteam_0_9(anonteam_106_90, anonteam_0_311, anonteam_106_88 - 1, 0, 1, 2)
			end
		end

		local anonteam_106_94 = anonteam_106_83 + anonteam_106_82

		if anonteam_106_82 > 1 then
			anonteam_106_72.a = anonteam_106_72.a * anonteam_106_70

			anonteam_0_5(anonteam_0_69(anonteam_106_94 - 4, anonteam_106_84 + 1), anonteam_0_69(anonteam_106_94 - 3, anonteam_106_84 + 1 + anonteam_106_80 - 1), anonteam_106_72)
		end

		anonteam_0_11(anonteam_0_325, anonteam_0_69(anonteam_106_94, anonteam_106_84), anonteam_106_72, nil, anonteam_106_74)

		if anonteam_106_75 ~= nil then
			anonteam_0_11(2, anonteam_0_69(anonteam_106_94, anonteam_106_84 + anonteam_106_76.y), anonteam_106_72 * 1.2, nil, anonteam_106_75)
		end
	end
end

anonteam_0_67.render(anonteam_0_333)


local anonteam_0_335 = anonteam_0_153.grenade_release



local anonteam_0_339 = {
	Frag = function(arg_107_0)
		local anonteam_107_0 = arg_107_0.damage
		local anonteam_107_1 = anonteam_0_335.hegrenade
		local anonteam_107_2 = arg_107_0.fatal

		if anonteam_107_1 > 0 and (anonteam_107_1 == 51 and anonteam_107_2 or anonteam_107_1 ~= 51 and anonteam_107_1 <= anonteam_107_0 or anonteam_107_2) then
			anonteam_0_336, anonteam_0_337 = true, anonteam_0_2()
		end
	end,
	Flash = function(arg_108_0)
		local anonteam_108_0 = arg_108_0.damage
		local anonteam_108_1 = anonteam_0_335.flashbang

		if anonteam_108_1 > 0 and anonteam_108_1 <= anonteam_108_0 then
			anonteam_0_336, anonteam_0_337 = true, anonteam_0_2()
		end
	end,
	Molly = function(arg_109_0)
		local anonteam_109_0 = arg_109_0.damage
		local anonteam_109_1 = anonteam_0_335.molotov
		local anonteam_109_2 = anonteam_109_0 / 52.5

		if anonteam_109_1 > 0 and anonteam_109_2 > 0 and anonteam_109_2 <= anonteam_109_1 then
			anonteam_0_336, anonteam_0_337 = true, anonteam_0_2()
		end
	end
}

local function anonteam_0_340(arg_110_0)
	anonteam_0_336, anonteam_0_337 = nil

	local anonteam_110_0 = anonteam_0_339[arg_110_0.type]

	if anonteam_110_0 ~= nil then
		anonteam_110_0(arg_110_0)
	end

	return true
end


local anonteam_0_342 = 1

local anonteam_0_344 = {
	[48] = true,
	[46] = true,
	[43] = true,
	[44] = true
}
local anonteam_0_345 = anonteam_0_153.settings.hotkey

local function anonteam_0_346(arg_111_0)
	if anonteam_0_104(anonteam_0_345) then
		return
	end

	if anonteam_0_336 == nil and anonteam_0_337 == nil then
		return
	end

	local anonteam_111_0 = anonteam_0_58()

	if anonteam_111_0 == nil or not anonteam_111_0:is_alive() then
		return
	end

	if not (anonteam_0_42(anonteam_111_0.m_fFlags, anonteam_0_342) ~= 0 and not arg_111_0.in_jump) and anonteam_0_335.disable_in_air then
		return
	end

	local anonteam_111_1 = anonteam_111_0:get_player_weapon()

	if anonteam_111_1 == nil then
		return
	end

	local anonteam_111_2 = anonteam_111_1:get_weapon_index()

	if anonteam_0_344[anonteam_111_2] == nil then
		return
	end

	arg_111_0.view_angles.x, arg_111_0.view_angles.y = anonteam_0_337.x, anonteam_0_337.y

	if anonteam_111_1.m_bPinPulled or anonteam_111_1.m_fThrowTime > 0 then
		arg_111_0.in_attack, arg_111_0.in_attack2 = false, false
	end
end

local anonteam_0_347 = anonteam_0_102("Visuals", "World", "Other", "Grenade Prediction")

local function anonteam_0_348()
	anonteam_0_336, anonteam_0_337 = nil

	anonteam_0_106(anonteam_0_347)

	local anonteam_112_0 = anonteam_0_104(anonteam_0_335.enabled)

	if anonteam_112_0 then
		anonteam_0_106(anonteam_0_347, true)
	end

	anonteam_0_67.grenade_prediction(anonteam_0_340, anonteam_112_0)
	anonteam_0_67.createmove(anonteam_0_346, anonteam_112_0)
end

anonteam_0_347:set_callback(anonteam_0_348, true)
anonteam_0_335.enabled:set_callback(anonteam_0_348, true)


anonteam_0_352, anonteam_0_353, anonteam_0_354 = {}, {}, {}
anonteam_0_355 = "https://northon.dev/grenade-helper-api"
anonteam_0_356 = "%s::%s"
anonteam_0_357 = "\a{Active Text}%s\aDEFAULT ~ %s"

if anonteam_0_0 then
	local anonteam_0_358 = anonteam_0_150().cloud_active_locations

	local anonteam_0_364 = {}

	local function anonteam_0_365()
		anonteam_113_0 = 0
		anonteam_113_1 = 0

		for iter_113_0 = 1, #anonteam_0_364 do
			anonteam_113_2 = anonteam_0_364[iter_113_0]
			anonteam_113_3 = anonteam_113_2[2]
			anonteam_113_4 = anonteam_113_2[3]
			anonteam_113_5 = anonteam_0_14(anonteam_0_356, anonteam_113_3, anonteam_113_4)
			anonteam_113_6 = anonteam_0_358[anonteam_113_5]

			if not anonteam_113_6 then
				local anonteam_113_7 = anonteam_0_236[anonteam_113_5] ~= nil

				anonteam_0_236[anonteam_113_5] = nil

				if anonteam_113_7 then
					anonteam_0_240()
				end
			elseif anonteam_113_6 and anonteam_0_236[anonteam_113_5] == nil then
				anonteam_113_0 = anonteam_113_0 + 1

				local anonteam_113_8 = anonteam_113_2[1]
				local anonteam_113_9 = anonteam_0_14("/%s-%s", anonteam_113_8, anonteam_113_3)

				anonteam_0_63(anonteam_0_355 .. anonteam_113_9, nil, function(arg_114_0)
					if not anonteam_113_6 then
						anonteam_0_236[anonteam_113_5] = nil

						return
					end

					anonteam_113_1 = anonteam_113_1 + 1

					if arg_114_0 == nil or #arg_114_0 == 0 then
						return
					end

					local anonteam_114_0, anonteam_114_1 = anonteam_0_37(anonteam_0_118.decode, arg_114_0, anonteam_0_113)

					if not anonteam_114_0 or anonteam_0_36(anonteam_114_1) ~= "string" then
						return
					end

					anonteam_0_236[anonteam_113_5] = anonteam_0_60(anonteam_114_1)

					if anonteam_113_0 == anonteam_113_1 then
						anonteam_0_240()
					end
				end)
			end
		end
	end

	anonteam_0_214(anonteam_0_365)
	anonteam_0_153.types.selection:set_callback(anonteam_0_365)
	anonteam_0_153.customization.options:set_callback(anonteam_0_365)

	local function anonteam_0_366()
		anonteam_0_352 = {}

		local anonteam_115_0 = {
			"\a{Link Active}\xEF\x99\x9E\aDEFAULT  New"
		}

		for iter_115_0 = 1, #anonteam_0_364 do
			local anonteam_115_1 = anonteam_0_364[iter_115_0]
			local anonteam_115_2 = anonteam_115_1[2]
			local anonteam_115_3 = anonteam_115_1[3]
			local anonteam_115_4 = anonteam_0_14(anonteam_0_356, anonteam_115_2, anonteam_115_3)
			local anonteam_115_5 = anonteam_0_14(anonteam_0_357, anonteam_115_2, anonteam_115_3)
			local anonteam_115_6 = #anonteam_115_0 + 1

			anonteam_115_0[anonteam_115_6] = (anonteam_0_358[anonteam_115_4] and "\a{Link Active}\xEF\x83\xBE\aDEFAULT   " or "\a{Link Active}\xEF\x85\x86\aDEFAULT   ") .. anonteam_115_5
			anonteam_0_352[anonteam_115_6] = anonteam_115_1
		end

		anonteam_0_153.cloud_sources.selection:update(anonteam_115_0)
		anonteam_0_365()
	end

	local function anonteam_0_367(arg_116_0)
		local anonteam_116_0 = anonteam_0_104(arg_116_0)
		local anonteam_116_1 = anonteam_116_0 == 1
		local anonteam_116_2 = #anonteam_0_353

		anonteam_0_153.cloud_sources.upload_selection:visibility(anonteam_116_1 and anonteam_116_2 > 0)
		anonteam_0_153.cloud_sources.upload_label:visibility(anonteam_116_1 and anonteam_116_2 > 0)
		anonteam_0_153.cloud_sources.upload:visibility(anonteam_116_1 and anonteam_116_2 > 0)
		anonteam_0_153.cloud_sources.upload_text:visibility(anonteam_116_1 and anonteam_116_2 == 0)
		anonteam_0_153.cloud_sources.update_selection:visibility(false)
		anonteam_0_153.cloud_sources.update_delete_label:visibility(false)
		anonteam_0_153.cloud_sources.delete_label:visibility(false)
		anonteam_0_153.cloud_sources.update:visibility(false)
		anonteam_0_153.cloud_sources.delete:visibility(false)
		anonteam_0_153.cloud_sources.delete_confirm:visibility(false)
		anonteam_0_153.cloud_sources.delete_cancel:visibility(false)

		local anonteam_116_3 = anonteam_0_352[anonteam_116_0]

		if anonteam_116_3 == nil then
			return
		end

		local anonteam_116_4 = #anonteam_0_354
		local anonteam_116_5 = anonteam_0_108 == anonteam_0_352[anonteam_116_0][2]

		anonteam_0_153.cloud_sources.update_selection:visibility(anonteam_116_5 and anonteam_116_4 > 0)
		anonteam_0_153.cloud_sources.update_delete_label:visibility(anonteam_116_5 and anonteam_116_4 > 0)
		anonteam_0_153.cloud_sources.delete_label:visibility(anonteam_116_5 and anonteam_116_4 == 0)
		anonteam_0_153.cloud_sources.update:visibility(anonteam_116_5 and anonteam_116_4 > 0)
		anonteam_0_153.cloud_sources.delete:visibility(anonteam_116_5)
		anonteam_0_153.cloud_sources.delete_confirm:visibility(false)
		anonteam_0_153.cloud_sources.delete_cancel:visibility(false)

		local anonteam_116_6 = anonteam_0_14(anonteam_0_356, anonteam_116_3[2], anonteam_116_3[3])
		local anonteam_116_7 = anonteam_0_104(anonteam_0_153.cloud_sources.enabled)
		local anonteam_116_8 = anonteam_0_358[anonteam_116_6] or false

		if anonteam_116_7 == anonteam_116_8 then
			return
		end

		anonteam_0_105(anonteam_0_153.cloud_sources.enabled, anonteam_116_8)
	end

	anonteam_0_153.cloud_sources.selection:set_callback(anonteam_0_367, true)

	function on_enabled(arg_117_0)
		local anonteam_117_0 = anonteam_0_104(anonteam_0_153.cloud_sources.selection)
		local anonteam_117_1 = anonteam_0_352[anonteam_117_0]

		if anonteam_117_1 == nil then
			return
		end

		local anonteam_117_2 = anonteam_0_14(anonteam_0_356, anonteam_117_1[2], anonteam_117_1[3])
		local anonteam_117_3 = anonteam_0_104(arg_117_0)

		if anonteam_117_3 == (anonteam_0_358[anonteam_117_2] or false) then
			return
		end

		anonteam_0_358[anonteam_117_2] = anonteam_117_3

		local anonteam_117_4 = anonteam_0_150()

		anonteam_117_4.cloud_active_locations = anonteam_0_358

		anonteam_0_151(anonteam_117_4)

		

		anonteam_0_366()
	end

	anonteam_0_153.cloud_sources.enabled:set_callback(on_enabled, true)

	local function anonteam_0_368(arg_118_0)
		if arg_118_0 == nil or #arg_118_0 == 0 then
			return
		end

		local anonteam_118_0, anonteam_118_1 = anonteam_0_37(anonteam_0_61, arg_118_0)

		if not anonteam_118_0 or anonteam_0_36(anonteam_118_1) ~= "table" then
			return
		end

		anonteam_0_364 = anonteam_118_1

		anonteam_0_366()
		anonteam_0_215:call()
		anonteam_0_367(anonteam_0_153.cloud_sources.selection)
	end

	local function anonteam_0_369()
		anonteam_0_63(anonteam_0_355, nil, anonteam_0_368)
	end

	anonteam_0_369()

	local function anonteam_0_370(arg_120_0)
		arg_120_0 = arg_120_0 .. "HELPER_CLOUD:SECRET"

		local anonteam_120_0 = 0

		anonteam_0_13(arg_120_0, ".", function(arg_121_0)
			anonteam_120_0 = anonteam_120_0 + anonteam_0_18(arg_121_0)
		end)

		local anonteam_120_1 = anonteam_120_0 * 5345

		return anonteam_0_33(anonteam_120_1)
	end

	

	local function anonteam_0_372(arg_122_0)
		if arg_122_0 ~= "success" then
			return
		end

		anonteam_0_210("Locations successfully updated")
		anonteam_0_49("Grenade Helper", "Locations Successfully Updated")
		anonteam_0_369()
	end

	local function anonteam_0_373()
		local anonteam_123_0 = anonteam_0_104(anonteam_0_153.cloud_sources.selection)
		local anonteam_123_1 = anonteam_0_354[anonteam_0_104(anonteam_0_153.cloud_sources.update_selection)]
		local anonteam_123_2 = anonteam_0_352[anonteam_123_0]

		if anonteam_123_2 == nil then
			return
		end

		local anonteam_123_3 = anonteam_123_2[1]
		local anonteam_123_4 = anonteam_123_2[2]
		local anonteam_123_5 = anonteam_123_2[3]
		local anonteam_123_6 = anonteam_0_14(anonteam_0_356, anonteam_123_4, anonteam_123_5)

		anonteam_0_236[anonteam_123_6] = nil

		local anonteam_123_7 = anonteam_0_150().locations
		
		local anonteam_123_9 = anonteam_123_7[anonteam_123_1]
		local anonteam_123_10 = anonteam_123_9.name
		local anonteam_123_11 = anonteam_123_9.locations
		local anonteam_123_12 = anonteam_0_59(anonteam_123_11)
		local anonteam_123_13 = anonteam_0_118.encode(anonteam_123_12, anonteam_0_113)
		local anonteam_123_14 = {
			id = anonteam_123_3,
			author = anonteam_0_108,
			locations = anonteam_123_13
		}
		local anonteam_123_15 = anonteam_0_62(anonteam_123_14)
		local anonteam_123_16 = {
			json = anonteam_123_15,
			signature = anonteam_0_370(anonteam_123_15)
		}

		anonteam_0_64(anonteam_0_355 .. "/update", anonteam_123_16, nil, anonteam_0_372)
	end

	anonteam_0_153.cloud_sources.update:set_callback(anonteam_0_373)

	

	local function anonteam_0_375(arg_124_0)
		if arg_124_0 ~= "success" then
			return
		end

		anonteam_0_210("Locations successfully deleted")
		anonteam_0_49("Grenade Helper", "Locations Successfully Deleted")
		anonteam_0_369()
	end

	local function anonteam_0_376()
		local anonteam_125_0 = anonteam_0_104(anonteam_0_153.cloud_sources.selection)
		local anonteam_125_1 = anonteam_0_352[anonteam_125_0]

		if anonteam_125_1 == nil then
			return
		end

		local anonteam_125_2 = anonteam_125_1[1]
		local anonteam_125_3 = anonteam_125_1[2]
		local anonteam_125_4 = anonteam_125_1[3]
		local anonteam_125_5 = anonteam_0_14(anonteam_0_356, anonteam_125_3, anonteam_125_4)

		anonteam_0_236[anonteam_125_5] = nil

		local anonteam_125_6 = {
			id = anonteam_125_2,
			author = anonteam_0_108
		}
		local anonteam_125_7 = anonteam_0_62(anonteam_125_6)
		local anonteam_125_8 = {
			json = anonteam_125_7,
			signature = anonteam_0_370(anonteam_125_7)
		}

		anonteam_0_64(anonteam_0_355 .. "/delete", anonteam_125_8, nil, anonteam_0_375)
	end

	anonteam_0_153.cloud_sources.delete_confirm:set_callback(anonteam_0_376)

	

	local function anonteam_0_378(arg_126_0)
		if arg_126_0 ~= "success" then
			return
		end

		anonteam_0_210("Locations successfully uploaded")
		anonteam_0_49("Grenade Helper", "Locations Successfully Uploaded")
		anonteam_0_369()
	end

	local function anonteam_0_379()
		local anonteam_127_0 = anonteam_0_353[anonteam_0_104(anonteam_0_153.cloud_sources.upload_selection)]
		local anonteam_127_1 = anonteam_0_150().locations
		local anonteam_127_3 = anonteam_127_1[anonteam_127_0]
		local anonteam_127_4 = anonteam_127_3.name
		local anonteam_127_5 = anonteam_127_3.locations
		local anonteam_127_6 = anonteam_0_59(anonteam_127_5)
		local anonteam_127_7 = anonteam_0_118.encode(anonteam_127_6, anonteam_0_113)
		local anonteam_127_8 = {
			author = anonteam_0_108,
			name = anonteam_127_4,
			locations = anonteam_127_7
		}
		local anonteam_127_9 = anonteam_0_62(anonteam_127_8)
		local anonteam_127_10 = {
			json = anonteam_127_9,
			signature = anonteam_0_370(anonteam_127_9)
		}

		anonteam_0_64(anonteam_0_355 .. "/upload", anonteam_127_10, nil, anonteam_0_378)
	end

	anonteam_0_153.cloud_sources.upload:set_callback(anonteam_0_379)
else
	local function anonteam_0_380(arg_128_0)
		if arg_128_0 == nil or #arg_128_0 == 0 then
			return
		end

		local anonteam_128_0, anonteam_128_1 = anonteam_0_37(anonteam_0_61, arg_128_0)

		if not anonteam_128_0 or anonteam_0_36(anonteam_128_1) ~= "table" then
			return
		end

		local anonteam_128_2 = {
			"\a{Link Active}\xEF\x99\x9E\aDEFAULT  New"
		}

		for iter_128_0 = 1, #anonteam_128_1 do
			local anonteam_128_3 = anonteam_128_1[iter_128_0]
			local anonteam_128_4 = anonteam_128_3[2]
			local anonteam_128_5 = anonteam_128_3[3]
			local anonteam_128_6 = anonteam_0_14(anonteam_0_357, anonteam_128_4, anonteam_128_5)

			anonteam_128_2[#anonteam_128_2 + 1] = "\a{Link Active}\xEF\x85\x86\aDEFAULT   " .. anonteam_128_6
		end

		anonteam_0_153.cloud_sources.selection:update(anonteam_128_2)
	end

	anonteam_0_63(anonteam_0_355, nil, anonteam_0_380)
end


local anonteam_0_382 = {
	{
		0.1,
		"kizaru",
		"nl\\scripts\\grenade helper\\helper.txt",
		"KeBA1OZtLzFUJ9SRuXYnV2Tc4dNkfmDjpyCvha37GrIQWq85lgxw6obsHEM0Pi+/="
	},
	{
		0.2,
		"brandon",
		"nl\\scripts\\grenade helper\\brandon.txt",
		"WD836KSxLOJ0ZTdflXVb4nchmzpiB59ArjMkytuvHwPURYs712IEQaqoFeGgNC+/="
	},
	{
		0.3,
		"fencai",
		"nl\\scripts\\grenade helper\\fencai.txt",
		"IOJMABGWSFCTmR08ei4cVatr6hgsYZqvpzwkfuQxb592oLXHUPlDKNj7E1n3yd+/="
	},
	{
		0.4,
		"japan_malva",
		"nl\\scripts\\grenade helper\\japan_malva.txt",
		"JPFAO6aWYSVRTCBMDXyhZ2ewqbNnjitgrUm0d4pxLz1vu9fc3kl75oGsK8HQEI+/="
	},
	{
		0.5,
		"spacex",
		"nl\\scripts\\grenade helper\\spacex.txt",
		"dtaS4Khx3R6MjfuwHl7YATbEFXvmPCLJ2y5pW98rGVUZz0QOeDsokqIB1iNgcn+/="
	},
	{
		0.6,
		"mercy",
		"nl\\scripts\\grenade helper\\mercy.txt",
		"CeASsDQFGKLWmvT8RUIkaiOVozjBfg05wpnh64MxEyc2Yl9tr31ZuP7dbNXJqH+/="
	}
}
local anonteam_0_383 = "https://northon.dev/neverlose/grenade_helper/%s.txt"

for iter_0_2 = 1, #anonteam_0_382 do
	local anonteam_0_384 = anonteam_0_382[iter_0_2]
	local anonteam_0_385 = anonteam_0_384[1]
	local anonteam_0_386 = anonteam_0_384[2]
	local anonteam_0_387 = anonteam_0_384[3]
	local anonteam_0_388 = anonteam_0_384[4]

	anonteam_0_51(anonteam_0_385, function()
		local anonteam_129_0 = anonteam_0_26(anonteam_0_136(anonteam_0_108))
		local anonteam_129_1 = anonteam_0_108 .. ":" .. anonteam_129_0
		local anonteam_129_2 = anonteam_0_33(anonteam_0_26(anonteam_0_136(anonteam_129_1)))
		local anonteam_129_3 = anonteam_0_59(anonteam_129_2)
		local anonteam_129_4 = anonteam_0_118.encode(anonteam_129_3, anonteam_0_388)
		local anonteam_129_5 = anonteam_0_118.encode(anonteam_129_4)

		if files.read(anonteam_0_387) ~= anonteam_129_5 then
			return
		end

		local anonteam_129_6 = anonteam_0_386

		if anonteam_129_6 == "japan_malva" then
			anonteam_129_6 = "japan & malva"
		end

		anonteam_0_153.cloud_sources.market_locations_label:visibility(true)

		local anonteam_129_7 = anonteam_0_153.cloud_sources.market_locations:switch(anonteam_129_6)

		local function anonteam_129_8()
			if not anonteam_0_104(anonteam_129_7) then
				local anonteam_130_0 = anonteam_0_237[anonteam_0_386] ~= nil

				anonteam_0_237[anonteam_0_386] = nil

				if anonteam_130_0 then
					anonteam_0_240()
				end

				return
			end

			anonteam_0_63(anonteam_0_14(anonteam_0_383, anonteam_0_386), nil, function(arg_131_0)
				if arg_131_0 == nil or #arg_131_0 == 0 then
					return
				end

				local anonteam_131_0, anonteam_131_1 = anonteam_0_37(anonteam_0_118.decode, arg_131_0)

				if not anonteam_131_0 then
					return
				end

				local anonteam_131_2, anonteam_131_3 = anonteam_0_37(anonteam_0_118.decode, anonteam_131_1, anonteam_0_388)

				if not anonteam_131_2 then
					return
				end

				local anonteam_131_4, anonteam_131_5 = anonteam_0_37(anonteam_0_60, anonteam_131_3)

				if not anonteam_131_4 then
					return
				end

				anonteam_0_237[anonteam_0_386] = anonteam_131_5

				anonteam_0_240()
			end)
		end

		anonteam_129_7:set_callback(anonteam_129_8, true)
		anonteam_0_214(anonteam_129_8)
		anonteam_0_153.types.selection:set_callback(anonteam_129_8)
		anonteam_0_153.customization.options:set_callback(anonteam_129_8)
	end)
end


local anonteam_0_390 = {
	weapon_flashbang = "Flashbang",
	weapon_smokegrenade = "Smoke",
	weapon_knife = "Movement",
	weapon_wallbang = "Wallbang",
	weapon_molotov = "Molotov",
	weapon_hegrenade = "HE",
	weapon_decoy = "Decoy"
}

anonteam_0_392 = anonteam_0_153.cloud_sources.selection
anonteam_0_393 = anonteam_0_153.cloud_sources.update_selection
anonteam_0_394 = anonteam_0_153.cloud_sources.upload_selection
anonteam_0_395 = anonteam_0_153.locations.selection
anonteam_0_396 = anonteam_0_150().active_locations


local function anonteam_0_398(arg_132_0, arg_132_1)
	if anonteam_0_108 == arg_132_1[2] then
		return arg_132_1[3], true
	end

	return 0, false
end

local function anonteam_0_399(arg_133_0)
	arg_133_0 = anonteam_0_150()

	local anonteam_133_0 = arg_133_0.locations

	arg_133_0 = nil

	local anonteam_133_1 = {}

	for iter_133_0 = 1, #anonteam_133_0 do
		local anonteam_133_2 = anonteam_133_0[iter_133_0]

		anonteam_133_1[#anonteam_133_1 + 1] = (anonteam_0_396[iter_133_0] and "\a{Link Active}\xEF\x83\xBE\aDEFAULT   " or "\a{Link Active}\xEF\x85\x86\aDEFAULT   ") .. anonteam_133_2.name
	end

	anonteam_133_1[#anonteam_133_1 + 1] = "\a{Link Active}\xEF\x99\x9E\aDEFAULT  New"

	anonteam_0_395:update(anonteam_133_1)

	if anonteam_0_0 then
		local anonteam_133_3 = {}
		local anonteam_133_4 = {}

		anonteam_0_353, anonteam_0_354 = {}, {}

		for iter_133_1 = 1, #anonteam_133_0 do
			local anonteam_133_5 = anonteam_133_0[iter_133_1]

			if iter_133_1 > 3 then
				if not anonteam_0_141(anonteam_0_352, anonteam_0_398)[anonteam_133_5.name] then
					anonteam_133_3[#anonteam_133_3 + 1] = anonteam_133_5.name
					anonteam_0_353[#anonteam_0_353 + 1] = iter_133_1
				end

				anonteam_133_4[#anonteam_133_4 + 1] = anonteam_133_5.name
				anonteam_0_354[#anonteam_0_354 + 1] = iter_133_1
			end
		end

		anonteam_0_393:update(anonteam_133_4)
		anonteam_0_394:update(anonteam_133_3)
		anonteam_0_105(anonteam_0_392, anonteam_0_104(anonteam_0_392))
	end

	

	anonteam_0_153.locations.on_visibility()
end

anonteam_0_399()
anonteam_0_215(anonteam_0_399)

local function anonteam_0_400(arg_134_0)
	local anonteam_134_0 = anonteam_0_104(arg_134_0)
	local anonteam_134_1 = anonteam_0_104(anonteam_0_153.locations.enabled)
	local anonteam_134_2 = anonteam_0_396[anonteam_134_0] or false

	if anonteam_134_1 == anonteam_134_2 then
		return
	end

	anonteam_0_105(anonteam_0_153.locations.enabled, anonteam_134_2)
end

anonteam_0_51(0.01, anonteam_0_395.set_callback, anonteam_0_395, anonteam_0_400, true)

local function anonteam_0_401(arg_135_0)
	local anonteam_135_0 = anonteam_0_104(anonteam_0_395)
	local anonteam_135_1 = anonteam_0_104(arg_135_0)

	if anonteam_135_1 == (anonteam_0_396[anonteam_135_0] or false) then
		return
	end

	anonteam_0_396[anonteam_135_0] = anonteam_135_1

	local anonteam_135_2 = anonteam_0_150()

	anonteam_135_2.active_locations = anonteam_0_396

	anonteam_0_151(anonteam_135_2)
	anonteam_0_399(anonteam_135_2)
	anonteam_0_240(anonteam_135_2)

	
end

anonteam_0_153.locations.enabled:set_callback(anonteam_0_401)



;(function()
	local anonteam_136_0 = {
		{
			"grenades",
			"Default: Grenade"
		},
		{
			"movements",
			"Default: Movement"
		},
		{
			"wallbangs",
			"Default: Wallbang"
		}
	}
	local anonteam_136_1 = 0
	local anonteam_136_2 = anonteam_0_150()
	local anonteam_136_3 = anonteam_136_2.locations

	if #anonteam_136_3 >= 3 then
		anonteam_136_2 = nil
		anonteam_136_3 = nil

		return
	end

	for iter_136_0 = 1, #anonteam_136_0 do
		local anonteam_136_4 = anonteam_136_0[iter_136_0]
		local anonteam_136_5 = anonteam_136_4[1]
		local anonteam_136_6 = anonteam_136_4[2]
		local anonteam_136_7 = anonteam_0_14("https://northon.dev/neverlose/grenade_helper/%s.json", anonteam_136_5)

		anonteam_0_63(anonteam_136_7, nil, function(arg_137_0)
			if arg_137_0 == nil or #arg_137_0 == 0 then
				anonteam_136_2 = nil
				anonteam_136_3 = nil

				return
			end

			local anonteam_137_0, anonteam_137_1 = anonteam_0_37(anonteam_0_61, arg_137_0)

			if not anonteam_137_0 or anonteam_0_36(anonteam_137_1) ~= "table" then
				anonteam_136_2 = nil
				anonteam_136_3 = nil

				return
			end

			anonteam_136_3[iter_136_0] = {
				name = anonteam_136_6,
				locations = anonteam_137_1
			}
			anonteam_136_1 = anonteam_136_1 + 1

			if anonteam_136_1 ~= #anonteam_136_0 then
				return
			end

			anonteam_0_151(anonteam_136_2)
			anonteam_0_399(anonteam_136_2)

			anonteam_136_2 = nil
			anonteam_136_3 = nil
		end)
	end
end)()

local anonteam_0_404 = anonteam_0_153.locations.new_source_name

local function anonteam_0_405(arg_138_0, arg_138_1)
	return arg_138_1.name, true
end

local function anonteam_0_406()
	local anonteam_139_0 = anonteam_0_104(anonteam_0_404)

	if anonteam_0_13(anonteam_139_0, " ", "") == "" then
		anonteam_139_0 = "Unnamed"
	end

	local anonteam_139_1 = anonteam_0_150()
	local anonteam_139_2 = anonteam_139_1.locations
	local anonteam_139_3 = anonteam_139_0
	local anonteam_139_4 = 2
	local anonteam_139_5 = anonteam_0_141(anonteam_139_2, anonteam_0_405)

	while anonteam_139_5[anonteam_139_3] do
		anonteam_139_3 = anonteam_0_14("%s (%d)", anonteam_139_0, anonteam_139_4)
		anonteam_139_4 = anonteam_139_4 + 1
	end

	anonteam_139_2[#anonteam_139_2 + 1] = {
		name = anonteam_139_3,
		locations = {}
	}

	anonteam_0_151(anonteam_139_1)
	anonteam_0_399(anonteam_139_1)

	anonteam_0_404:reset()
end

anonteam_0_153.locations.create:set_callback(anonteam_0_406)

local anonteam_0_408 = anonteam_0_153.locations.selection

local function anonteam_0_409()
	local anonteam_140_0 = anonteam_0_104(anonteam_0_408)
	local anonteam_140_1 = anonteam_0_150()
	local anonteam_140_2 = anonteam_140_1.locations

	anonteam_0_54(anonteam_140_2, anonteam_140_0)
	anonteam_0_151(anonteam_140_1)
	anonteam_0_399(anonteam_140_1)
	anonteam_0_240(anonteam_140_1)

	
	
end

anonteam_0_153.locations.delete_confirm:set_callback(anonteam_0_409)

local anonteam_0_411 = anonteam_0_153.locations.search
local anonteam_0_412 = anonteam_0_153.locations.all_maps
local anonteam_0_413 = anonteam_0_153.locations.locations_selection

local function anonteam_0_414(arg_141_0, arg_141_1, arg_141_2, arg_141_3, arg_141_4, arg_141_5)
	if arg_141_0 == nil then
		return
	end

	local anonteam_141_0 = arg_141_3 and "[\a{Link Active}%s\aDEFAULT] \a{Link Active}%s:\aDEFAULT %s" or "\a{Link Active}%s:\aDEFAULT %s"

	for iter_141_0 = 1, #arg_141_0 do
		local anonteam_141_1 = arg_141_0[iter_141_0]
		local anonteam_141_2 = anonteam_141_1.name

		anonteam_141_2 = anonteam_0_36(anonteam_141_2) == "table" and anonteam_141_2[2] or anonteam_141_2

		if anonteam_0_15(anonteam_0_16(anonteam_141_2), arg_141_2, 1, true) ~= nil then
			local anonteam_141_3 = #arg_141_4 + 1

			arg_141_4[anonteam_141_3] = arg_141_3 and anonteam_0_14(anonteam_141_0, arg_141_1, anonteam_0_390[anonteam_141_1.weapon], anonteam_141_2) or anonteam_0_14(anonteam_141_0, anonteam_0_390[anonteam_141_1.weapon], anonteam_141_2)
			arg_141_5[anonteam_141_3] = {
				map_name = arg_141_1,
				index = iter_141_0,
				location = anonteam_141_1
			}
		end
	end
end

local function anonteam_0_415()
	if anonteam_0_243 == nil then
		return
	end

	local anonteam_142_0 = anonteam_0_243.source.locations
	local anonteam_142_1 = {
		"\a{Link Active}\xEE\x92\xA3\aDEFAULT  New"
	}
	local anonteam_142_2 = {}
	local anonteam_142_3 = anonteam_0_16(anonteam_0_104(anonteam_0_411))
	local anonteam_142_4 = anonteam_0_216 == nil or anonteam_0_104(anonteam_0_412)

	if anonteam_142_4 then
		for iter_142_0, iter_142_1 in anonteam_0_35, anonteam_142_0 do
			anonteam_0_414(iter_142_1, iter_142_0, anonteam_142_3, anonteam_142_4, anonteam_142_1, anonteam_142_2)
		end
	else
		anonteam_0_414(anonteam_142_0[anonteam_0_216], anonteam_0_216, anonteam_142_3, anonteam_142_4, anonteam_142_1, anonteam_142_2)
	end

	anonteam_0_243.selection = anonteam_142_2

	anonteam_0_413:update(anonteam_142_1)
end

anonteam_0_153.locations.search:set_callback(anonteam_0_415)
anonteam_0_153.locations.all_maps:set_callback(anonteam_0_415)


local anonteam_0_418 = {
	weapon = "2",
	name = "1",
	viewangles = "4",
	position = "3"
}

local function anonteam_0_419(arg_143_0, arg_143_1)
	return (anonteam_0_418[arg_143_1[1]] or arg_143_1[1]) > (anonteam_0_418[arg_143_0[1]] or arg_143_0[1])
end

local anonteam_0_420 = {
	edit = render.load_image_from_file("materials\\panorama\\images\\icons\\ui\\edit.svg"),
	warning = render.load_image_from_file("materials\\panorama\\images\\icons\\ui\\warning.svg")
}

local function anonteam_0_421()
	if anonteam_0_416 == nil then
		return
	end

	local anonteam_144_0 = 0
	local anonteam_144_1 = 0
	local anonteam_144_2 = {}

	for iter_144_0 = 1, #anonteam_0_416 do
		local anonteam_144_3 = anonteam_0_416[iter_144_0]
		local anonteam_144_4 = anonteam_0_36(anonteam_144_3[1]) == "string"
		local anonteam_144_5 = anonteam_0_3(1, nil, anonteam_0_39(anonteam_144_4 and 6 or 5, anonteam_0_40(anonteam_144_3)))
		local anonteam_144_6 = anonteam_144_5.x
		local anonteam_144_7 = anonteam_144_5.y

		if anonteam_144_4 then
			anonteam_144_6 = anonteam_144_6 + 13
		end

		if anonteam_144_0 < anonteam_144_6 then
			anonteam_144_0 = anonteam_144_6
		end

		anonteam_144_2[iter_144_0] = anonteam_144_1
		anonteam_144_1 = anonteam_144_1 + anonteam_144_7

		if iter_144_0 == 1 then
			anonteam_144_1 = anonteam_144_1 + 2
		end
	end

	local anonteam_144_8 = anonteam_0_112.x - anonteam_0_29(anonteam_144_0 * 0.5)
	local anonteam_144_9 = 140

	anonteam_0_5(anonteam_0_69(anonteam_144_8 - 4, anonteam_144_9 - 3), anonteam_0_69(anonteam_144_8 - 4, anonteam_144_9 - 3) + anonteam_0_69(anonteam_144_0 + 8, anonteam_144_1 + 6), anonteam_0_88(16, 16, 16, 105))
	anonteam_0_4(anonteam_0_69(anonteam_144_8 - 5, anonteam_144_9 - 4), anonteam_0_69(anonteam_144_8 - 5, anonteam_144_9 - 4) + anonteam_0_69(anonteam_144_0 + 10, anonteam_144_1 + 8), anonteam_0_88(16, 16, 16, 120))
	anonteam_0_4(anonteam_0_69(anonteam_144_8 - 6, anonteam_144_9 - 5), anonteam_0_69(anonteam_144_8 - 6, anonteam_144_9 - 5) + anonteam_0_69(anonteam_144_0 + 12, anonteam_144_1 + 10), anonteam_0_88(16, 16, 16, 135))
	anonteam_0_4(anonteam_0_69(anonteam_144_8 - 7, anonteam_144_9 - 6), anonteam_0_69(anonteam_144_8 - 7, anonteam_144_9 - 6) + anonteam_0_69(anonteam_144_0 + 14, anonteam_144_1 + 12), anonteam_0_88(16, 16, 16, 28))
	anonteam_0_5(anonteam_0_69(anonteam_144_8 + 13, anonteam_144_9), anonteam_0_69(anonteam_144_8 + 13, anonteam_144_9) + anonteam_0_69(1, 12), anonteam_0_88())

	for iter_144_1 = 1, #anonteam_0_416 do
		local anonteam_144_10 = anonteam_0_416[iter_144_1]

		if anonteam_0_36(anonteam_144_10[1]) == "string" then
			local anonteam_144_11, anonteam_144_12, anonteam_144_13, anonteam_144_14, anonteam_144_15, anonteam_144_16 = anonteam_0_40(anonteam_144_10)

			anonteam_0_6(anonteam_0_420[anonteam_144_11], anonteam_0_69(anonteam_144_8 - 2, anonteam_144_9 + anonteam_144_2[iter_144_1]), anonteam_0_69(12, 12), anonteam_0_88(anonteam_144_12, anonteam_144_13, anonteam_144_14, 255))
			anonteam_0_11(1, anonteam_0_69(anonteam_144_8 + 13, anonteam_144_9 + anonteam_144_2[iter_144_1]), anonteam_0_88(anonteam_144_12, anonteam_144_13, anonteam_144_14, anonteam_144_15), nil, anonteam_144_16)
		else
			local anonteam_144_17, anonteam_144_18, anonteam_144_19, anonteam_144_20, anonteam_144_21 = anonteam_0_40(anonteam_0_416[iter_144_1])

			anonteam_0_11(1, anonteam_0_69(anonteam_144_8 - 2, anonteam_144_9 + anonteam_144_2[iter_144_1]), anonteam_0_88(anonteam_144_17, anonteam_144_18, anonteam_144_19, anonteam_144_20), nil, anonteam_144_21)
		end
	end
end

anonteam_0_67.render(anonteam_0_421)


local anonteam_0_423 = anonteam_0_153.locations.selection
local anonteam_0_424 = anonteam_0_153.locations.locations_selection

local function anonteam_0_425(arg_145_0)
	local anonteam_145_0 = anonteam_0_104(anonteam_0_423)
	local anonteam_145_1 = arg_145_0 or anonteam_0_150()
	local anonteam_145_2 = anonteam_145_1.locations
	local anonteam_145_3 = anonteam_145_1.active_locations
	

	anonteam_0_242 = true
	anonteam_0_243 = {
		source = anonteam_145_2[anonteam_145_0],
		source_index = anonteam_145_0,
		enabled = anonteam_145_3[anonteam_145_0]
	}

	anonteam_0_105(anonteam_0_424, 1)
	anonteam_0_415()

	
	
end

anonteam_0_153.locations.edit:set_callback(function()
	anonteam_0_425()
end)

local anonteam_0_426 = {
	[0] = "Forward",
	Forward = 0,
	Back = 180,
	[90] = "Left",
	[180] = "Back",
	[-90] = "Right",
	Right = -90,
	Left = 90
}
local anonteam_0_427 = {
	[0] = "Right",
	"Left",
	[0.5] = "Left / Right",
	["Left / Right"] = 0.5,
	Right = 0,
	Left = 1
}

local anonteam_0_429 = anonteam_0_153.builder

local function anonteam_0_430()
	local anonteam_147_0 = anonteam_0_58()

	if anonteam_147_0 == nil or not anonteam_147_0:is_alive() then
		return
	end

	local anonteam_147_1 = anonteam_147_0:get_origin()
	local anonteam_147_2 = anonteam_0_2()
	local anonteam_147_3 = anonteam_147_0.m_flDuckAmount
	local anonteam_147_4, anonteam_147_5 = anonteam_0_213(anonteam_147_0)

	if anonteam_147_4 == nil then
		return
	end

	local anonteam_147_6 = anonteam_0_243.location

	if anonteam_147_6.map_name ~= anonteam_0_216 then
		return
	end

	local anonteam_147_7 = anonteam_0_104(anonteam_0_429.type)

	if anonteam_147_5 == "weapon_wallbang" and anonteam_147_7 ~= "Wallbang" then
		anonteam_0_105(anonteam_0_429.type, "Wallbang")
	elseif anonteam_147_7 == "Wallbang" then
		anonteam_147_5 = "weapon_wallbang"
	end

	local anonteam_147_8 = anonteam_147_6.editing

	anonteam_147_8.position = {
		anonteam_147_1.x,
		anonteam_147_1.y,
		anonteam_147_1.z
	}
	anonteam_147_8.viewangles = {
		anonteam_147_2.x,
		anonteam_147_2.y
	}
	anonteam_147_8.weapon = anonteam_147_5
	anonteam_147_8.duck = anonteam_147_3 == 1 or nil
	anonteam_147_8.strafer = nil

	anonteam_0_240(nil, anonteam_0_243)
end

anonteam_0_429.set_location:set_callback(anonteam_0_430)


local anonteam_0_432 = cvar.sv_cheats
local anonteam_0_433 = anonteam_0_432.int

local function anonteam_0_434()
	local anonteam_148_0 = anonteam_0_243.location

	if anonteam_148_0.map_name ~= anonteam_0_216 then
		return
	end

	local anonteam_148_1 = anonteam_148_0.editing
	local anonteam_148_2 = anonteam_148_1.position
	local anonteam_148_3 = anonteam_148_1.viewangles
	local anonteam_148_4 = anonteam_148_1.weapon

	if anonteam_148_2 == nil or anonteam_148_3 == nil or anonteam_148_4 == nil then
		return
	end

	if anonteam_148_4 == "weapon_molotov" then
		anonteam_148_4 = "weapon_molotov; use weapon_incgrenade"
	end

	local anonteam_148_5 = anonteam_0_433(anonteam_0_432)

	anonteam_0_433(anonteam_0_432, 1)
	anonteam_0_52(anonteam_0_14("noclip off; setpos_exact %s %s %s; setang %s %s; use %s", anonteam_148_2[1], anonteam_148_2[2], anonteam_148_2[3], anonteam_148_3[1], anonteam_148_3[2], anonteam_148_4))
	anonteam_0_51(0.01, anonteam_0_433, anonteam_0_432, anonteam_148_5)
end

anonteam_0_153.builder.teleport:set_callback(anonteam_0_434)


local anonteam_0_438 = anonteam_0_153.builder

local function anonteam_0_439()
	if anonteam_0_243 == nil then
		return
	end

	local anonteam_149_0 = anonteam_0_243.location
	local anonteam_149_1 = anonteam_149_0.index
	local anonteam_149_2 = anonteam_149_0.editing
	local anonteam_149_3 = anonteam_149_0.original
	local anonteam_149_4 = anonteam_0_104(anonteam_0_438.name)
	local anonteam_149_5 = anonteam_0_104(anonteam_0_438.description)

	if anonteam_0_13(anonteam_149_4, " ", "") == "" then
		anonteam_149_4 = "Unnamed"
	end

	

	anonteam_149_6 = anonteam_0_13(anonteam_149_5, " ", "") ~= "" and anonteam_0_13(anonteam_0_13(anonteam_149_5, "^%s+", ""), "%s+$", "") or nil
	anonteam_149_2.name, anonteam_149_2.description = anonteam_149_4, anonteam_149_6

	local anonteam_149_7, anonteam_149_8 = anonteam_0_104(anonteam_0_438.type)

	if anonteam_149_7 == "Grenade" then
		if anonteam_0_104(anonteam_0_438.jump) then
			anonteam_149_8 = anonteam_149_8 or {}
			anonteam_149_8.jump = true
		end

		local anonteam_149_9 = anonteam_0_104(anonteam_0_438.run)

		if anonteam_149_9 ~= "Disabled" then
			anonteam_149_8 = anonteam_149_8 or {}
			anonteam_149_8.run = anonteam_0_104(anonteam_0_438.run_duration)

			local anonteam_149_10 = anonteam_149_9 == "Custom" and anonteam_0_104(anonteam_0_438.run_custom) or anonteam_0_426[anonteam_149_9]

			anonteam_149_8.run_yaw = anonteam_149_10 ~= 0 and anonteam_149_10 or nil
			anonteam_149_8.run_speed = anonteam_0_104(anonteam_0_438.run_walk) or nil
		end

		local anonteam_149_11 = anonteam_0_104(anonteam_0_438.recovery)

		if anonteam_149_11 ~= "Disabled" then
			anonteam_149_8 = anonteam_149_8 or {}
			anonteam_149_8.recovery_yaw = anonteam_149_11 == "Custom" and anonteam_0_104(anonteam_0_438.recovery_custom) or anonteam_0_426[anonteam_149_11]
			anonteam_149_8.recovery_jump = anonteam_0_104(anonteam_0_438.recovery_bunnyhop) or nil
		end

		local anonteam_149_12 = anonteam_0_104(anonteam_0_438.strength)

		if anonteam_149_12 ~= "Left" then
			anonteam_149_8 = anonteam_149_8 or {}
			anonteam_149_8.strength = anonteam_0_427[anonteam_149_12]
		end

		local anonteam_149_13 = anonteam_0_104(anonteam_0_438.delay)

		if anonteam_149_13 > 0 then
			anonteam_149_8 = anonteam_149_8 or {}
			anonteam_149_8.delay = anonteam_149_13
		end

		anonteam_149_2.movement = nil
	elseif anonteam_149_7 == "Wallbang" then
		anonteam_149_2.weapon = "weapon_wallbang"
		anonteam_149_2.movement = nil
	end

	anonteam_149_2.grenade = anonteam_149_8

	local anonteam_149_14 = anonteam_149_2.position ~= nil and anonteam_149_2.viewangles ~= nil and anonteam_149_2.weapon ~= nil

	if anonteam_149_14 then
		anonteam_0_240(nil, anonteam_0_243)
	elseif anonteam_149_1 == 0 and not anonteam_149_14 then
		anonteam_0_240()
	end

	local anonteam_149_15 = false
	local anonteam_149_16 = anonteam_0_142(anonteam_149_2)
	local anonteam_149_17 = anonteam_0_142(anonteam_149_3)
	local anonteam_149_18 = {}

	for iter_149_0, iter_149_1 in anonteam_0_35, anonteam_149_16 do
		local anonteam_149_19 = anonteam_0_36(iter_149_1) ~= "table" and anonteam_0_33(iter_149_1) or anonteam_0_62(iter_149_1)
		local anonteam_149_20 = anonteam_149_17[iter_149_0]

		anonteam_149_20 = iter_149_0 == "name" and anonteam_0_36(anonteam_149_20) == "table" and anonteam_149_20[2] or anonteam_149_20

		local anonteam_149_21 = anonteam_149_19 ~= (anonteam_0_36(anonteam_149_20) ~= "table" and anonteam_0_33(anonteam_149_20) or anonteam_0_62(anonteam_149_20))

		if anonteam_149_21 then
			anonteam_149_15 = true
		end

		if iter_149_0 == "movement.steps" then
			iter_149_0, anonteam_149_19 = "movement", iter_149_1 ~= nil and #iter_149_1
		elseif iter_149_0 == "movement.frames" then
			iter_149_0, anonteam_149_19 = "movement", iter_149_1 ~= nil and #iter_149_1
		end

		local anonteam_149_22 = {}
		local anonteam_149_23 = anonteam_0_119.highlight(anonteam_149_19, anonteam_149_21 and {
			244,
			147,
			134
		} or {
			221,
			221,
			221
		}, anonteam_149_21 and {
			223,
			57,
			35
		} or {
			218,
			230,
			30
		}, anonteam_149_21 and {
			209,
			42,
			62
		} or {
			180,
			230,
			30
		}, anonteam_149_21 and {
			209,
			42,
			62
		} or {
			96,
			160,
			220
		})

		for iter_149_2 = 1, #anonteam_149_23 do
			local anonteam_149_24 = anonteam_149_23[iter_149_2]
			local anonteam_149_25 = anonteam_149_24[1]
			local anonteam_149_26 = anonteam_149_24[2]
			local anonteam_149_27 = anonteam_149_24[3]
			local anonteam_149_28 = anonteam_149_24[4]

			anonteam_149_22[#anonteam_149_22 + 1] = anonteam_0_14("\a%02X%02X%02XFF%s", anonteam_149_25, anonteam_149_26, anonteam_149_27, anonteam_149_28)
		end

		local anonteam_149_29 = anonteam_0_55(anonteam_149_22)

		anonteam_149_18[#anonteam_149_18 + 1] = {
			iter_149_0,
			anonteam_149_29,
			anonteam_149_21
		}
	end

	anonteam_0_56(anonteam_149_18, anonteam_0_419)

	anonteam_0_416 = {
		{
			"edit",
			255,
			255,
			255,
			220,
			" Editing Location:"
		}
	}

	for iter_149_3, iter_149_4 in anonteam_0_35, anonteam_149_18 do
		anonteam_0_416[#anonteam_0_416 + 1] = {
			255,
			255,
			255,
			220,
			iter_149_4[1] .. ": " .. iter_149_4[2]
		}
	end

	local anonteam_149_30 = anonteam_149_2.weapon
	local anonteam_149_31 = anonteam_149_30 == nil or anonteam_0_153.types[anonteam_149_30]
	local anonteam_149_32 = anonteam_0_243.enabled

	if anonteam_149_15 or not anonteam_149_31 or not anonteam_149_32 then
		anonteam_0_416[#anonteam_0_416 + 1] = {
			255,
			255,
			255,
			255,
			" "
		}
	end

	if anonteam_149_15 then
		anonteam_0_416[#anonteam_0_416 + 1] = {
			"warning",
			234,
			64,
			18,
			220,
			"You have unsaved changes! Make sure to click Save."
		}
	end

	if not anonteam_149_31 then
		anonteam_0_416[#anonteam_0_416 + 1] = {
			"warning",
			234,
			64,
			18,
			220,
			anonteam_0_14("Location not shown because type \"%s\" is not enabled.", anonteam_0_390[anonteam_149_30])
		}
	end

	if not anonteam_149_32 then
		anonteam_0_416[#anonteam_0_416 + 1] = {
			"warning",
			234,
			64,
			18,
			220,
			anonteam_0_14("Location not shown because source \"%s\" is not enabled.", anonteam_0_243.source.name)
		}
	end

	anonteam_0_437 = #anonteam_0_416 + 1
end

local anonteam_0_440 = {
	teleport = true,
	record = true,
	export = true,
	save = true
}

local function anonteam_0_441(arg_150_0)
	for iter_150_0, iter_150_1 in anonteam_0_35, anonteam_0_438 do
		if anonteam_0_440[iter_150_0] == nil then
			if arg_150_0 then
				iter_150_1:set_callback(anonteam_0_439)
			else
				iter_150_1:unset_callback(anonteam_0_439)
			end
		end
	end
end

anonteam_0_441(true)
anonteam_0_153.types.selection:set_callback(anonteam_0_439)

anonteam_0_442 = {}
anonteam_0_443 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Duck")
anonteam_0_444 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Strafe")
anonteam_0_445 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Quick Stop")
anonteam_0_446 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Strafe", "WASD Strafe")
anonteam_0_447 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Air Strafe", "Smoothing")
anonteam_0_448 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Strafe Assist")
anonteam_0_449 = anonteam_0_102("Miscellaneous", "Main", "Movement", "Edge Jump")
anonteam_0_450 = anonteam_0_153.builder
anonteam_0_451 = anonteam_0_450.set_location_hotkey
anonteam_0_452 = anonteam_0_450.teleport_hotkey
anonteam_0_453 = anonteam_0_451.get



local function anonteam_0_456(arg_151_0)
	if anonteam_0_243 == nil then
		anonteam_0_442 = {}

		return
	end

	local anonteam_151_0 = anonteam_0_453(anonteam_0_451)

	if anonteam_151_0 and anonteam_0_455 == nil then
		anonteam_0_455 = true

		anonteam_0_430()
	elseif not anonteam_151_0 then
		anonteam_0_455 = nil
	end

	local anonteam_151_1 = anonteam_0_453(anonteam_0_452)

	if anonteam_151_1 and anonteam_0_454 == nil then
		anonteam_0_454 = true

		anonteam_0_434()
	elseif not anonteam_151_1 then
		anonteam_0_454 = nil
	end

	if anonteam_0_453(anonteam_0_450.type) ~= "Movement" then
		anonteam_0_442 = {}

		return
	end

	local anonteam_151_2 = anonteam_0_58()

	if anonteam_151_2 == nil or not anonteam_151_2:is_alive() then
		anonteam_0_442 = {}

		return
	end

	local anonteam_151_3 = anonteam_0_243.location.editing
	local anonteam_151_4 = anonteam_0_442.start_at
	local anonteam_151_5 = anonteam_0_442.movement

	if not anonteam_0_453(anonteam_0_450.record) then
		if anonteam_151_5 ~= nil then
			anonteam_151_3.movement = anonteam_151_5

			anonteam_0_439()
		end

		anonteam_0_442 = {}

		return
	end

anonteam_151_6, anonteam_151_7 = anonteam_0_213(anonteam_151_2)
anonteam_151_8 = anonteam_151_2:get_origin()
anonteam_151_9 = anonteam_0_2()
anonteam_151_10 = anonteam_151_2.m_vecAbsVelocity:length2d()

	if anonteam_151_4 == nil and anonteam_151_10 < 2 then
		anonteam_151_3.position, anonteam_151_3.viewangles = {
			anonteam_151_8.x,
			anonteam_151_8.y,
			anonteam_151_8.z
		}, {
			anonteam_151_9.x,
			anonteam_151_9.y
		}
		anonteam_151_3.weapon = anonteam_151_7

		if anonteam_151_3.strafer == nil then
			anonteam_151_3.strafer = {}
			anonteam_151_3.strafer.quick_stop = anonteam_0_453(anonteam_0_445)
			anonteam_151_3.strafer.air_strafe = anonteam_0_453(anonteam_0_444)
			anonteam_151_3.strafer.wasd_strafer = anonteam_0_453(anonteam_0_446)
			anonteam_151_3.strafer.strafer_smoothing = anonteam_0_453(anonteam_0_447)
		end

		anonteam_151_4, anonteam_151_5 = arg_151_0.command_number, {
			steps = {}
		}
		anonteam_0_442.start_at, anonteam_0_442.movement = anonteam_151_4, anonteam_151_5
	end

	local anonteam_151_11 = anonteam_151_4 == nil and 0 or arg_151_0.command_number - anonteam_0_442.start_at

	anonteam_0_416[anonteam_0_437] = {
		234,
		64,
		18,
		220,
		anonteam_0_14("Recorded for %.2fs", anonteam_0_68.tickinterval * anonteam_151_11)
	}

	if anonteam_151_11 == 0 then
		return
	end

	anonteam_0_106(anonteam_0_443, false)
	anonteam_0_106(anonteam_0_444)
	anonteam_0_106(anonteam_0_448, true)
	anonteam_0_106(anonteam_0_449, false)

	

	if arg_151_0.in_forward then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_forward = true
	end

	if arg_151_0.in_moveleft then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_moveleft = true
	end

	if arg_151_0.in_moveright then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_moveright = true
	end

	if arg_151_0.in_back then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_back = true
	end

	if arg_151_0.in_duck then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_duck = true
	end

	if arg_151_0.in_attack then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_attack = true
	end

	if arg_151_0.in_attack2 then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_attack2 = true
	end

	if arg_151_0.in_jump then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_jump = true
	end

	if arg_151_0.in_use then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_use = true
	end

	if arg_151_0.in_speed then
		anonteam_151_12 = anonteam_151_12 or {}
		anonteam_151_12.in_speed = true
	end

	local anonteam_151_13 = arg_151_0.move_yaw
	local anonteam_151_14 = arg_151_0.forwardmove
	local anonteam_151_15 = arg_151_0.sidemove

	anonteam_151_5.steps[#anonteam_151_5.steps + 1] = {
		move_yaw = anonteam_151_13,
		forwardmove = anonteam_151_14 ~= 0 and anonteam_151_14 or nil,
		sidemove = anonteam_151_15 ~= 0 and anonteam_151_15 or nil,
		buttons = anonteam_151_12,
		viewangles = {
			anonteam_151_9.x,
			anonteam_151_9.y
		}
	}
end

anonteam_0_67.createmove(anonteam_0_456)


local anonteam_0_458 = anonteam_0_153.builder
local anonteam_0_459 = anonteam_0_153.locations.locations_selection

local function anonteam_0_460()
	if anonteam_0_243 == nil then
		return
	end

	anonteam_0_441(false)

	local anonteam_152_0 = anonteam_0_104(anonteam_0_459)
	local anonteam_152_1 = anonteam_0_243.selection[anonteam_152_0]

	if anonteam_152_1 == nil then
		anonteam_0_458.type:reset()
		anonteam_0_458.name:reset()
		anonteam_0_458.description:reset()
		anonteam_0_458.jump:reset()
		anonteam_0_458.run:reset()
		anonteam_0_458.run_custom:reset()
		anonteam_0_458.run_duration:reset()
		anonteam_0_458.run_walk:reset()
		anonteam_0_458.recovery:reset()
		anonteam_0_458.recovery_custom:reset()
		anonteam_0_458.recovery_bunnyhop:reset()
		anonteam_0_458.strength:reset()
		anonteam_0_458.delay:reset()

		anonteam_0_243.location = {
			index = 0,
			map_name = anonteam_0_216,
			editing = {},
			original = {}
		}

		anonteam_0_439()

		return anonteam_0_441(true)
	end

	local anonteam_152_2 = anonteam_152_1.map_name
	local anonteam_152_3 = anonteam_152_1.index
	local anonteam_152_4 = anonteam_0_243.source.locations[anonteam_152_2][anonteam_152_3]

	if anonteam_152_4.movement ~= nil then
		anonteam_0_105(anonteam_0_458.type, "Movement")
	elseif anonteam_152_4.weapon == "weapon_wallbang" then
		anonteam_0_105(anonteam_0_458.type, "Wallbang")
	else
		anonteam_0_105(anonteam_0_458.type, "Grenade")
	end

	local anonteam_152_5 = anonteam_152_4.name
	local anonteam_152_6 = anonteam_152_4.description or ""

	anonteam_152_5 = anonteam_0_36(anonteam_152_5) == "table" and anonteam_152_5[2] or anonteam_152_5

	anonteam_0_105(anonteam_0_458.name, anonteam_152_5)
	anonteam_0_105(anonteam_0_458.description, anonteam_152_6)

	local anonteam_152_7 = anonteam_152_4.grenade or {}
	local anonteam_152_8 = anonteam_152_7.jump or false

	anonteam_0_105(anonteam_0_458.jump, anonteam_152_8)

	local anonteam_152_9 = anonteam_152_7.run
	local anonteam_152_10 = anonteam_152_7.run_yaw
	local anonteam_152_11 = anonteam_152_7.run_speed or false
	local anonteam_152_12 = anonteam_152_9 == nil and "Disabled" or anonteam_152_10 == nil and "Forward" or anonteam_0_426[anonteam_152_10] or "Custom"

	anonteam_0_105(anonteam_0_458.run, anonteam_152_12)
	anonteam_0_105(anonteam_0_458.run_custom, anonteam_152_10 or 0)
	anonteam_0_105(anonteam_0_458.run_duration, anonteam_152_9 or 0)
	anonteam_0_105(anonteam_0_458.run_walk, anonteam_152_11)

	local anonteam_152_13 = anonteam_152_7.recovery_yaw
	local anonteam_152_14 = anonteam_152_7.recovery_jump or false
	local anonteam_152_15 = anonteam_152_13 == nil and "Disabled" or anonteam_0_426[anonteam_152_13] or "Custom"

	anonteam_0_105(anonteam_0_458.recovery, anonteam_152_15)
	anonteam_0_105(anonteam_0_458.recovery_custom, anonteam_152_13 or 0)
	anonteam_0_105(anonteam_0_458.recovery_bunnyhop, anonteam_152_14)

	local anonteam_152_16 = anonteam_0_427[anonteam_152_7.strength or 1]

	anonteam_0_105(anonteam_0_458.strength, anonteam_152_16)

	local anonteam_152_17 = anonteam_152_7.delay or 0

	anonteam_0_105(anonteam_0_458.delay, anonteam_152_17)

	anonteam_0_243.location = {
		index = anonteam_152_3,
		map_name = anonteam_0_216,
		editing = anonteam_0_140(anonteam_152_4),
		original = anonteam_152_4
	}

	anonteam_0_439()
	anonteam_0_441(true)
end

anonteam_0_459:set_callback(anonteam_0_460)



local function anonteam_0_462()
	local anonteam_153_0 = anonteam_0_243.location.editing
	local anonteam_153_1 = anonteam_0_62(anonteam_153_0)
	local anonteam_153_2 = anonteam_0_119.format(anonteam_153_1, "\n", "  ")

	anonteam_0_119.print_highlighted(anonteam_153_2)
	anonteam_0_117.set(anonteam_153_2)
end

anonteam_0_153.builder.export:set_callback(anonteam_0_462)



local function anonteam_0_464()
	local anonteam_154_0 = anonteam_0_243.location
	local anonteam_154_1 = anonteam_154_0.editing

	if anonteam_154_1.position == nil or anonteam_154_1.viewangles == nil or anonteam_154_1.weapon == nil then
		return
	end

	local anonteam_154_2 = anonteam_0_243.source_index
	local anonteam_154_3 = anonteam_0_150()
	local anonteam_154_4 = anonteam_154_3.locations[anonteam_154_2].locations
	local anonteam_154_5 = anonteam_154_0.index
	local anonteam_154_6 = anonteam_154_0.map_name

	if anonteam_154_5 == 0 then
		local anonteam_154_7 = anonteam_154_4[anonteam_154_6]

		if anonteam_154_7 == nil then
			anonteam_154_7 = {}
			anonteam_154_4[anonteam_154_6] = anonteam_154_7
		end

		anonteam_154_7[#anonteam_154_7 + 1] = anonteam_154_1
	else
		anonteam_154_4[anonteam_154_6][anonteam_154_5] = anonteam_154_1
	end

	anonteam_0_151(anonteam_154_3)
	anonteam_0_425(anonteam_154_3)

	
	

	anonteam_0_460()
end

anonteam_0_153.builder.save:set_callback(anonteam_0_464)



local function anonteam_0_466(arg_155_0)
	if anonteam_0_36(arg_155_0) ~= "table" then
		return false, "wrong type, expected table"
	end

	local anonteam_155_0 = arg_155_0.name

	if (anonteam_0_36(anonteam_155_0) ~= "string" or not (#anonteam_155_0 > 0)) and (anonteam_0_36(anonteam_155_0) ~= "table" or #anonteam_155_0 ~= 2) then
		return false, "invalid name, expected string or table of length 2"
	end

	local anonteam_155_1 = arg_155_0.description

	if anonteam_155_1 ~= nil and (anonteam_0_36(anonteam_155_1) ~= "string" or #anonteam_155_1 == 0) then
		return false, "invalid description, expected nil or non-empty string"
	end

	local anonteam_155_2 = arg_155_0.weapon

	if anonteam_0_36(anonteam_155_2) ~= "string" or #anonteam_155_2 == 0 then
		return false, "invalid weapon"
	end

	local anonteam_155_3 = arg_155_0.position

	if anonteam_0_36(anonteam_155_3) == "table" and #anonteam_155_3 == 3 then
		if anonteam_0_36(anonteam_155_3[1]) ~= "number" or anonteam_0_36(anonteam_155_3[2]) ~= "number" or anonteam_0_36(anonteam_155_3[3]) ~= "number" then
			return false, "invalid type in position"
		end
	else
		return false, "invalid position"
	end

	local anonteam_155_4 = arg_155_0.viewangles

	if anonteam_0_36(anonteam_155_4) == "table" or #anonteam_155_4 == 2 then
		if anonteam_0_36(anonteam_155_4[1]) ~= "number" or anonteam_0_36(anonteam_155_4[2]) ~= "number" then
			return false, "invalid type in viewangles"
		end
	else
		return false, "invalid viewangles"
	end

	local anonteam_155_5 = arg_155_0.duck

	if anonteam_155_5 ~= nil and anonteam_0_36(anonteam_155_5) ~= "boolean" then
		return false, "invalid duck"
	end

	return true
end


local anonteam_0_468 = {}

for iter_0_3 = 128, 255 do
	anonteam_0_468[#anonteam_0_468 + 1] = anonteam_0_19(iter_0_3)
end

local anonteam_0_469 = anonteam_0_55(anonteam_0_468)
local anonteam_0_470 = anonteam_0_14("[%s]", anonteam_0_469)

local function anonteam_0_471(arg_156_0)
	return anonteam_0_13(arg_156_0, anonteam_0_470, "")
end

local function anonteam_0_472(arg_157_0, arg_157_1, arg_157_2, arg_157_3)
	if anonteam_0_36(arg_157_2) ~= "string" or anonteam_0_15(arg_157_2, " ") ~= nil then
		return anonteam_0_210(anonteam_0_14("Failed to import: Invalid map name (%s)", arg_157_2))
	end

	if arg_157_1 == nil then
		return
	end

	local anonteam_157_0 = arg_157_0[arg_157_2]

	if anonteam_157_0 == nil then
		anonteam_157_0 = {}
		arg_157_0[arg_157_2] = anonteam_157_0
	end

	for iter_157_0 = 1, #arg_157_1 do
		local anonteam_157_1 = arg_157_1[iter_157_0]
		local anonteam_157_2 = anonteam_157_1.position
		local anonteam_157_3 = anonteam_157_1.viewangles
		local anonteam_157_4 = arg_157_2 .. anonteam_157_1.weapon .. anonteam_157_2[1] .. anonteam_157_2[2] .. anonteam_157_2[3] .. anonteam_157_3[1] .. anonteam_157_3[2]

		if arg_157_3[anonteam_157_4] == nil then
			local anonteam_157_5, anonteam_157_6 = anonteam_0_466(anonteam_157_1)

			if anonteam_157_5 then
				anonteam_157_0[#anonteam_157_0 + 1] = anonteam_157_1
			else
				anonteam_0_210(anonteam_0_14("[%s] location: [%s] skipped due to %s", arg_157_2, iter_157_0, anonteam_157_6))
			end

			arg_157_3[anonteam_157_4] = iter_157_0
		else
			anonteam_0_210(anonteam_0_14("[%s] location: [%s] skipped due to duplication [%s]", arg_157_2, iter_157_0, arg_157_3[anonteam_157_4]))
		end
	end
end

local function anonteam_0_473()
	local anonteam_158_0 = anonteam_0_117.get()

	if anonteam_158_0 == nil then
		return anonteam_0_210("Failed to import: Clipboard is empty")
	end

	local anonteam_158_1 = anonteam_0_471(anonteam_158_0)
	local anonteam_158_2, anonteam_158_3 = anonteam_0_37(anonteam_0_61, anonteam_158_1)

	if not anonteam_158_2 or anonteam_0_36(anonteam_158_3) ~= "table" then
		return anonteam_0_210("Failed to import: Invalid JSON")
	end

	local anonteam_158_4 = anonteam_0_12(anonteam_158_1, 1, 1) == "["

	if not anonteam_158_4 and (anonteam_158_3.name ~= nil or anonteam_158_3.grenade ~= nil or anonteam_158_3.weapon ~= nil) then
		anonteam_158_3 = {
			anonteam_158_3
		}
		anonteam_158_4 = true
	end

	local anonteam_158_5 = anonteam_0_243.source.locations
	local anonteam_158_6 = {}

	for iter_158_0, iter_158_1 in anonteam_0_35, anonteam_158_5 do
		for iter_158_2 = 1, #iter_158_1 do
			local anonteam_158_7 = iter_158_1[iter_158_2]
			local anonteam_158_8 = anonteam_158_7.position
			local anonteam_158_9 = anonteam_158_7.viewangles

			anonteam_158_6[iter_158_0 .. anonteam_158_7.weapon .. anonteam_158_8[1] .. anonteam_158_8[2] .. anonteam_158_8[3] .. anonteam_158_9[1] .. anonteam_158_9[2]] = iter_158_2
		end
	end

	if anonteam_158_4 then
		anonteam_0_472(anonteam_158_5, anonteam_158_3, anonteam_0_216, anonteam_158_6)
	else
		for iter_158_3, iter_158_4 in anonteam_0_35, anonteam_158_3 do
			anonteam_0_472(anonteam_158_5, iter_158_4, iter_158_3, anonteam_158_6)
		end
	end

	local anonteam_158_10 = anonteam_0_243.source_index
	local anonteam_158_11 = anonteam_0_243.enabled
	local anonteam_158_12 = anonteam_0_150()

	anonteam_158_12.locations[anonteam_158_10].locations = anonteam_158_5

	anonteam_0_151(anonteam_158_12)
	anonteam_0_415()

	if anonteam_158_11 then
		anonteam_0_240()
	end

	
	
end

anonteam_0_153.locations.import:set_callback(anonteam_0_473)


local anonteam_0_475 = anonteam_0_153.locations.all_maps

local function anonteam_0_476()
	local anonteam_159_0 = anonteam_0_243.source.locations

	if not (anonteam_0_104(anonteam_0_475) and anonteam_0_216 ~= nil) then
		anonteam_159_0 = anonteam_159_0[anonteam_0_216]
	end

	if anonteam_159_0 == nil or anonteam_0_35(anonteam_159_0) == nil then
		return
	end

	local anonteam_159_1 = anonteam_0_62(anonteam_159_0)
	local anonteam_159_2 = anonteam_0_119.format(anonteam_159_1, "\n", "  ")

	anonteam_0_119.print_highlighted(anonteam_159_2)
	anonteam_0_117.set(anonteam_159_2)
end

anonteam_0_153.locations.export:set_callback(anonteam_0_476)


local anonteam_0_478 = anonteam_0_153.locations.locations_selection

local function anonteam_0_479()
	 anonteam_160_0 = anonteam_0_104(anonteam_0_478)
	 anonteam_160_1 = anonteam_0_243.selection[anonteam_160_0]
	 anonteam_160_2 = anonteam_0_243.source.locations
	 anonteam_160_3 = anonteam_160_1.map_name
	 anonteam_160_4 = anonteam_160_1.index
	 anonteam_160_5 = anonteam_160_2[anonteam_160_3]

	anonteam_0_54(anonteam_160_5, anonteam_160_4)

	if #anonteam_160_5 == 0 then
		anonteam_160_2[anonteam_160_3] = nil
	end

	local anonteam_160_6 = anonteam_0_243.source_index
	local anonteam_160_7 = anonteam_0_243.enabled
	local anonteam_160_8 = anonteam_0_150()

	anonteam_160_8.locations[anonteam_160_6].locations = anonteam_160_2

	anonteam_0_151(anonteam_160_8)
	anonteam_0_415()

	if anonteam_160_7 then
		anonteam_0_240()
	end

	
	

	anonteam_0_105(anonteam_0_478, anonteam_160_0 - 1)
end

anonteam_0_153.locations.delete_location_confirm:set_callback(anonteam_0_479)


local anonteam_0_481 = anonteam_0_153.locations.locations_selection

local function anonteam_0_482()
	anonteam_0_242 = false
	anonteam_0_243 = nil
	anonteam_0_416 = nil

	anonteam_0_481:update({})
	anonteam_0_240()
end

anonteam_0_153.locations.back:set_callback(anonteam_0_482)
