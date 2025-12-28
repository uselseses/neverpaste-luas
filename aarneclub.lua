_DEBUG = true

local anonteam_0_0 = false
local anonteam_0_1 = anonteam_0_0 and "Beta" or "Stable"
local anonteam_0_2 = {}
local anonteam_0_3 = {}
local anonteam_0_4 = {
	this_call = function(arg_1_0, arg_1_1)
		return function(...)
			return arg_1_0(arg_1_1, ...)
		end
	end
}
local anonteam_0_5 = {}
local anonteam_0_6 = require("neverlose/pui")
local anonteam_0_7 = require("neverlose/base64")
local anonteam_0_8 = require("neverlose/gradient")
local anonteam_0_9 = require("neverlose/clipboard")

local function anonteam_0_10(arg_3_0, arg_3_1, arg_3_2)
	table.insert(arg_3_0, setmetatable(arg_3_1, {
		__index = arg_3_2
	}))
end

local function anonteam_0_11(arg_4_0, arg_4_1)
	local anonteam_4_0 = arg_4_0 and arg_4_0 or {}

	for iter_4_0, iter_4_1 in ipairs(anonteam_4_0) do
		if arg_4_1 == iter_4_1 then
			return true
		end
	end

	return false
end

local function anonteam_0_12(arg_5_0)
	local anonteam_5_0 = {}

	for iter_5_0, iter_5_1 in pairs(arg_5_0) do
		table.insert(anonteam_5_0, iter_5_0)
	end

	return anonteam_5_0
end

local function anonteam_0_13(arg_6_0, arg_6_1)
	local anonteam_6_0 = {}

	for iter_6_0, iter_6_1 in ipairs(arg_6_0) do
		if iter_6_1 ~= arg_6_1 then
			table.insert(anonteam_6_0, iter_6_1)
		end
	end

	return anonteam_6_0
end

local function anonteam_0_14()
	return math.floor(math.sin(math.abs(-math.pi + globals.curtime * 1.5 % (math.pi * 2))) * 100) / 100
end

local anonteam_0_15 = {
	user = common.get_username(),
	screen = render.screen_size()
}
local anonteam_0_16 = {
	slow_wark = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"),
	double_tap = ui.find("Aimbot", "Ragebot", "Main", "Double Tap"),
	hide_shots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"),
	fake_duck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck"),
	roll = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles"),
	body_aim = ui.find("Aimbot", "Ragebot", "Safety", "Body Aim"),
	safe_points = ui.find("Aimbot", "Ragebot", "Safety", "Safe Points"),
	dormant_aimbot = ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Dormant Aimbot"),
	peek_assist = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"),
	auto_stop = ui.find("Aimbot", "Ragebot", "Accuracy", "Auto Stop", "Options"),
	dt_auto_stop = ui.find("Aimbot", "Ragebot", "Accuracy", "Auto Stop", "Double Tap"),
	freestanding = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding")
}
local anonteam_0_17 = {}
local anonteam_0_18 = {
	create_draggable = function(arg_8_0, arg_8_1, arg_8_2, arg_8_3, arg_8_4, arg_8_5)
		local anonteam_8_0 = ui.create("Drag items")

		anonteam_0_5.new(arg_8_4 .. "_x", anonteam_8_0:slider(arg_8_4 .. "_x", 0, anonteam_0_15.screen.x, arg_8_0), function()
			return false
		end)
		anonteam_0_5.new(arg_8_4 .. "_y", anonteam_8_0:slider(arg_8_4 .. "_y", 0, anonteam_0_15.screen.y, arg_8_1), function()
			return false
		end)

		return {
			started_dragging = false,
			position_x = anonteam_0_5.elements[arg_8_4 .. "_x"]:get(),
			position_y = anonteam_0_5.elements[arg_8_4 .. "_y"]:get(),
			size_x = arg_8_2,
			size_y = arg_8_3,
			initial_drag_pos = vector(0, 0),
			drag_pos = vector(0, 0),
			callback_function = arg_8_5,
			update = function(arg_11_0)
				if ui.get_alpha() > 0 then
					local anonteam_11_0 = ui.get_mouse_position()

					if (anonteam_11_0.x >= arg_11_0.position_x and anonteam_11_0.y >= arg_11_0.position_y and anonteam_11_0.x <= arg_11_0.position_x + arg_11_0.size_x and anonteam_11_0.y <= arg_11_0.position_y + arg_11_0.size_y or arg_11_0.started_dragging) and common.is_button_down(1) and (anonteam_0_17.mouse_target == 0 or anonteam_0_17.mouse_target == arg_8_4) then
						anonteam_0_17.mouse_target = arg_8_4

						if not arg_11_0.started_dragging then
							arg_11_0.started_dragging = true
							arg_11_0.initial_drag_pos = vector(anonteam_11_0.x - arg_11_0.position_x, anonteam_11_0.y - arg_11_0.position_y)
						else
							arg_11_0.position_x = anonteam_11_0.x - arg_11_0.initial_drag_pos.x
							arg_11_0.position_y = anonteam_11_0.y - arg_11_0.initial_drag_pos.y

							anonteam_0_5.elements[arg_8_4 .. "_x"]:set(math.floor(tonumber(arg_11_0.position_x)))
							anonteam_0_5.elements[arg_8_4 .. "_y"]:set(math.floor(tonumber(arg_11_0.position_y)))
						end
					elseif not common.is_button_down(1) then
						anonteam_0_17.mouse_target = 0
						arg_11_0.started_dragging = false
						arg_11_0.initial_drag_pos = arg_11_0.drag_pos
					end
				end

				arg_11_0.callback_function(arg_11_0)
			end
		}
	end
}

function string.multi_color(arg_12_0, arg_12_1)
	local anonteam_12_0 = ""

	for iter_12_0, iter_12_1 in ipairs(arg_12_0) do
		local anonteam_12_1 = iter_12_1[1]
		local anonteam_12_2 = iter_12_1[2] or color()
		local anonteam_12_3 = ""

		if anonteam_12_2 ~= nil then
			anonteam_12_3 = anonteam_12_2:to_hex()
		end

		anonteam_12_0 = anonteam_12_0 .. "\a" .. anonteam_12_3 .. anonteam_12_1
	end

	return anonteam_12_0
end

local function anonteam_0_19()
	return ui.get_style()["Link Active"]
end

local function anonteam_0_20(arg_14_0, arg_14_1, arg_14_2)
	if arg_14_1 == nil then
		arg_14_1 = anonteam_0_19()
	end

	arg_14_1 = arg_14_1:to_hex()

	return "\a" .. arg_14_1 .. tostring(arg_14_0) .. "\aDEFAULT"
end

local function anonteam_0_21(arg_15_0, arg_15_1, arg_15_2, arg_15_3)
	if arg_15_1 == nil or arg_15_2 == nil then
		local anonteam_15_0 = anonteam_0_19()

		arg_15_1 = anonteam_15_0
		arg_15_2 = anonteam_15_0 / 1.3
	end

	local anonteam_15_1 = #arg_15_0
	local anonteam_15_2 = (arg_15_2.r - arg_15_1.r) / anonteam_15_1
	local anonteam_15_3 = (arg_15_2.g - arg_15_1.g) / anonteam_15_1
	local anonteam_15_4 = (arg_15_2.b - arg_15_1.b) / anonteam_15_1
	local anonteam_15_5 = (arg_15_2.a - arg_15_1.a) / anonteam_15_1
	local anonteam_15_6 = ""

	for iter_15_0 = 1, anonteam_15_1 do
		local anonteam_15_7 = arg_15_1:to_hex()

		anonteam_15_6 = anonteam_15_6 .. "\a" .. anonteam_15_7 .. arg_15_0:sub(iter_15_0, iter_15_0)
		arg_15_1.r = arg_15_1.r + anonteam_15_2
		arg_15_1.g = arg_15_1.g + anonteam_15_3
		arg_15_1.b = arg_15_1.b + anonteam_15_4
		arg_15_1.a = arg_15_1.a + anonteam_15_5
	end

	return anonteam_15_6
end

local function anonteam_0_22(arg_16_0)
	arg_16_0 = arg_16_0 and arg_16_0 or 1

	if globals.is_connected then
		return math.floor(utils.net_channel().latency[arg_16_0] * 1000)
	end

	return 0
end

local anonteam_0_23 = {
	data = {}
}

function anonteam_0_23.lerp(arg_17_0, arg_17_1, arg_17_2)
	if arg_17_2 == nil then
		arg_17_2 = 0.09
	end

	if type(arg_17_0) == "userdata" then
		local anonteam_17_0 = {
			0,
			0,
			0,
			0
		}

		for iter_17_0, iter_17_1 in ipairs({
			"r",
			"g",
			"b",
			"a"
		}) do
			anonteam_17_0[iter_17_0] = anonteam_0_23.lerp(arg_17_0[iter_17_1], arg_17_1[iter_17_1], arg_17_2)
		end

		return color(unpack(anonteam_17_0))
	end

	return (arg_17_1 - arg_17_0) * arg_17_2 + arg_17_0
end

function anonteam_0_23.new(arg_18_0, arg_18_1, arg_18_2)
	if anonteam_0_23.data[arg_18_0] == nil then
		anonteam_0_23.data[arg_18_0] = arg_18_1
	end

	anonteam_0_23.data[arg_18_0] = anonteam_0_23.lerp(anonteam_0_23.data[arg_18_0], arg_18_1, arg_18_2)

	return anonteam_0_23.data[arg_18_0]
end

anonteam_0_5.elements = {}
anonteam_0_5.refs = {}

function anonteam_0_5.run_update()
	for iter_19_0, iter_19_1 in pairs(anonteam_0_5.refs) do
		if iter_19_1.condition ~= nil then
			iter_19_1.ref:visibility(iter_19_1.condition())
		end
	end
end

function anonteam_0_5.new(arg_20_0, arg_20_1, arg_20_2)
	anonteam_0_5.refs[arg_20_0] = {
		ref = arg_20_1,
		name = arg_20_0,
		condition = arg_20_2
	}

	local function anonteam_20_0()
		anonteam_0_5.elements[arg_20_0] = arg_20_1

		anonteam_0_5.run_update()
	end

	anonteam_20_0()
	arg_20_1:set_callback(anonteam_20_0)

	return arg_20_1
end

local anonteam_0_24 = {
	data = {},
	whitelist_elements = {
		"antiaim_condition",
		"config_name",
		"config_manage",
		"config_list",
		"config_type",
		"aspect_ratio_value",
		"aspect_ratio_enable",
		"config_copy",
		"config_load_copied",
		"config_default"
	},
	get = function()
		local anonteam_22_0 = {}

		for iter_22_0, iter_22_1 in pairs(anonteam_0_5.elements) do
			local anonteam_22_1 = iter_22_1:get()

			if iter_22_0:find("color") then
				anonteam_22_1 = anonteam_22_1:to_hex()
			end

			anonteam_22_0[iter_22_0] = anonteam_22_1
		end

		return ("aarneclub>%s<"):format(anonteam_0_7.encode(json.stringify({
			author = anonteam_0_15.user,
			data = anonteam_22_0
		})))
	end
}

function anonteam_0_24.copy()
	local anonteam_23_0 = pcall(function()
		anonteam_0_9.set(anonteam_0_24.get())
	end)

	common.add_notify("Config", not anonteam_23_0 and "Failed on copying config." or "Config successfully copied!")
end

function anonteam_0_24.load(arg_25_0)
	local anonteam_25_0 = ""
	local anonteam_25_1 = pcall(function()
		local anonteam_26_0 = json.parse(anonteam_0_7.decode(arg_25_0:match("aarneclub>(.-)<")))

		anonteam_25_0 = anonteam_26_0.author

		for iter_26_0, iter_26_1 in pairs(anonteam_26_0.data) do
			if iter_26_0:find("color") then
				iter_26_1 = type(iter_26_1) == "string" and color():init(iter_26_1) or color()
			end

			if anonteam_0_5.elements[iter_26_0] ~= nil and iter_26_1 ~= nil then
				anonteam_0_5.elements[iter_26_0]:set(iter_26_1)
			end
		end

		anonteam_0_5.run_update()
	end)

	common.add_notify("Config", not anonteam_25_1 and "Cant load this data, copy config and try again." or "Successfully loaded config by " .. anonteam_25_0)
end

local anonteam_0_25 = {
	cvar_timer = cvar.mp_c4timer
}

function anonteam_0_25.init()
	local anonteam_27_0 = entity.get_entities("CPlantedC4")[1]

	return {
		get_site = function(arg_28_0)
			local anonteam_28_0 = "?"

			if anonteam_27_0 ~= nil and anonteam_27_0.m_nBombSite ~= nil then
				anonteam_28_0 = anonteam_27_0.m_nBombSite == 0 and "A" or "B"
			end

			return anonteam_28_0
		end,
		get_timer = function(arg_29_0)
			local anonteam_29_0 = 0
			local anonteam_29_1 = 1

			if anonteam_27_0 ~= nil and anonteam_27_0.m_flC4Blow ~= nil then
				local anonteam_29_2 = anonteam_0_25.cvar_timer:float()
				local anonteam_29_3 = anonteam_27_0.m_flC4Blow - globals.curtime

				if anonteam_29_3 > 0 then
					anonteam_29_0 = anonteam_29_3
					anonteam_29_1 = 1 / anonteam_27_0.m_flTimerLength * anonteam_29_3
				end
			end

			return anonteam_29_0, anonteam_29_1
		end,
		get_damage = function(arg_30_0)
			local anonteam_30_0 = false
			local anonteam_30_1 = 0
			local anonteam_30_2 = entity.get_local_player()

			if anonteam_30_2 ~= nil and anonteam_27_0 ~= nil then
				local anonteam_30_3 = anonteam_30_2:get_origin()
				local anonteam_30_4 = anonteam_27_0:get_origin()
				local anonteam_30_5 = anonteam_30_3:dist(anonteam_30_4)
				local anonteam_30_6 = 450.7
				local anonteam_30_7 = 75.68
				local anonteam_30_8 = 789.2
				local anonteam_30_9 = (anonteam_30_5 - anonteam_30_7) / anonteam_30_8
				local anonteam_30_10 = anonteam_30_6 * math.exp(-anonteam_30_9 * anonteam_30_9)
				local anonteam_30_11 = anonteam_30_2.m_ArmorValue

				if anonteam_30_11 > 0 then
					local anonteam_30_12 = anonteam_30_10 * 0.5
					local anonteam_30_13 = (anonteam_30_10 - anonteam_30_12) * 0.5

					if anonteam_30_11 < anonteam_30_13 then
						local anonteam_30_14 = anonteam_30_11 * 2

						anonteam_30_12 = anonteam_30_10 - anonteam_30_13
					end

					anonteam_30_10 = anonteam_30_12
				end

				anonteam_30_1 = math.floor(anonteam_30_10)
				anonteam_30_0 = anonteam_30_1 >= anonteam_30_2.m_iHealth
			end

			return anonteam_30_0, anonteam_30_1
		end,
		get_defuse_time = function(arg_31_0)
			local anonteam_31_0 = false
			local anonteam_31_1 = 0
			local anonteam_31_2 = false
			local anonteam_31_3 = 1
			local anonteam_31_4 = arg_31_0:get_timer()

			if anonteam_27_0 ~= nil then
				local anonteam_31_5 = anonteam_27_0.m_bBombDefused
				local anonteam_31_6 = anonteam_27_0.m_hBombDefuser
				local anonteam_31_7 = anonteam_27_0.m_flDefuseLength

				anonteam_31_1 = anonteam_31_6 and anonteam_27_0.m_flDefuseCountDown - globals.curtime or -1
				anonteam_31_0 = anonteam_31_1 > 0
				anonteam_31_2 = anonteam_31_1 < anonteam_31_4
				anonteam_31_3 = 1 / anonteam_31_7 * anonteam_31_1
			end

			return anonteam_31_0, anonteam_31_1, anonteam_31_2, anonteam_31_3
		end,
		get_state = function(arg_32_0)
			local anonteam_32_0 = false
			local anonteam_32_1 = false
			local anonteam_32_2 = arg_32_0:get_timer()

			if anonteam_27_0 ~= nil then
				anonteam_32_0 = anonteam_27_0.m_bBombTicking and anonteam_32_2 > 0
				anonteam_32_1 = anonteam_27_0.m_bBombDefused
			end

			return anonteam_32_0, anonteam_32_1
		end,
		planting = function(arg_33_0)
			local anonteam_33_0 = false

			entity.get_entities("CC4", true, function(arg_34_0)
				anonteam_33_0 = arg_34_0.m_bStartedArming
			end)
		end
	}
end

local function anonteam_0_26(arg_35_0, arg_35_1)
	local anonteam_35_0 = ui.get_style()["Link Active"]
	local anonteam_35_1 = string.multi_color({
		{
			(anonteam_0_21("aarneclub", anonteam_35_0, anonteam_35_0 / 1.3))
		},
		{
			" : ",
			color(50, 50, 50)
		},
		{
			arg_35_0,
			color()
		},
		{
			(anonteam_0_21(arg_35_1, anonteam_35_0, anonteam_35_0 / 1.3))
		}
	})

	print_raw(anonteam_35_1)
end

local function anonteam_0_27(arg_36_0)
	panorama.SteamOverlayAPI.OpenExternalBrowserURL(arg_36_0)
end

local function anonteam_0_28(arg_37_0, arg_37_1)
	local anonteam_37_0 = ui.get_icon(arg_37_0) or ""

	return anonteam_0_20(anonteam_37_0, nil, true) .. (arg_37_1 ~= nil and "  " .. arg_37_1 or "")
end

local anonteam_0_29 = {
	accent = ui.get_style("Link Active"),
	dark = color(25, 25, 25),
	text = color(240, 240, 240)
}

local function anonteam_0_30(arg_38_0, ...)
	arg_38_0 = arg_38_0:gsub("\v", "\a" .. anonteam_0_29.accent:to_hex())
	arg_38_0 = arg_38_0:gsub("\r", "\aDEFAULT")
	arg_38_0 = arg_38_0:gsub("\f%b<>", function(arg_39_0)
		return ui.get_icon(arg_39_0:match("<(.-)>"))
	end)
	arg_38_0 = arg_38_0:gsub("\a%b[]", function(arg_40_0)
		return "\a" .. (anonteam_0_29[arg_40_0:sub(3, -2)] or color()):to_hex()
	end)

	if #{
		...
	} > 0 then
		return arg_38_0:format(...)
	end

	return arg_38_0
end

local anonteam_0_31 = {
	main = anonteam_0_30("\f<house>")
}

anonteam_0_31.aarneclub = ui.create(anonteam_0_31.main, "home", 1)

anonteam_0_31.aarneclub:label(anonteam_0_30("\f<hand-wave>  Hello, %s", anonteam_0_15.user))
anonteam_0_31.aarneclub:label(anonteam_0_30("\f<code>  Build: %s", anonteam_0_1))


local anonteam_0_33 = anonteam_0_6.create(anonteam_0_31.main, "products", 1)

anonteam_0_33:label("\f<flask>   evalate \xE2\x80\xBA Beta")
anonteam_0_33:button("  \f<arrow-up-right-from-square>  Try for free  ", function()
	anonteam_0_27("http://market.neverlose.cc/")
end, true)

anonteam_0_31.config = ui.create(anonteam_0_31.main, "presets", 2)

anonteam_0_31.config:button(anonteam_0_30("   \f<copy>  Copy   "), function()
	anonteam_0_24.copy()
end, true)
anonteam_0_31.config:button(anonteam_0_30("   \f<download>  Paste   "), function()
	anonteam_0_24.load(anonteam_0_9.get())
end, true)
anonteam_0_31.config:button(anonteam_0_30("   \f<check>  Default   "), function()
	local anonteam_44_0 = "aarneclub>eyJhdXRob3IiOiJwcmluY2UxMzM3IiwiZGF0YSI6eyJhaXJfaGl0Y2hhbmNlX2VuYWJsZSI6dHJ1ZSwiYWlyX2hpdGNoYW5jZV92YWx1ZSI6NDMuMCwiYWlyX2hpdGNoYW5jZV93ZWFwb25zIjpbIlNjb3V0IiwiUjggUmV2b2x2ZXIiXSwiYW50aWFpbV9EaXNhYmxlIEFudGkgQnJ1dGVmb3JjZV9BaXIiOnRydWUsImFudGlhaW1fRGlzYWJsZSBBbnRpIEJydXRlZm9yY2VfQWlyLUNyb3VjaCI6dHJ1ZSwiYW50aWFpbV9EaXNhYmxlIEFudGkgQnJ1dGVmb3JjZV9Dcm91Y2giOnRydWUsImFudGlhaW1fRGlzYWJsZSBBbnRpIEJydXRlZm9yY2VfR2xvYmFsIjp0cnVlLCJhbnRpYWltX0Rpc2FibGUgQW50aSBCcnV0ZWZvcmNlX01vdmUiOmZhbHNlLCJhbnRpYWltX0Rpc2FibGUgQW50aSBCcnV0ZWZvcmNlX05vIEV4cGxvaXRzIjpmYWxzZSwiYW50aWFpbV9EaXNhYmxlIEFudGkgQnJ1dGVmb3JjZV9PbiBVc2UiOnRydWUsImFudGlhaW1fRGlzYWJsZSBBbnRpIEJydXRlZm9yY2VfU2xvdy1NbyI6dHJ1ZSwiYW50aWFpbV9EaXNhYmxlIEFudGkgQnJ1dGVmb3JjZV9TdGFuZCI6ZmFsc2UsImFudGlhaW1fRnJlZXN0YW5kaW5nIEJvZHlfQWlyIjoiT2ZmIiwiYW50aWFpbV9GcmVlc3RhbmRpbmcgQm9keV9BaXItQ3JvdWNoIjoiT2ZmIiwiYW50aWFpbV9GcmVlc3RhbmRpbmcgQm9keV9Dcm91Y2giOiJPZmYiLCJhbnRpYWltX0ZyZWVzdGFuZGluZyBCb2R5X0dsb2JhbCI6Ik9mZiIsImFudGlhaW1fRnJlZXN0YW5kaW5nIEJvZHlfTW92ZSI6Ik9mZiIsImFudGlhaW1fRnJlZXN0YW5kaW5nIEJvZHlfTm8gRXhwbG9pdHMiOiJPZmYiLCJhbnRpYWltX0ZyZWVzdGFuZGluZyBCb2R5X09uIFVzZSI6IlBlZWsgRmFrZSIsImFudGlhaW1fRnJlZXN0YW5kaW5nIEJvZHlfU2xvdy1NbyI6Ik9mZiIsImFudGlhaW1fRnJlZXN0YW5kaW5nIEJvZHlfU3RhbmQiOiJPZmYiLCJhbnRpYWltX0ppdHRlciBWYWx1ZV9BaXIiOjAuMCwiYW50aWFpbV9KaXR0ZXIgVmFsdWVfQWlyLUNyb3VjaCI6MC4wLCJhbnRpYWltX0ppdHRlciBWYWx1ZV9Dcm91Y2giOjAuMCwiYW50aWFpbV9KaXR0ZXIgVmFsdWVfR2xvYmFsIjo2MC4wLCJhbnRpYWltX0ppdHRlciBWYWx1ZV9Nb3ZlIjoyNC4wLCJhbnRpYWltX0ppdHRlciBWYWx1ZV9ObyBFeHBsb2l0cyI6MC4wLCJhbnRpYWltX0ppdHRlciBWYWx1ZV9PbiBVc2UiOjYwLjAsImFudGlhaW1fSml0dGVyIFZhbHVlX1Nsb3ctTW8iOjAuMCwiYW50aWFpbV9KaXR0ZXIgVmFsdWVfU3RhbmQiOjAuMCwiYW50aWFpbV9MZWZ0IExpbWl0X0FpciI6NjAuMCwiYW50aWFpbV9MZWZ0IExpbWl0X0Fpci1Dcm91Y2giOjMxLjAsImFudGlhaW1fTGVmdCBMaW1pdF9Dcm91Y2giOjYwLjAsImFudGlhaW1fTGVmdCBMaW1pdF9HbG9iYWwiOjQ4LjAsImFudGlhaW1fTGVmdCBMaW1pdF9Nb3ZlIjo2MC4wLCJhbnRpYWltX0xlZnQgTGltaXRfTm8gRXhwbG9pdHMiOjAuMCwiYW50aWFpbV9MZWZ0IExpbWl0X09uIFVzZSI6NjAuMCwiYW50aWFpbV9MZWZ0IExpbWl0X1Nsb3ctTW8iOjEzLjAsImFudGlhaW1fTGVmdCBMaW1pdF9TdGFuZCI6MC4wLCJhbnRpYWltX0xpbWl0IFR5cGVfQWlyIjoiU3RhdGljIiwiYW50aWFpbV9MaW1pdCBUeXBlX0Fpci1Dcm91Y2giOiJTdGF0aWMiLCJhbnRpYWltX0xpbWl0IFR5cGVfQ3JvdWNoIjoiU3RhdGljIiwiYW50aWFpbV9MaW1pdCBUeXBlX0dsb2JhbCI6IkppdHRlciIsImFudGlhaW1fTGltaXQgVHlwZV9Nb3ZlIjoiU3RhdGljIiwiYW50aWFpbV9MaW1pdCBUeXBlX05vIEV4cGxvaXRzIjoiU3RhdGljIiwiYW50aWFpbV9MaW1pdCBUeXBlX09uIFVzZSI6IlN0YXRpYyIsImFudGlhaW1fTGltaXQgVHlwZV9TbG93LU1vIjoiU3RhdGljIiwiYW50aWFpbV9MaW1pdCBUeXBlX1N0YW5kIjoiU3RhdGljIiwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgTGVmdF9BaXIiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgTGVmdF9BaXItQ3JvdWNoIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIExlZnRfQ3JvdWNoIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIExlZnRfR2xvYmFsIjotODUuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgTGVmdF9Nb3ZlIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIExlZnRfTm8gRXhwbG9pdHMiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgTGVmdF9PbiBVc2UiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgTGVmdF9TbG93LU1vIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIExlZnRfU3RhbmQiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgUmlnaHRfQWlyIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIFJpZ2h0X0Fpci1Dcm91Y2giOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgUmlnaHRfQ3JvdWNoIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIFJpZ2h0X0dsb2JhbCI6LTI3LjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIFJpZ2h0X01vdmUiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgUmlnaHRfTm8gRXhwbG9pdHMiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgUmlnaHRfT24gVXNlIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlIFJpZ2h0X1Nsb3ctTW8iOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWUgUmlnaHRfU3RhbmQiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWVfQWlyIjoxNi4wLCJhbnRpYWltX01vZGlmaWVyIERlZ3JlZV9BaXItQ3JvdWNoIjotNC4wLCJhbnRpYWltX01vZGlmaWVyIERlZ3JlZV9Dcm91Y2giOjI1LjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlX0dsb2JhbCI6MTguMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWVfTW92ZSI6MjguMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWVfTm8gRXhwbG9pdHMiOjAuMCwiYW50aWFpbV9Nb2RpZmllciBEZWdyZWVfT24gVXNlIjowLjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlX1Nsb3ctTW8iOjE4LjAsImFudGlhaW1fTW9kaWZpZXIgRGVncmVlX1N0YW5kIjowLjAsImFudGlhaW1fT3B0aW9uc19BaXIiOlsiSml0dGVyIl0sImFudGlhaW1fT3B0aW9uc19BaXItQ3JvdWNoIjpbIkppdHRlciJdLCJhbnRpYWltX09wdGlvbnNfQ3JvdWNoIjpbIkppdHRlciJdLCJhbnRpYWltX09wdGlvbnNfR2xvYmFsIjpbIkppdHRlciJdLCJhbnRpYWltX09wdGlvbnNfTW92ZSI6W10sImFudGlhaW1fT3B0aW9uc19ObyBFeHBsb2l0cyI6W10sImFudGlhaW1fT3B0aW9uc19PbiBVc2UiOlsiQXZvaWQgT3ZlcmxhcCIsIkppdHRlciIsIlJhbmRvbWl6ZSBKaXR0ZXIiXSwiYW50aWFpbV9PcHRpb25zX1Nsb3ctTW8iOlsiSml0dGVyIiwiUmFuZG9taXplIEppdHRlciJdLCJhbnRpYWltX09wdGlvbnNfU3RhbmQiOltdLCJhbnRpYWltX092ZXJyaWRlX0FpciI6dHJ1ZSwiYW50aWFpbV9PdmVycmlkZV9BaXItQ3JvdWNoIjpmYWxzZSwiYW50aWFpbV9PdmVycmlkZV9Dcm91Y2giOnRydWUsImFudGlhaW1fT3ZlcnJpZGVfTW92ZSI6ZmFsc2UsImFudGlhaW1fT3ZlcnJpZGVfTm8gRXhwbG9pdHMiOmZhbHNlLCJhbnRpYWltX092ZXJyaWRlX09uIFVzZSI6dHJ1ZSwiYW50aWFpbV9PdmVycmlkZV9TbG93LU1vIjpmYWxzZSwiYW50aWFpbV9PdmVycmlkZV9TdGFuZCI6ZmFsc2UsImFudGlhaW1fUmFuZG9taXphdGlvbiBEZWdyZWVfQWlyIjowLjAsImFudGlhaW1fUmFuZG9taXphdGlvbiBEZWdyZWVfQWlyLUNyb3VjaCI6MC4wLCJhbnRpYWltX1JhbmRvbWl6YXRpb24gRGVncmVlX0Nyb3VjaCI6MC4wLCJhbnRpYWltX1JhbmRvbWl6YXRpb24gRGVncmVlX0dsb2JhbCI6MC4wLCJhbnRpYWltX1JhbmRvbWl6YXRpb24gRGVncmVlX01vdmUiOjAuMCwiYW50aWFpbV9SYW5kb21pemF0aW9uIERlZ3JlZV9ObyBFeHBsb2l0cyI6MC4wLCJhbnRpYWltX1JhbmRvbWl6YXRpb24gRGVncmVlX09uIFVzZSI6MC4wLCJhbnRpYWltX1JhbmRvbWl6YXRpb24gRGVncmVlX1Nsb3ctTW8iOjAuMCwiYW50aWFpbV9SYW5kb21pemF0aW9uIERlZ3JlZV9TdGFuZCI6MC4wLCJhbnRpYWltX1JpZ2h0IExpbWl0X0FpciI6NjAuMCwiYW50aWFpbV9SaWdodCBMaW1pdF9BaXItQ3JvdWNoIjoyMS4wLCJhbnRpYWltX1JpZ2h0IExpbWl0X0Nyb3VjaCI6NjAuMCwiYW50aWFpbV9SaWdodCBMaW1pdF9HbG9iYWwiOjI0LjAsImFudGlhaW1fUmlnaHQgTGltaXRfTW92ZSI6NjAuMCwiYW50aWFpbV9SaWdodCBMaW1pdF9ObyBFeHBsb2l0cyI6MC4wLCJhbnRpYWltX1JpZ2h0IExpbWl0X09uIFVzZSI6NjAuMCwiYW50aWFpbV9SaWdodCBMaW1pdF9TbG93LU1vIjo2LjAsImFudGlhaW1fUmlnaHQgTGltaXRfU3RhbmQiOjAuMCwiYW50aWFpbV9Ud28gRGVncmVlX0FpciI6ZmFsc2UsImFudGlhaW1fVHdvIERlZ3JlZV9BaXItQ3JvdWNoIjpmYWxzZSwiYW50aWFpbV9Ud28gRGVncmVlX0Nyb3VjaCI6ZmFsc2UsImFudGlhaW1fVHdvIERlZ3JlZV9HbG9iYWwiOnRydWUsImFudGlhaW1fVHdvIERlZ3JlZV9Nb3ZlIjpmYWxzZSwiYW50aWFpbV9Ud28gRGVncmVlX05vIEV4cGxvaXRzIjpmYWxzZSwiYW50aWFpbV9Ud28gRGVncmVlX09uIFVzZSI6ZmFsc2UsImFudGlhaW1fVHdvIERlZ3JlZV9TbG93LU1vIjpmYWxzZSwiYW50aWFpbV9Ud28gRGVncmVlX1N0YW5kIjpmYWxzZSwiYW50aWFpbV9XYXlzX0FpciI6NS4wLCJhbnRpYWltX1dheXNfQWlyLUNyb3VjaCI6NS4wLCJhbnRpYWltX1dheXNfQ3JvdWNoIjo1LjAsImFudGlhaW1fV2F5c19HbG9iYWwiOjUuMCwiYW50aWFpbV9XYXlzX01vdmUiOjYuMCwiYW50aWFpbV9XYXlzX05vIEV4cGxvaXRzIjo1LjAsImFudGlhaW1fV2F5c19PbiBVc2UiOjUuMCwiYW50aWFpbV9XYXlzX1Nsb3ctTW8iOjUuMCwiYW50aWFpbV9XYXlzX1N0YW5kIjo1LjAsImFudGlhaW1fWWF3IEFkZCBMZWZ0X0FpciI6MC4wLCJhbnRpYWltX1lhdyBBZGQgTGVmdF9BaXItQ3JvdWNoIjotMTkuMCwiYW50aWFpbV9ZYXcgQWRkIExlZnRfQ3JvdWNoIjozMi4wLCJhbnRpYWltX1lhdyBBZGQgTGVmdF9HbG9iYWwiOjQ0LjAsImFudGlhaW1fWWF3IEFkZCBMZWZ0X01vdmUiOjAuMCwiYW50aWFpbV9ZYXcgQWRkIExlZnRfTm8gRXhwbG9pdHMiOjAuMCwiYW50aWFpbV9ZYXcgQWRkIExlZnRfT24gVXNlIjowLjAsImFudGlhaW1fWWF3IEFkZCBMZWZ0X1Nsb3ctTW8iOjAuMCwiYW50aWFpbV9ZYXcgQWRkIExlZnRfU3RhbmQiOjAuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X0FpciI6MC4wLCJhbnRpYWltX1lhdyBBZGQgUmlnaHRfQWlyLUNyb3VjaCI6MjkuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X0Nyb3VjaCI6MzAuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X0dsb2JhbCI6NDUuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X01vdmUiOjAuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X05vIEV4cGxvaXRzIjowLjAsImFudGlhaW1fWWF3IEFkZCBSaWdodF9PbiBVc2UiOjAuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X1Nsb3ctTW8iOjAuMCwiYW50aWFpbV9ZYXcgQWRkIFJpZ2h0X1N0YW5kIjowLjAsImFudGlhaW1fWWF3IE1vZGlmaWVyX0FpciI6IkNlbnRlciIsImFudGlhaW1fWWF3IE1vZGlmaWVyX0Fpci1Dcm91Y2giOiJDZW50ZXIiLCJhbnRpYWltX1lhdyBNb2RpZmllcl9Dcm91Y2giOiJYLVdheSIsImFudGlhaW1fWWF3IE1vZGlmaWVyX0dsb2JhbCI6Ik9mZnNldCIsImFudGlhaW1fWWF3IE1vZGlmaWVyX01vdmUiOiJYLVdheSIsImFudGlhaW1fWWF3IE1vZGlmaWVyX05vIEV4cGxvaXRzIjoiRGlzYWJsZWQiLCJhbnRpYWltX1lhdyBNb2RpZmllcl9PbiBVc2UiOiJEaXNhYmxlZCIsImFudGlhaW1fWWF3IE1vZGlmaWVyX1Nsb3ctTW8iOiJDZW50ZXIiLCJhbnRpYWltX1lhdyBNb2RpZmllcl9TdGFuZCI6IkRpc2FibGVkIiwiYW50aWFpbV9jb25kaXRpb24iOiJHbG9iYWwiLCJhbnRpYWltX2VuYWJsZSI6dHJ1ZSwiYW50aWFpbV9tYW51YWxzIjoiQXQgVGFyZ2V0IiwiYW50aWFpbV9tb3JlIjpbIkF2b2lkIEJhY2tzdGFiIiwiT24gVXNlIEFBIiwiQnJlYWsgTEMgaW4gQWlyIiwiU3RhdGljIE1hbnVhbHMiXSwiYW50aWJydXRlX2FkZCI6ZmFsc2UsImFudGlicnV0ZV9jb3VudCI6Mi4wLCJhbnRpYnJ1dGVfZGVncmVlOjEiOjAuMCwiYW50aWJydXRlX2RlZ3JlZToxMCI6MC4wLCJhbnRpYnJ1dGVfZGVncmVlOjIiOjAuMCwiYW50aWJydXRlX2RlZ3JlZTozIjowLjAsImFudGlicnV0ZV9kZWdyZWU6NCI6MC4wLCJhbnRpYnJ1dGVfZGVncmVlOjUiOjAuMCwiYW50aWJydXRlX2RlZ3JlZTo2IjowLjAsImFudGlicnV0ZV9kZWdyZWU6NyI6MC4wLCJhbnRpYnJ1dGVfZGVncmVlOjgiOjAuMCwiYW50aWJydXRlX2RlZ3JlZTo5IjowLjAsImFudGlicnV0ZV9kZWxldGUiOmZhbHNlLCJhbnRpYnJ1dGVfbGFiZWwiOjEwNDM4ODQxMjcuMCwiYW50aWJydXRlX2xhYmVsOjEiOjIxNTY2NzU4NDEuMCwiYW50aWJydXRlX2xhYmVsOjEwIjoyNDUwODI2MDY1LjAsImFudGlicnV0ZV9sYWJlbDoyIjoyMTU2Njc1ODQyLjAsImFudGlicnV0ZV9sYWJlbDozIjoyMTU2Njc1ODQzLjAsImFudGlicnV0ZV9sYWJlbDo0IjoyMTU2Njc1ODQ0LjAsImFudGlicnV0ZV9sYWJlbDo1IjoyMTU2Njc1ODQ1LjAsImFudGlicnV0ZV9sYWJlbDo2IjoyMTU2Njc1ODQ2LjAsImFudGlicnV0ZV9sYWJlbDo3IjoyMTU2Njc1ODQ3LjAsImFudGlicnV0ZV9sYWJlbDo4IjoyMTU2Njc1ODQ4LjAsImFudGlicnV0ZV9sYWJlbDo5IjoyMTU2Njc1ODQ5LjAsImFudGlicnV0ZV9sZWZ0OjEiOjAuMCwiYW50aWJydXRlX2xlZnQ6MTAiOjAuMCwiYW50aWJydXRlX2xlZnQ6MiI6MC4wLCJhbnRpYnJ1dGVfbGVmdDozIjowLjAsImFudGlicnV0ZV9sZWZ0OjQiOjAuMCwiYW50aWJydXRlX2xlZnQ6NSI6MC4wLCJhbnRpYnJ1dGVfbGVmdDo2IjowLjAsImFudGlicnV0ZV9sZWZ0OjciOjAuMCwiYW50aWJydXRlX2xlZnQ6OCI6MC4wLCJhbnRpYnJ1dGVfbGVmdDo5IjowLjAsImFudGlicnV0ZV9tb2RpZmllcjoxIjoiRGlzYWJsZWQiLCJhbnRpYnJ1dGVfbW9kaWZpZXI6MTAiOiJEaXNhYmxlZCIsImFudGlicnV0ZV9tb2RpZmllcjoyIjoiRGlzYWJsZWQiLCJhbnRpYnJ1dGVfbW9kaWZpZXI6MyI6IkRpc2FibGVkIiwiYW50aWJydXRlX21vZGlmaWVyOjQiOiJEaXNhYmxlZCIsImFudGlicnV0ZV9tb2RpZmllcjo1IjoiRGlzYWJsZWQiLCJhbnRpYnJ1dGVfbW9kaWZpZXI6NiI6IkRpc2FibGVkIiwiYW50aWJydXRlX21vZGlmaWVyOjciOiJEaXNhYmxlZCIsImFudGlicnV0ZV9tb2RpZmllcjo4IjoiRGlzYWJsZWQiLCJhbnRpYnJ1dGVfbW9kaWZpZXI6OSI6IkRpc2FibGVkIiwiYW50aWJydXRlX3JpZ2h0OjEiOjAuMCwiYW50aWJydXRlX3JpZ2h0OjEwIjowLjAsImFudGlicnV0ZV9yaWdodDoyIjowLjAsImFudGlicnV0ZV9yaWdodDozIjowLjAsImFudGlicnV0ZV9yaWdodDo0IjowLjAsImFudGlicnV0ZV9yaWdodDo1IjowLjAsImFudGlicnV0ZV9yaWdodDo2IjowLjAsImFudGlicnV0ZV9yaWdodDo3IjowLjAsImFudGlicnV0ZV9yaWdodDo4IjowLjAsImFudGlicnV0ZV9yaWdodDo5IjowLjAsImFycm93cyI6ZmFsc2UsImFycm93c19hY3RpdmVfY29sb3IiOiJDNkFDOTRGRiIsImFycm93c19kaXN0YW5jZSI6NDMuMCwiYXJyb3dzX2luX3Njb3BlIjoiUmVwbGFjZSIsImFycm93c19pbmFjdGl2ZV9jb2xvciI6IjAwMDAwMDMyIiwiYXJyb3dzX2ludmVydGVkX2NvbG9yIjoiQzZBQzk0RkYiLCJhcnJvd3Nfc2l6ZSI6Ni4wLCJhc3BlY3RfcmF0aW9fZW5hYmxlIjpmYWxzZSwiYXNwZWN0X3JhdGlvX3ZhbHVlIjoxNTguMCwiYnJlYWtlcnMiOltdLCJjbGFudGFnX2N1c3RvbSI6ImJvbWJhc3RpYy5sdWEiLCJjbGFudGFnX2VuYWJsZSI6dHJ1ZSwiY2xhbnRhZ190eXBlIjoiY3VzdG9tIiwiY29uc29sZV9jb2xvciI6IkM2QUM5NEZGIiwiY29uc29sZV9lbmFibGUiOnRydWUsImNyb3NzX2FjdGl2ZV9jb2xvciI6IkM2QUM5NEZGIiwiY3Jvc3NfZGFtYWdlX251bSI6ZmFsc2UsImNyb3NzX2luYWN0aXZlX2NvbG9yIjoiNjA1MzQ4RkYiLCJjcm9zc19wb3MiOiJDZW50ZXIiLCJjcm9zc2hhaXJfaW5kaWNhdG9ycyI6dHJ1ZSwiZGFtYWdlX2luZGljYXRvcl94Ijo5NjIuMCwiZGFtYWdlX2luZGljYXRvcl95Ijo1MTcuMCwiZ3JlbmFkZV9yYWRfZW5hYmxlIjpmYWxzZSwiZ3JlbmFkZXMiOltdLCJoaXRsb2dzIjp0cnVlLCJoaXRsb2dzX2FudGlfYnJ1dGVfY29sb3IiOiJDNkFDOTRGRiIsImhpdGxvZ3NfY3VzdG9tX2tvbG9ycyI6dHJ1ZSwiaGl0bG9nc19kZWF0aF9jb2xvciI6IjNDM0MzQ0ZGIiwiaGl0bG9nc19mb250IjoiRGVmYXVsdCIsImhpdGxvZ3NfZ2xvdyI6dHJ1ZSwiaGl0bG9nc19oaXRfY29sb3IiOiJDNkFDOTRGRiIsImhpdGxvZ3NfbGFnY29tcF9jb2xvciI6IkM2OTM5M0ZGIiwiaGl0bG9nc19taXNwcmVkaWN0aW9uX2NvbG9yIjoiQzY5MzkzRkYiLCJoaXRsb2dzX29mZnNldCI6MTMxLjAsImhpdGxvZ3NfcGxheWVyX2RlYXRoX2NvbG9yIjoiM0MzQzNDRkYiLCJoaXRsb2dzX3ByZWRpY3Rpb25fY29sb3IiOiJDNjkzOTNGRiIsImhpdGxvZ3NfcmVzb2x2ZXJfY29sb3IiOiJDNjkzOTNGRiIsImhpdGxvZ3Nfc3ByZWFkX2NvbG9yIjoiQzY5MzkzRkYiLCJoaXRsb2dzX3N0eWxlIjpbIkNlbnRlciIsIkNvbnNvbGUiXSwiaGl0bG9nc191bnJlZ2lzdGVyZWRfY29sb3IiOiJDNjkzOTNGRiIsImhpdG1hcmtlciI6ZmFsc2UsImhpdG1hcmtlcl9jb2xvciI6IkZGRkZGRkZGIiwiaGl0bWFya2VyX2ZvbnQiOiJEZWZhdWx0IiwiaGl0bWFya2VyX3N0eWxlIjpbXSwiaWRlYWx0aWNrX2VuYWJsZSI6ZmFsc2UsImlkZWFsdGlja19mZWF0dXJlcyI6WyJBdXRvIFBlZWsiLCJCZXR0ZXIgQXV0byBTdG9wIiwiRnJlZXN0YW5kaW5nIiwiSnVtcCBTY291dCJdLCJpbmZvX3BhbmVsX2VuYWJsZSI6ZmFsc2UsImluZm9fcGFuZWxfZm9udCI6IkRlZmF1bHQiLCJpbmZvX3BhbmVsX2xpc3QiOlsiVXNlcm5hbWUiLCJIaXQvTWlzcyIsIkNvdW50cnkiLCJWZXJzaW9uIiwiU3RhdGUiLCJEZXN5bmMiXSwiaW5mb19wYW5lbF94IjoxMC4wLCJpbmZvX3BhbmVsX3kiOjU0MC4wLCJtb2xvdG92X2NvbG9yIjoiRkZGRkZGRkYiLCJtb2xvdG92X2VuZW15X2NvbG9yIjoiRkYzMjMyRkYiLCJub3Njb3BlX2hpdGNoYW5jZV9lbmFibGUiOmZhbHNlLCJub3Njb3BlX2hpdGNoYW5jZV92YWx1ZSI6NDMuMCwibm9zY29wZV9oaXRjaGFuY2Vfd2VhcG9ucyI6WyJTY291dCJdLCJyYWRhcl9kaXNhYmxlIjpmYWxzZSwic2NvcGVfY29sb3IiOiJDNkFDOTRGRiIsInNjb3BlX2Rpc2FibGVfbGluZXMiOltdLCJzY29wZV9sZW5ndGgiOjQ2LjAsInNjb3BlX2xpbmVzIjp0cnVlLCJzY29wZV9vZmZzZXQiOjE2LjAsInNjb3BlX3N0eWxlIjoiSW52ZXJ0ZWQiLCJzaGFyZWRfaWNvbiI6ZmFsc2UsInNpZGVfYmluZHMiOlsiQm9tYiBJbmZvIiwiTWluLiBEYW1hZ2UiLCJIaXRjaGFuY2UiLCJQaW5nIiwiRG91YmxlIFRhYiIsIkhpZGUgU2hvdHMiLCJEb3JtYW50IEFpbWJvdCIsIkZyZWVzdGFuZGluZyIsIkZha2UgRHVjayIsIlNhZmUgUG9pbnRzIiwiQm9keSBBaW0iLCJSYWdlYm90IFN0YXRzIiwiRmFrZSJdLCJzaWRlX2ZvbnQiOiJTbWFsbCIsInNpZGVfaW5kaWNhdG9ycyI6ZmFsc2UsInNpZGVfcG9zX3kiOjgwMC4wLCJzbG93X2Rvd25feCI6ODY5LjAsInNsb3dfZG93bl95IjoxMDMuMCwic21va2VfY29sb3IiOiJGRkZGRkZGRiIsInNwcmVhZF9zY29wZSI6dHJ1ZSwidGFza2Jhcl9ub3RpZnkiOnRydWUsInRlbGVwb3J0X2VuYWJsZSI6dHJ1ZSwidGVsZXBvcnRfd2VhcG9ucyI6WyJBV1AiLCJTY291dCIsIlRhc2VyIl0sInRyYXNodGFsa19lbmFibGUiOmZhbHNlLCJ0cmFzaHRhbGtfZXZlbnRzIjpbXSwidHJhc2h0YWxrX3JlcGx5X3JhbmRvbV9jYXNlIjp0cnVlLCJ0cmFzaHRhbGtfdHlwZSI6IlJlcGx5IGluIGNoYXQiLCJ2aWV3bW9kZWxfZW5hYmxlIjpmYWxzZSwidmlld21vZGVsX2ZvdiI6NjguMCwidmlld21vZGVsX29mZnNldF94IjoyNS4wLCJ2aWV3bW9kZWxfb2Zmc2V0X3kiOjAuMCwidmlld21vZGVsX29mZnNldF96IjotMTUuMCwid2lkZ2V0cyI6WyJXYXRlcm1hcmsiLCJLZXliaW5kcyIsIlNsb3cgRG93biJdLCJ3aWRnZXRzX2NvbG9yIjoiQzZBQzk0M0QiLCJ3aWRnZXRzX2VuYWJsZSI6ZmFsc2UsIndpZGdldHNfZ2xvdyI6dHJ1ZSwid2lkZ2V0c19rZXliaW5kc194Ijo5NjAuMCwid2lkZ2V0c19rZXliaW5kc195IjozMDAuMH19<"

	anonteam_0_24.load(anonteam_44_0)
end, true)

local anonteam_0_34 = {}

anonteam_0_34.name = ""
anonteam_0_31.nick = ui.create(anonteam_0_31.main, "nickname", 2)
anonteam_0_34.label = anonteam_0_31.nick:input("")
anonteam_0_34.get_new = anonteam_0_31.nick:button(anonteam_0_30("     \f<fire>  Get Random     "), nil, true)
anonteam_0_34.name = anonteam_0_31.nick:button(anonteam_0_30("       \f<check>  Set Name      "), nil, true)

anonteam_0_34.get_new:set_callback(function()
	network.get("https://625c894695cd5855d6139e9b.mockapi.io/api/v1/nicknames/", {}, function(arg_46_0)
		if arg_46_0 == nil then
			return common.add_notify("Random Nickname", "Failed request")
		end

		local anonteam_46_0 = json.parse(arg_46_0)
		local anonteam_46_1 = utils.random_int(1, #anonteam_46_0)

		anonteam_0_34.name = anonteam_46_0[anonteam_46_1] and anonteam_46_0[anonteam_46_1].nickname or ""

		anonteam_0_34.label:set(anonteam_0_34.name)
		anonteam_0_26("Cool nickname: " .. anonteam_0_34.name, "")
	end)
end)
anonteam_0_34.name:set_callback(function()
	local anonteam_47_0 = anonteam_0_34.label:get()

	if #anonteam_47_0 < 1 then
		return
	end

	common.set_name(anonteam_47_0)
end)

local anonteam_0_35 = {
	shots_data = {
		hit = 0,
		miss = 0
	}
}

function anonteam_0_35.update_shot_data(arg_48_0)
	if arg_48_0.state == nil then
		anonteam_0_35.shots_data.hit = anonteam_0_35.shots_data.hit + 1

		return
	end

	anonteam_0_35.shots_data.miss = anonteam_0_35.shots_data.miss + 1
end

events.aim_ack:set(anonteam_0_35.update_shot_data)

anonteam_0_31.settings = anonteam_0_30("\f<layer-group>")
anonteam_0_31.global_rage = ui.create(anonteam_0_31.settings, "Rage")

local anonteam_0_36 = {
	csgo_weapons = {
		"Deagle",
		"Pistols",
		"Pistols",
		"Pistols",
		"Pistols",
		"Pistols",
		"Rifle/LMG",
		"Rifle/LMG",
		"AWP",
		"Rifle/LMG",
		"AutoSnipers",
		"Rifle/LMG",
		"Rifle/LMG",
		"Rifle/LMG",
		"Rifle/LMG",
		"Rifle/LMG",
		"SMG",
		"SMG",
		"SMG",
		"Scout",
		"Rifle/LMG",
		"Rifle/LMG",
		"SMG",
		"SMG",
		"Shotgun",
		"SMG",
		"Shotgun",
		"Rifle/LMG",
		"Shotgun",
		"Pistols",
		"Taser",
		"Pistols",
		"SMG",
		"SMG",
		"Shotgun",
		"Pistols",
		"AutoSnipers",
		"AutoSnipers",
		"Rifle/LMG",
		"Scout",
		"Other",
		"Other",
		"Nades",
		"Nades",
		"Nades",
		"Nades",
		"Nades",
		"Nades",
		"Other",
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		"Other",
		"Rifle/LMG",
		"Pistols",
		nil,
		"Pistols",
		"R8 Revolver",
		[197126] = "Other",
		[508] = "Other",
		[509] = "Other",
		[506] = "Other",
		[507] = "Other",
		[516] = "Other",
		[197116] = "Other",
		[197114] = "Other",
		[515] = "Other",
		[500] = "Other",
		[197108] = "Other",
		[197120] = "Other",
		[197124] = "Other",
		[197133] = "Other",
		[197131] = "Other",
		[197129] = "Other",
		[197127] = "Other",
		[197125] = "Other",
		[197123] = "Other",
		[262205] = "Pistols",
		[197122] = "Other",
		[197130] = "Other",
		[197117] = "Other",
		[197115] = "Other",
		[197113] = "Other",
		[197111] = "Other",
		[262208] = "Pistols",
		[505] = "Other",
		[514] = "Other",
		[512] = "Other",
		[197128] = "Other"
	}
}

anonteam_0_5.new("noscope_hitchance_enable", anonteam_0_31.global_rage:switch("No-Scope Hitchance"))

anonteam_0_31.noscope_hs = anonteam_0_5.elements.noscope_hitchance_enable:create()

anonteam_0_5.new("noscope_hitchance_value", anonteam_0_31.noscope_hs:slider("Hitchance", 0, 100, 60))
anonteam_0_5.new("noscope_hitchance_weapons", anonteam_0_31.noscope_hs:selectable("Weapons", {
	"AWP",
	"Scout",
	"AutoSnipers"
}))
anonteam_0_5.new("air_hitchance_enable", anonteam_0_31.global_rage:switch("Air Hitchance"))

anonteam_0_31.air_hs = anonteam_0_5.elements.air_hitchance_enable:create()

anonteam_0_5.new("air_hitchance_value", anonteam_0_31.air_hs:slider("Hitchance", 0, 100, 60))
anonteam_0_5.new("air_hitchance_weapons", anonteam_0_31.air_hs:selectable("Weapons", {
	"Scout",
	"R8 Revolver"
}))

anonteam_0_16.hitchance = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance")

function anonteam_0_36.on_createmove()
	local anonteam_49_0 = entity.get_players(true)

	if not anonteam_49_0 or #anonteam_49_0 < 1 then
		return
	end

	local anonteam_49_1 = entity.get_local_player()

	if anonteam_49_1 == nil or not anonteam_49_1:is_alive() then
		return
	end

	local anonteam_49_2 = anonteam_49_1:get_player_weapon()

	if anonteam_49_2 == nil then
		return
	end

	local anonteam_49_3 = anonteam_49_2:get_weapon_index()

	if anonteam_49_3 == nil then
		return
	end

	local anonteam_49_4 = anonteam_0_36.csgo_weapons[anonteam_49_3] or "?"

	anonteam_0_16.hitchance:override()

	if anonteam_0_5.elements.noscope_hitchance_enable:get() and not anonteam_49_1.m_bIsScoped and anonteam_0_11(anonteam_0_5.elements.noscope_hitchance_weapons:get(), anonteam_49_4) then
		local anonteam_49_5 = anonteam_0_5.elements.noscope_hitchance_value:get()

		if type(anonteam_49_5) ~= "number" then
			return
		end

		anonteam_0_16.hitchance:override(anonteam_49_5)
	end

	if anonteam_0_5.elements.air_hitchance_enable:get() and not anonteam_49_1:get_anim_state().on_ground and anonteam_0_11(anonteam_0_5.elements.air_hitchance_weapons:get(), anonteam_49_4) then
		local anonteam_49_6 = anonteam_0_5.elements.air_hitchance_value:get()

		if type(anonteam_49_6) ~= "number" then
			return
		end

		anonteam_0_16.hitchance:override(anonteam_49_6)
	end
end

events.createmove:set(anonteam_0_36.on_createmove)

local anonteam_0_37 = {
	csgo_weapons = {
		"Deagle",
		"Pistols",
		"Pistols",
		"Pistols",
		"Pistols",
		"Pistols",
		"Rifle/LMG",
		"Rifle/LMG",
		"AWP",
		"Rifle/LMG",
		"AutoSnipers",
		"Rifle/LMG",
		"Rifle/LMG",
		"Rifle/LMG",
		"Rifle/LMG",
		"Rifle/LMG",
		"SMG",
		"SMG",
		"SMG",
		"Scout",
		"Rifle/LMG",
		"Rifle/LMG",
		"SMG",
		"SMG",
		"Shotgun",
		"SMG",
		"Shotgun",
		"Rifle/LMG",
		"Shotgun",
		"Pistols",
		"Taser",
		"Pistols",
		"SMG",
		"SMG",
		"Shotgun",
		"Pistols",
		"AutoSnipers",
		"AutoSnipers",
		"Rifle/LMG",
		"Scout",
		"Other",
		"Other",
		"Nades",
		"Nades",
		"Nades",
		"Nades",
		"Nades",
		"Nades",
		"Other",
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		nil,
		"Other",
		"Rifle/LMG",
		"Pistols",
		nil,
		"Pistols",
		"Pistols",
		[197126] = "Other",
		[508] = "Other",
		[509] = "Other",
		[506] = "Other",
		[507] = "Other",
		[516] = "Other",
		[197116] = "Other",
		[197114] = "Other",
		[515] = "Other",
		[500] = "Other",
		[197108] = "Other",
		[197120] = "Other",
		[197124] = "Other",
		[197133] = "Other",
		[197131] = "Other",
		[197129] = "Other",
		[197127] = "Other",
		[197125] = "Other",
		[197123] = "Other",
		[262205] = "Pistols",
		[197122] = "Other",
		[197130] = "Other",
		[197117] = "Other",
		[197115] = "Other",
		[197113] = "Other",
		[197111] = "Other",
		[262208] = "Pistols",
		[505] = "Other",
		[514] = "Other",
		[512] = "Other",
		[197128] = "Other"
	},
	weapons_list = {},
	weapon_list_names = {}
}

for iter_0_0, iter_0_1 in pairs(anonteam_0_37.csgo_weapons) do
	if anonteam_0_37.weapons_list[iter_0_1] == nil then
		anonteam_0_37.weapons_list[iter_0_1] = {}

		table.insert(anonteam_0_37.weapon_list_names, iter_0_1)
	end

	table.insert(anonteam_0_37.weapons_list[iter_0_1], iter_0_0)
end

table.sort(anonteam_0_37.weapon_list_names)

anonteam_0_37.combo_weapon_ids = {}

function anonteam_0_37.sort_names_and_ids()
	local anonteam_50_0 = {}

	for iter_50_0, iter_50_1 in pairs(anonteam_0_37.weapon_list_names) do
		table.insert(anonteam_50_0, iter_50_1)

		anonteam_0_37.combo_weapon_ids[iter_50_1] = iter_50_0
	end

	return anonteam_50_0
end

anonteam_0_5.new("teleport_enable", anonteam_0_31.global_rage:switch("Teleport in Air"))
anonteam_0_5.new("teleport_weapons", anonteam_0_5.elements.teleport_enable:create():selectable("Weapons", anonteam_0_37.sort_names_and_ids()))

anonteam_0_37.min_penetrate_damage = 10

function anonteam_0_37.on_createmove(arg_51_0)
	if not anonteam_0_5.elements.teleport_enable:get() then
		return
	end

	if #anonteam_0_5.elements.teleport_weapons:get() < 1 then
		return
	end

	if not anonteam_0_16.double_tap:get() then
		return
	end

	if rage.exploit:get() ~= 1 then
		return
	end

	local anonteam_51_0 = entity.get_local_player()

	if anonteam_51_0 == nil or not anonteam_51_0:is_alive() then
		return
	end

	local anonteam_51_1 = anonteam_51_0:get_player_weapon()

	if anonteam_51_1 == nil then
		return
	end

	local anonteam_51_2 = anonteam_51_1:get_weapon_index()
	local anonteam_51_3 = anonteam_0_37.csgo_weapons[anonteam_51_2]

	if anonteam_51_3 == nil then
		return
	end

	if not anonteam_0_11(anonteam_0_5.elements.teleport_weapons:get(), anonteam_51_3) then
		return
	end

	if anonteam_51_0:get_anim_state().on_ground then
		return
	end

	local anonteam_51_4 = entity.get_players(true)

	if #anonteam_51_4 < 1 then
		return
	end

	local anonteam_51_5 = anonteam_51_0:get_eye_position()

	for iter_51_0, iter_51_1 in ipairs(anonteam_51_4) do
		if not iter_51_1:is_dormant() and iter_51_1:is_alive() then
			local anonteam_51_6 = iter_51_1:get_hitbox_position(6)
			local anonteam_51_7, anonteam_51_8 = utils.trace_bullet(anonteam_51_0, anonteam_51_5, anonteam_51_6)

			if anonteam_51_8.entity and anonteam_51_7 > anonteam_0_37.min_penetrate_damage and anonteam_51_8.entity == iter_51_1 then
				rage.exploit:force_teleport()

				break
			end
		end
	end
end

events.createmove:set(anonteam_0_37.on_createmove)

local anonteam_0_38 = {}

anonteam_0_38.works = false

anonteam_0_5.new("idealtick_enable", anonteam_0_31.global_rage:switch("Ideal Tick"))

anonteam_0_38.tab = anonteam_0_5.elements.idealtick_enable:create()

anonteam_0_5.new("idealtick_features", anonteam_0_38.tab:selectable("Options", {
	"Auto Peek",
	"Better Auto Stop",
	"Freestanding",
	"Jump Scout"
}))

function anonteam_0_38.on_render()
	anonteam_0_38.works = false

	anonteam_0_16.peek_assist:override()
	anonteam_0_16.auto_stop:override()
	anonteam_0_16.dt_auto_stop:override()
	anonteam_0_16.freestanding:override()

	if not anonteam_0_5.elements.idealtick_enable:get() then
		return
	end

	local anonteam_52_0 = entity.get_local_player()

	if anonteam_52_0 == nil or anonteam_52_0:is_alive() == false then
		return
	end

	local anonteam_52_1 = anonteam_52_0:get_anim_state()
	local anonteam_52_2 = anonteam_52_0:get_player_weapon()
	local anonteam_52_3 = anonteam_52_2 ~= nil and anonteam_52_2:get_name() or "nil"

	local function anonteam_52_4(arg_53_0)
		return anonteam_0_11(anonteam_0_5.elements.idealtick_features:get(), arg_53_0)
	end

	if anonteam_52_4("Auto Peek") then
		anonteam_0_16.peek_assist:override(true)
	end

	if anonteam_52_4("Freestanding") and not anonteam_0_16.freestanding:get() and anonteam_52_1.on_ground then
		anonteam_0_16.freestanding:override(true)
	end

	if anonteam_52_4("Better Auto Stop") and anonteam_52_1.on_ground then
		anonteam_0_16.auto_stop:override({
			"Early"
		})
		anonteam_0_16.dt_auto_stop:override({})
	end

	if anonteam_52_4("Jump Scout") and not anonteam_52_1.on_ground and anonteam_52_3 == "SSG 08" then
		anonteam_0_16.auto_stop:override({
			"In Air",
			"Full Stop"
		})
	end

	anonteam_0_38.works = true
end

events.render:set(anonteam_0_38.on_render)

anonteam_0_2.state_data = {}

function anonteam_0_2.add_player_state(arg_54_0, arg_54_1, arg_54_2)
	table.insert(anonteam_0_2.state_data, {
		menu_name = arg_54_0,
		indicator_name = arg_54_1,
		callback = arg_54_2
	})
end

function anonteam_0_2.get_player_state(arg_55_0)
	local anonteam_55_0 = entity.get_local_player()

	if anonteam_55_0 == nil then
		return nil
	end

	

	for iter_55_0, iter_55_1 in ipairs(anonteam_0_2.state_data) do
		if iter_55_1.callback(anonteam_55_0) then
			anonteam_55_1 = iter_55_1
		end
	end

	if arg_55_0 and anonteam_55_1 then
		return arg_55_0 == anonteam_55_1.menu_name
	end

	return anonteam_55_1
end

anonteam_0_2.add_player_state("Stand", "Stand", function(arg_56_0)
	local anonteam_56_0 = arg_56_0:get_anim_state()

	return anonteam_56_0.velocity:length() < 2 and anonteam_56_0.on_ground
end)
anonteam_0_2.add_player_state("Move", "Move", function(arg_57_0)
	local anonteam_57_0 = arg_57_0:get_anim_state()

	return anonteam_57_0.velocity:length() > 2 and anonteam_57_0.on_ground
end)
anonteam_0_2.add_player_state("Air", "Air", function(arg_58_0)
	return not arg_58_0:get_anim_state().on_ground or common.is_button_down(32)
end)
anonteam_0_2.add_player_state("Crouch", "Crouch", function(arg_59_0)
	local anonteam_59_0 = arg_59_0:get_anim_state()

	return (anonteam_59_0.anim_duck_amount > 0.8 or anonteam_0_16.fake_duck:get()) and anonteam_59_0.on_ground
end)
anonteam_0_2.add_player_state("Air-Crouch", "Air-C", function(arg_60_0)
	local anonteam_60_0 = arg_60_0:get_anim_state()

	return anonteam_60_0.anim_duck_amount > 0.9 and (not anonteam_60_0.on_ground or common.is_button_down(32))
end)
anonteam_0_2.add_player_state("On Use", "Use", function(arg_61_0)
	return anonteam_0_2.on_use_work
end)
anonteam_0_2.add_player_state("Roll", "Roll", function(arg_62_0)
	return anonteam_0_16.roll:get()
end)
anonteam_0_2.add_player_state("Slow-Mo", "Slow", function(arg_63_0)
	local anonteam_63_0 = arg_63_0:get_anim_state()

	return anonteam_0_16.slow_wark:get() and not anonteam_0_2.on_use_work and anonteam_63_0.on_ground
end)
anonteam_0_2.add_player_state("No Exploits", "No-Exp", function(arg_64_0)
	return not anonteam_0_16.double_tap:get() and not anonteam_0_16.hide_shots:get() and not anonteam_0_2.on_use_work
end)

anonteam_0_31.antiaim = anonteam_0_30("\f<shield>")
anonteam_0_31.antiaim_main = ui.create(anonteam_0_31.antiaim, anonteam_0_28("crosshairs", "Main"))

anonteam_0_5.new("antiaim_enable", anonteam_0_31.antiaim_main:switch("Enable"))
anonteam_0_5.new("antiaim_condition", anonteam_0_31.antiaim_main:combo("Condition", {
	"loading..."
}), function()
	return anonteam_0_5.elements.antiaim_enable:get()
end)
anonteam_0_5.new("antiaim_manuals", anonteam_0_31.antiaim_main:combo("Manuals", {
	"Backward",
	"At Target",
	"Forward",
	"Right",
	"Left"
}), function()
	return anonteam_0_5.elements.antiaim_enable:get()
end)
anonteam_0_5.new("antiaim_more", anonteam_0_31.antiaim_main:selectable("Options", {
	"Defensive AA",
	"Avoid Backstab",
	"On Use AA",
	"Break LC in Air",
	"Static Manuals",
	"Anti Bruteforce"
}), function()
	return anonteam_0_5.elements.antiaim_enable:get()
end)

anonteam_0_2.condition_names = {}
anonteam_0_2.menu_tabs = {}

function anonteam_0_2.create_condition(arg_68_0, arg_68_1)
	table.insert(anonteam_0_2.condition_names, arg_68_0)
	anonteam_0_5.elements.antiaim_condition:update(anonteam_0_2.condition_names)

	anonteam_0_2.menu_tabs[arg_68_0] = ui.create(anonteam_0_31.antiaim, anonteam_0_28("running", arg_68_0))

	if arg_68_1 ~= nil then
		anonteam_0_5.new("antiaim_Override_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:switch("Override " .. arg_68_0), function()
			return anonteam_0_5.elements.antiaim_condition:get() == arg_68_0 and anonteam_0_5.elements.antiaim_enable:get()
		end)
	end

	local function anonteam_68_0()
		local anonteam_70_0 = anonteam_0_5.elements.antiaim_condition:get() == arg_68_0 and anonteam_0_5.elements.antiaim_enable:get()

		if arg_68_1 ~= nil then
			return anonteam_70_0 and anonteam_0_5.elements["antiaim_Override_" .. arg_68_0]:get()
		end

		return anonteam_70_0
	end

	anonteam_0_5.new("antiaim_Yaw Add Left_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Left Add", -180, 180, 0), anonteam_68_0)
	anonteam_0_5.new("antiaim_Yaw Add Right_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Right Add", -180, 180, 0), anonteam_68_0)
	anonteam_0_5.new("antiaim_Yaw Modifier_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:combo("Modifier", {
		"Disabled",
		"Center",
		"Offset",
		"Random",
		"Spin",
		"3-Way",
		"5-Way",
		"X-Way"
	}), anonteam_68_0)

	local anonteam_68_1 = anonteam_0_5.elements["antiaim_Yaw Modifier_" .. arg_68_0]:create()

	anonteam_0_5.new("antiaim_Two Degree_" .. arg_68_0, anonteam_68_1:switch("Min\\Max Degree"))
	anonteam_0_5.new("antiaim_Randomization Degree_" .. arg_68_0, anonteam_68_1:slider("Randomization", 0, 30))
	anonteam_0_5.new("antiaim_Ways_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Ways", 3, 9, 5), function()
		return anonteam_0_5.elements["antiaim_Yaw Modifier_" .. arg_68_0]:get() == "X-Way" and anonteam_68_0()
	end)
	anonteam_0_5.new("antiaim_Modifier Degree_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Degree", -180, 180, 0), function()
		return anonteam_68_0() and not anonteam_0_5.elements["antiaim_Two Degree_" .. arg_68_0]:get() and anonteam_0_5.elements["antiaim_Yaw Modifier_" .. arg_68_0]:get() ~= "Disabled"
	end)
	anonteam_0_5.new("antiaim_Modifier Degree Left_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Min Degree", -180, 180, 0), function()
		return anonteam_68_0() and anonteam_0_5.elements["antiaim_Two Degree_" .. arg_68_0]:get() and anonteam_0_5.elements["antiaim_Yaw Modifier_" .. arg_68_0]:get() ~= "Disabled"
	end)
	anonteam_0_5.new("antiaim_Modifier Degree Right_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Max Degree", -180, 180, 0), function()
		return anonteam_68_0() and anonteam_0_5.elements["antiaim_Two Degree_" .. arg_68_0]:get() and anonteam_0_5.elements["antiaim_Yaw Modifier_" .. arg_68_0]:get() ~= "Disabled"
	end)
	anonteam_0_5.new("antiaim_Limit Type_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:combo("Fake Type", {
		"Static",
		"Jitter"
	}), anonteam_68_0)
	anonteam_0_5.new("antiaim_Jitter Value_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Jitter", 0, 60, 0), function()
		return anonteam_0_5.elements["antiaim_Limit Type_" .. arg_68_0]:get() == "Jitter" and anonteam_68_0()
	end)
	anonteam_0_5.new("antiaim_Left Limit_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Left Fake", 0, 60, 0), anonteam_68_0)
	anonteam_0_5.new("antiaim_Right Limit_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:slider("Right Fake", 0, 60, 0), anonteam_68_0)
	anonteam_0_5.new("antiaim_Options_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:selectable("Options", {
		"Avoid Overlap",
		"Jitter",
		"Randomize Jitter",
		"Anti Bruteforce"
	}), anonteam_68_0)
	anonteam_0_5.new("antiaim_Freestanding Body_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:combo("Freestanding", {
		"Off",
		"Peek Fake",
		"Peek Real"
	}), anonteam_68_0)
	anonteam_0_5.new("antiaim_Disable Anti Bruteforce_" .. arg_68_0, anonteam_0_2.menu_tabs[arg_68_0]:switch("Disable Anti Bruteforce"), anonteam_68_0)
end

anonteam_0_2.create_condition("Global")
anonteam_0_2.create_condition("Stand", function()
	return anonteam_0_2.get_player_state("Stand")
end)
anonteam_0_2.create_condition("Move", function()
	return anonteam_0_2.get_player_state("Move")
end)
anonteam_0_2.create_condition("Air", function()
	return anonteam_0_2.get_player_state("Air")
end)
anonteam_0_2.create_condition("Crouch", function()
	return anonteam_0_2.get_player_state("Crouch")
end)
anonteam_0_2.create_condition("Air-Crouch", function()
	return anonteam_0_2.get_player_state("Air-Crouch")
end)
anonteam_0_2.create_condition("Slow-Mo", function()
	return anonteam_0_2.get_player_state("Slow-Mo")
end)
anonteam_0_2.create_condition("On Use", function()
	return anonteam_0_2.get_player_state("On Use")
end)
anonteam_0_2.create_condition("No Exploits", function()
	return anonteam_0_2.get_player_state("No Exploits")
end)

anonteam_0_2.menu_refs = {
	Enabled = ui.find("Aimbot", "Anti Aim", "Angles", "Enabled"),
	Pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Pitch"),
	Yaw = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw"),
	Base = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Base"),
	["Yaw Offset"] = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"),
	["Yaw Modifier"] = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"),
	["Modifier Degree"] = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"),
	["Body Yaw"] = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"),
	["Left Limit"] = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"),
	["Right Limit"] = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"),
	Options = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Options"),
	["Freestanding Body"] = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Freestanding"),
	Freestanding = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding")
}
anonteam_0_2.get_manual_func = {
	Forward = function()
		anonteam_0_2.menu_refs.Base:set("Local View")

		return 180
	end,
	Backward = function()
		anonteam_0_2.menu_refs.Base:set("Local View")

		return 0
	end,
	Right = function()
		anonteam_0_2.menu_refs.Base:set("Local View")

		return 90
	end,
	Left = function()
		anonteam_0_2.menu_refs.Base:set("Local View")

		return -90
	end,
	["At Target"] = function()
		anonteam_0_2.menu_refs.Base:set("At Target")

		return 0
	end,
	Freestanding = function()
		return 0
	end,
	state = function(arg_90_0)
		local anonteam_90_0 = anonteam_0_5.elements.antiaim_manuals:get()

		return {
			left = anonteam_90_0 == "Left",
			right = anonteam_90_0 == "Right",
			any = anonteam_90_0 == "Left" or anonteam_90_0 == "Right"
		}
	end
}

function anonteam_0_2.get_desync_delta()
	return math.min(math.normalize_yaw(rage.antiaim:get_rotation(true) - rage.antiaim:get_rotation()), rage.antiaim:get_max_desync())
end

function anonteam_0_2.get_inverter_state()
	return anonteam_0_2.get_desync_delta() <= 0 and true or false
end

function anonteam_0_2.valid_on_use()
	local anonteam_93_0 = entity.get_local_player()

	if anonteam_93_0 == nil then
		return
	end

	local anonteam_93_1 = anonteam_93_0:get_player_weapon()

	if anonteam_93_1 == nil then
		return
	end

	if anonteam_93_1:get_classname() == "CC4" then
		return true
	end

	local anonteam_93_2 = render.camera_angles()
	local anonteam_93_3 = vector():angles(anonteam_93_2)
	local anonteam_93_4 = anonteam_93_0:get_eye_position()
	local anonteam_93_5 = utils.trace_line(anonteam_93_4, anonteam_93_4 + anonteam_93_3 * 200, anonteam_93_0, 1174421515)

	if anonteam_93_5.entity ~= nil then
		local anonteam_93_6 = string.lower(anonteam_93_5.entity:get_classname())

		if anonteam_93_6:match("weapon") or anonteam_93_6:match("deagle") or anonteam_93_6:match("door") then
			return true
		end
	end

	if anonteam_93_0.m_iTeamNum ~= 3 then
		return false
	end

	local anonteam_93_7 = {
		1337
	}

	entity.get_entities("CHostage", false, function(arg_94_0)
		if arg_94_0.m_nHostageState ~= 3 then
			table.insert(anonteam_93_7, arg_94_0.m_vecOrigin:dist(anonteam_93_4))
		end
	end)
	entity.get_entities("CPlantedC4", false, function(arg_95_0)
		table.insert(anonteam_93_7, arg_95_0.m_vecOrigin:dist(anonteam_93_4))
	end)

	if math.min(unpack(anonteam_93_7)) < 125 then
		return true
	end

	return false
end

function anonteam_0_2.on_use(arg_96_0)
	local anonteam_96_0 = anonteam_0_5.elements.antiaim_enable:get()
	local anonteam_96_1 = anonteam_0_11(anonteam_0_5.elements.antiaim_more:get(), "On Use AA")

	anonteam_0_2.on_use_work = anonteam_96_0 and anonteam_96_1 and not anonteam_0_2.valid_on_use() and arg_96_0.in_use

	if anonteam_0_2.on_use_work then
		arg_96_0.in_use = not arg_96_0.in_use
	end
end

events.createmove:set(anonteam_0_2.on_use)

anonteam_0_16["lag options"] = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options")
anonteam_0_16["hs options"] = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots", "Options")

function anonteam_0_2.break_lc_air()
	anonteam_0_16["lag options"]:override()
	anonteam_0_16["hs options"]:override()

	if not anonteam_0_11(anonteam_0_5.elements.antiaim_more:get(), "Break LC in Air") then
		return
	end

	local anonteam_97_0 = anonteam_0_2.get_player_state()

	if anonteam_97_0 and (anonteam_97_0.indicator_name == "Air" or anonteam_97_0.indicator_name == "Air-C") then
		anonteam_0_16["lag options"]:override("Always On")
		anonteam_0_16["hs options"]:override("Break LC")
	end
end

events.createmove:set(anonteam_0_2.break_lc_air)

local anonteam_0_39 = {
	limits = {
		max = 10,
		min = 2
	}
}

anonteam_0_31.antibrute = ui.create(anonteam_0_31.antiaim, anonteam_0_28("sync-alt", "Anti Bruteforce"))

function anonteam_0_39.visible()
	return anonteam_0_5.elements.antiaim_enable:get() and anonteam_0_11(anonteam_0_5.elements.antiaim_more:get(), "Anti Bruteforce")
end

anonteam_0_5.new("antibrute_count", anonteam_0_31.antibrute:slider("Count", anonteam_0_39.limits.min, anonteam_0_39.limits.max), function()
	return false
end)

anonteam_0_39.ui_count = anonteam_0_5.elements.antibrute_count

anonteam_0_5.new("antibrute_label", anonteam_0_31.antibrute:label("Phase Manage"), anonteam_0_39.visible)
anonteam_0_5.new("antibrute_add", anonteam_0_31.antibrute:button(anonteam_0_28("plus", "Create"), nil, true), anonteam_0_39.visible):set_callback(function()
	if anonteam_0_39.ui_count:get() < anonteam_0_39.limits.max then
		anonteam_0_39.ui_count:set(anonteam_0_39.ui_count:get() + 1)
	end
end)
anonteam_0_5.new("antibrute_delete", anonteam_0_31.antibrute:button(anonteam_0_28("minus", "Delete"), nil, true), anonteam_0_39.visible):set_callback(function()
	if anonteam_0_39.ui_count:get() > anonteam_0_39.limits.min then
		anonteam_0_39.ui_count:set(anonteam_0_39.ui_count:get() - 1)
	end
end)

anonteam_0_39.count = 0

function anonteam_0_39.create_phase()
	anonteam_0_39.count = anonteam_0_39.count + 1

	local anonteam_102_0 = tostring(anonteam_0_39.count)

	anonteam_0_5.new("antibrute_label:" .. anonteam_102_0, anonteam_0_31.antibrute:label("Phase: " .. anonteam_0_20(anonteam_102_0, nil, true)))

	local anonteam_102_1 = anonteam_0_5.elements["antibrute_label:" .. anonteam_102_0]:create()

	anonteam_0_5.new("antibrute_left:" .. anonteam_102_0, anonteam_102_1:slider("Left Add", -180, 180, 0))
	anonteam_0_5.new("antibrute_right:" .. anonteam_102_0, anonteam_102_1:slider("Right Add", -180, 180, 0))
	anonteam_0_5.new("antibrute_modifier:" .. anonteam_102_0, anonteam_102_1:combo("Modifier", {
		"Disabled",
		"Center",
		"Offset",
		"Random",
		"Spin",
		"3-Way",
		"5-Way"
	}))
	anonteam_0_5.new("antibrute_degree:" .. anonteam_102_0, anonteam_102_1:slider("Degree", -180, 180, 0), function()
		return anonteam_0_5.elements["antibrute_modifier:" .. anonteam_102_0]:get() ~= "Disabled"
	end)
end

for iter_0_2 = 1, anonteam_0_39.limits.max do
	anonteam_0_39.create_phase()
end

function anonteam_0_39.get_settings(arg_104_0)
	return {
		left = anonteam_0_5.elements["antibrute_left:" .. arg_104_0] and anonteam_0_5.elements["antibrute_left:" .. arg_104_0]:get() or 0,
		right = anonteam_0_5.elements["antibrute_right:" .. arg_104_0] and anonteam_0_5.elements["antibrute_right:" .. arg_104_0]:get() or 0,
		modifier = anonteam_0_5.elements["antibrute_modifier:" .. arg_104_0] and anonteam_0_5.elements["antibrute_modifier:" .. arg_104_0]:get() or 0,
		degree = anonteam_0_5.elements["antibrute_degree:" .. arg_104_0] and anonteam_0_5.elements["antibrute_degree:" .. arg_104_0]:get() or 0
	}
end

function anonteam_0_39.menu_update()
	local anonteam_105_0 = anonteam_0_5.elements.antibrute_count:get()
	local anonteam_105_1 = anonteam_0_39.visible()

	for iter_105_0 = 1, anonteam_0_39.count do
		local anonteam_105_2 = anonteam_0_5.elements["antibrute_label:" .. iter_105_0]

		if anonteam_105_2 then
			anonteam_105_2:visibility(iter_105_0 <= anonteam_105_0 and anonteam_105_1)
		end
	end
end

anonteam_0_39.menu_update()
anonteam_0_5.elements.antiaim_more:set_callback(anonteam_0_39.menu_update)
anonteam_0_5.elements.antiaim_enable:set_callback(anonteam_0_39.menu_update)
anonteam_0_5.elements.antibrute_add:set_callback(anonteam_0_39.menu_update)
anonteam_0_5.elements.antibrute_delete:set_callback(anonteam_0_39.menu_update)

anonteam_0_39.work = true
anonteam_0_39.distance = 70
anonteam_0_39.last_handled_tick = -1
anonteam_0_39.current_phase = 0
anonteam_0_39.update_time = 0
anonteam_0_39.active_time = 5
anonteam_0_39.target = nil

function anonteam_0_39.get_log_color()
	return anonteam_0_5.elements.hitlogs_custom_kolors:get() and anonteam_0_5.elements.hitlogs_anti_brute_color:get() or color(255, 255, 204)
end

anonteam_0_39.last_hurt_curtime = 0

events.player_hurt:set(function()
	anonteam_0_39.last_hurt_curtime = math.floor(globals.curtime)
end)

function anonteam_0_39.on_bullet(arg_108_0)
	if not anonteam_0_39.visible() then
		return
	end

	if anonteam_0_39.last_handled_tick == globals.tickcount then
		return
	end

	if anonteam_0_39.last_hurt_curtime == math.floor(globals.curtime) then
		return
	end

	local anonteam_108_0 = entity.get_local_player()

	if not anonteam_108_0 or anonteam_108_0.m_iHealth <= 0 then
		return
	end

	local anonteam_108_1 = entity.get(arg_108_0.userid, true)

	if not anonteam_108_1 or anonteam_108_1:is_dormant() or not anonteam_108_1:is_enemy() then
		return
	end

	local anonteam_108_2 = anonteam_108_0:get_eye_position()

	if not anonteam_108_2 then
		return
	end

	local anonteam_108_3 = anonteam_108_1:get_eye_position()

	if not anonteam_108_3 then
		return
	end

	local anonteam_108_4 = vector(arg_108_0.x, arg_108_0.y, arg_108_0.z)

	if anonteam_108_2:closest_ray_point(anonteam_108_3, anonteam_108_4):dist(anonteam_108_2) > anonteam_0_39.distance then
		return
	end

	anonteam_0_39.last_handled_tick = globals.tickcount
	anonteam_0_39.target = anonteam_108_1
	anonteam_0_39.current_phase = anonteam_0_39.current_phase + 1

	if anonteam_0_39.current_phase > anonteam_0_39.ui_count:get() then
		anonteam_0_39.current_phase = 1
	end

	anonteam_0_39.update_time = globals.realtime + anonteam_0_39.active_time

	local anonteam_108_5 = anonteam_0_39.current_phase
	local anonteam_108_6 = anonteam_0_3.build_log("Switched phase due to {name} miss [phase: {phase}]", anonteam_0_39.get_log_color(), {
		alpha = true,
		name = anonteam_108_1:get_name(),
		phase = anonteam_108_5
	})

	anonteam_0_3.is_enabled("Center", function()
		anonteam_108_6:push_render("Center", col)
	end)
end

events.bullet_impact:set(anonteam_0_39.on_bullet)

function anonteam_0_39.reset()
	anonteam_0_39.current_phase = 0
	anonteam_0_39.target = nil
end

function anonteam_0_39.on_death(arg_111_0)
	local anonteam_111_0 = entity.get_local_player()
	local anonteam_111_1 = entity.get(arg_111_0.attacker, true)
	local anonteam_111_2 = entity.get(arg_111_0.userid, true)
	

	if anonteam_111_0 == anonteam_111_2 and anonteam_0_39.work == true then
		anonteam_111_3 = anonteam_0_3.build_log("Reset phase due to {local_player} death", anonteam_0_39.get_log_color(), {
			alpha = true,
			local_player = "local player"
		})

		anonteam_0_39.reset()
	end

	if anonteam_111_2 == anonteam_0_39.target then
		anonteam_111_3 = anonteam_0_3.build_log("Reset phase due to target {target} death", anonteam_0_39.get_log_color(), {
			alpha = true,
			target = anonteam_0_39.target and anonteam_0_39.target:get_name() or "?"
		})

		anonteam_0_39.reset()
	end

	if anonteam_111_3 ~= nil then
		anonteam_0_3.is_enabled("Center", function()
			anonteam_111_3:push_render("Center", col)
		end)
	end
end

events.player_death:set(anonteam_0_39.on_death)

function anonteam_0_2.x_way(arg_113_0, arg_113_1, arg_113_2)
	local anonteam_113_0 = {}

	for iter_113_0 = 0, arg_113_0 do
		local anonteam_113_1 = iter_113_0 / arg_113_0
		local anonteam_113_2 = anonteam_0_23.lerp(arg_113_1, arg_113_2, anonteam_113_1)

		table.insert(anonteam_113_0, anonteam_113_2)
	end

	return anonteam_113_0
end

anonteam_0_2.ref_hidden_aa = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Hidden")
anonteam_0_2.ref_avoid_backstab = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Avoid Backstab")

function anonteam_0_2.apply_current_condition()
	if not anonteam_0_5.elements.antiaim_enable:get() then
		return
	end

	local anonteam_114_0 = anonteam_0_2.get_player_state()

	if not anonteam_114_0 then
		return
	end

	local anonteam_114_1 = anonteam_114_0.menu_name

	local function anonteam_114_2(arg_115_0, arg_115_1)
		local anonteam_115_0 = arg_115_1 and arg_115_1 or anonteam_114_1
		local anonteam_115_1 = anonteam_0_5.elements[("antiaim_%s_%s"):format(arg_115_0, anonteam_115_0)]

		if anonteam_115_1 ~= nil then
			return anonteam_115_1:get()
		end

		return nil
	end

	if not anonteam_114_2("Override") then
		anonteam_114_1 = "Global"
	end

	if anonteam_0_39.update_time < globals.realtime then
		anonteam_0_39.reset()
	end

	if anonteam_0_2.on_use_work and (anonteam_0_16.freestanding:get_override() or anonteam_0_16.freestanding:get()) then
		anonteam_0_16.freestanding:override(false)
	end

	anonteam_0_39.work = anonteam_0_39.current_phase > 0 and not anonteam_114_2("Disable Anti Bruteforce")

	local anonteam_114_3 = anonteam_0_39.get_settings(anonteam_0_39.current_phase)
	local anonteam_114_4 = anonteam_0_2.on_use_work and "Forward" or anonteam_0_5.elements.antiaim_manuals:get()
	local anonteam_114_5 = anonteam_0_2.get_manual_func[anonteam_114_4]() or 0
	local anonteam_114_6 = anonteam_0_2.get_manual_func:state().any and anonteam_0_11(anonteam_0_5.elements.antiaim_more:get(), "Static Manuals")

	anonteam_0_2.ref_hidden_aa:override(anonteam_0_11(anonteam_0_5.elements.antiaim_more:get(), "Defensive AA"))
	anonteam_0_2.ref_avoid_backstab:override(anonteam_0_11(anonteam_0_5.elements.antiaim_more:get(), "Avoid Backstab"))

	local anonteam_114_7 = utils.random_int(-anonteam_114_2("Randomization Degree"), anonteam_114_2("Randomization Degree"))

	for iter_114_0, iter_114_1 in pairs(anonteam_0_2.menu_refs) do
		local anonteam_114_8 = anonteam_114_2(iter_114_0)

		if iter_114_0 == "Pitch" then
			anonteam_114_8 = anonteam_0_2.on_use_work and "Disabled" or "Down"
		end

		if iter_114_0 == "Yaw" then
			anonteam_114_8 = "Backward"
		end

		if iter_114_0 == "Body Yaw" then
			anonteam_114_8 = true
		end

		if iter_114_0 == "Enabled" then
			anonteam_114_8 = true
		end

		if iter_114_0 == "Yaw Offset" then
			local anonteam_114_9 = anonteam_0_39.work and anonteam_114_3.left or anonteam_114_2("Yaw Add Left")
			local anonteam_114_10 = anonteam_0_39.work and anonteam_114_3.right or anonteam_114_2("Yaw Add Right")
			local anonteam_114_11 = anonteam_0_2.get_inverter_state() and anonteam_114_9 or anonteam_114_10

			if anonteam_114_2("Yaw Modifier") == "X-Way" then
				local anonteam_114_12 = anonteam_114_2("Modifier Degree Left")
				local anonteam_114_13 = anonteam_114_2("Modifier Degree Right")
				local anonteam_114_14 = anonteam_114_2("Modifier Degree")
				local anonteam_114_15 = anonteam_0_2.x_way(anonteam_114_2("Ways"), anonteam_114_14, -anonteam_114_14)

				if anonteam_114_2("Two Degree") then
					anonteam_114_15 = anonteam_0_2.x_way(anonteam_114_2("Ways"), anonteam_114_12, anonteam_114_13)
				end

				local anonteam_114_16 = globals.tickcount % #anonteam_114_15 + 1

				anonteam_114_8 = anonteam_114_11 + anonteam_114_5 + (anonteam_114_6 and 0 or anonteam_114_15[anonteam_114_16]) + anonteam_114_7
			else
				anonteam_114_8 = anonteam_114_5 + anonteam_114_11 + anonteam_114_7
			end
		end

		if iter_114_0 == "Modifier Degree" then
			anonteam_114_8 = (anonteam_114_2("Two Degree") and (globals.tickcount % 8 > 3 and anonteam_114_2("Modifier Degree Left") or anonteam_114_2("Modifier Degree Right")) or anonteam_114_2("Modifier Degree")) + anonteam_114_7
		end

		if iter_114_0 == "Modifier Degree" and anonteam_0_39.work then
			anonteam_114_8 = anonteam_114_3.degree
		end

		if iter_114_0 == "Yaw Modifier" and anonteam_0_39.work then
			anonteam_114_8 = anonteam_114_3.modifier
		end

		if iter_114_0 == "Yaw Modifier" and anonteam_114_6 then
			anonteam_114_8 = "Disabled"
		end

		if iter_114_0 == "Yaw Modifier" and anonteam_114_8 == "X-Way" then
			anonteam_114_8 = "Disabled"
		end

		if iter_114_0 == "Options" and anonteam_114_6 then
			anonteam_114_8 = anonteam_0_13(anonteam_114_8, "Jitter")
		end

		if anonteam_114_2("Limit Type") == "Jitter" then
			local anonteam_114_17 = globals.tickcount % 4 > 1

			if iter_114_0 == "Left Limit" or iter_114_0 == "Right Limit" then
				anonteam_114_8 = anonteam_114_17 and anonteam_114_2(iter_114_0) or anonteam_114_2("Jitter Value")
			end
		end

		if anonteam_114_8 ~= nil then
			iter_114_1:override(anonteam_114_8)
		end
	end
end

events.createmove:set(anonteam_0_2.apply_current_condition)

anonteam_0_31.visual_main = ui.create(anonteam_0_31.settings, anonteam_0_28("eye", "Visual"))

anonteam_0_5.new("crosshair_indicators", anonteam_0_31.visual_main:switch("Crosshair Indicators"))

anonteam_0_31.cross_ind_tab = anonteam_0_5.elements.crosshair_indicators:create()

anonteam_0_5.new("cross_active_color", anonteam_0_31.cross_ind_tab:color_picker("Color", color(255, 107, 205)))
anonteam_0_5.new("cross_damage_num", anonteam_0_31.cross_ind_tab:switch("Damage"))
anonteam_0_5.new("cross_pos", anonteam_0_31.cross_ind_tab:combo("Position", {
	"Center",
	"Right"
}))

local anonteam_0_40 = {
	logo = render.load_font("verdana", 12, "abdi"),
	verdana_b = render.load_font("verdana", 11, "abd")
}
local anonteam_0_41 = {
	mt = {
		alpha = 0,
		add_y = 10,
		GetBool = function()
			return true
		end,
		CustomRender = function(arg_117_0, arg_117_1, arg_117_2)
			return
		end
	}
}

anonteam_0_41.move_in_scope = false
anonteam_0_16["Min. Damage"] = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage")
anonteam_0_41.damage_indicator = anonteam_0_18.create_draggable(anonteam_0_15.screen.x / 2, anonteam_0_15.screen.y / 2, 0, 0, "damage_indicator", function(arg_118_0)
	if not anonteam_0_5.elements.cross_damage_num:get() then
		return
	end

	local anonteam_118_0 = tonumber(anonteam_0_16["Min. Damage"]:get())
	local anonteam_118_1 = tostring(anonteam_118_0)
	local anonteam_118_2 = vector(arg_118_0.position_x, arg_118_0.position_y)
	local anonteam_118_3 = render.measure_text(2, nil, anonteam_118_1)

	arg_118_0.size_x = anonteam_118_3.x
	arg_118_0.size_y = anonteam_118_3.y

	if ui.get_alpha() > 0 then
		render.rect_outline(anonteam_118_2, anonteam_118_2 + vector(arg_118_0.size_x, arg_118_0.size_y) + 6, color(255, 255, 255, 100), 1, 3)
	end

	local anonteam_118_4 = anonteam_118_2 + 3

	render.text(2, anonteam_118_4, color(), nil, anonteam_118_1)
end)
anonteam_0_41.data = {}

function anonteam_0_41.data.CreateObject(arg_119_0, arg_119_1)
	table.insert(arg_119_0, setmetatable(arg_119_1, {
		__index = anonteam_0_41.mt
	}))
end

anonteam_0_41.data:CreateObject({
	logo = anonteam_0_8.text_animate("aarneclub", -1, {
		color(),
		color()
	}),
	CustomRender = function(arg_120_0, arg_120_1, arg_120_2)
		arg_120_2 = arg_120_2 - 6

		local anonteam_120_0 = anonteam_0_5.elements.cross_pos:get()
		local anonteam_120_1 = anonteam_0_5.elements.cross_active_color:get()

		anonteam_120_1.a = arg_120_0.alpha

		local anonteam_120_2 = anonteam_120_0 == "Center" and "c" or ""
		local anonteam_120_3 = anonteam_120_0 == "Center" and 6 or 0

		arg_120_0.logo:set_colors({
			anonteam_120_1,
			anonteam_120_1:alpha_modulate(0)
		})
		arg_120_0.logo:animate()
		render.text(1, vector(arg_120_1, arg_120_2 + anonteam_120_3), color(), anonteam_120_2, arg_120_0.logo:get_animated_text())

		local anonteam_120_4 = render.measure_text(1, nil, arg_120_0.logo:get_text())
		local anonteam_120_5 = anonteam_0_39.work and 60 / anonteam_0_39.active_time * (anonteam_0_39.update_time - globals.realtime) or math.abs(anonteam_0_2.get_desync_delta())
		local anonteam_120_6 = anonteam_0_23.new("desycn_line", math.clamp(anonteam_120_5, 2, 60), 0.05)
		local anonteam_120_7 = vector(anonteam_120_4.x, 3)
		local anonteam_120_8 = anonteam_120_0 == "Center" and anonteam_120_7.x / 2 or 0
		local anonteam_120_9 = vector(arg_120_1 - anonteam_120_8, arg_120_2 + anonteam_120_4.y)

		render.rect(anonteam_120_9, anonteam_120_9 + anonteam_120_7, color(0, 0, 0, arg_120_0.alpha / 3))
		render.rect_outline(anonteam_120_9, anonteam_120_9 + anonteam_120_7, color(0, 0, 0, arg_120_0.alpha / 2), 1)
		render.gradient(anonteam_120_9 + 1, anonteam_120_9 + vector(anonteam_120_7.x * anonteam_120_6 / 60, anonteam_120_7.y) - 1, anonteam_120_1, anonteam_120_1:alpha_modulate(0), anonteam_120_1, anonteam_120_1:alpha_modulate(0))
	end
})

local anonteam_0_42 = {
	get_velocity = function()
		local anonteam_121_0 = 1
		local anonteam_121_1 = entity.get_local_player()

		if anonteam_121_1 and anonteam_121_1:is_alive() then
			anonteam_121_0 = anonteam_121_1.m_flVelocityModifier
		end

		return anonteam_121_0
	end
}

anonteam_0_41.shit_talkin = (function()
	local anonteam_122_0 = {
		binds = {}
	}

	function anonteam_122_0.new_bind(arg_123_0, arg_123_1, arg_123_2, arg_123_3)
		if not anonteam_122_0.binds[arg_123_0] then
			anonteam_122_0.binds[arg_123_0] = {}
		end

		table.insert(anonteam_122_0.binds[arg_123_0], {
			alpha = 0,
			col = arg_123_2,
			name = arg_123_1,
			callback = arg_123_3
		})
	end

	function anonteam_122_0.get_active_binds(arg_124_0)
		local anonteam_124_0 = {}

		for iter_124_0, iter_124_1 in ipairs(anonteam_122_0.binds[arg_124_0]) do
			iter_124_1.alpha = anonteam_0_23.lerp(iter_124_1.alpha, iter_124_1.callback() and 255 or 0)

			if iter_124_1.alpha > 3 then
				table.insert(anonteam_124_0, iter_124_1)
			end
		end

		return anonteam_124_0
	end

	return anonteam_122_0
end)()

anonteam_0_41.shit_talkin.new_bind("first", "DT", function()
	return anonteam_0_23.new("color_dt", rage.exploit:get() == 1 and anonteam_0_5.elements.cross_active_color:get() or color(255, 100, 100))
end, function()
	return anonteam_0_16.double_tap:get()
end)
anonteam_0_41.shit_talkin.new_bind("first", "HS", function()
	return anonteam_0_5.elements.cross_active_color:get()
end, function()
	return anonteam_0_16.hide_shots:get()
end)
anonteam_0_41.shit_talkin.new_bind("first", "DMG", function()
	return anonteam_0_5.elements.cross_active_color:get()
end, function()
	for iter_130_0, iter_130_1 in ipairs(ui.get_binds()) do
		if iter_130_1.name == "Min. Damage" and iter_130_1.active then
			return true
		end
	end

	return false
end)
anonteam_0_41.shit_talkin.new_bind("second", "SP", function()
	return anonteam_0_5.elements.cross_active_color:get()
end, function()
	return anonteam_0_16.safe_points:get() == "Force"
end)
anonteam_0_41.shit_talkin.new_bind("second", "BA", function()
	return anonteam_0_5.elements.cross_active_color:get()
end, function()
	return anonteam_0_16.body_aim:get() == "Force"
end)
anonteam_0_41.shit_talkin.new_bind("second", "FS", function()
	return anonteam_0_5.elements.cross_active_color:get()
end, function()
	return anonteam_0_16.freestanding:get_override() or anonteam_0_16.freestanding:get()
end)
anonteam_0_41.data:CreateObject({
	GetBool = function()
		return #anonteam_0_41.shit_talkin.get_active_binds("first") > 0
	end,
	CustomRender = function(arg_138_0, arg_138_1, arg_138_2)
		local anonteam_138_0 = 0
		local anonteam_138_1 = anonteam_0_41.shit_talkin.get_active_binds("first")
		local anonteam_138_2 = 0

		for iter_138_0, iter_138_1 in ipairs(anonteam_138_1) do
			anonteam_138_2 = anonteam_138_2 + (1 + render.measure_text(2, nil, iter_138_1.name).x) * (iter_138_1.alpha / 255)
		end

		arg_138_1 = arg_138_1 - (anonteam_0_5.elements.cross_pos:get() == "Center" and anonteam_138_2 / 2 or 0)

		for iter_138_2, iter_138_3 in ipairs(anonteam_138_1) do
			local anonteam_138_3 = type(iter_138_3.col) == "function" and iter_138_3.col() or iter_138_3.col

			anonteam_138_3.a = iter_138_3.alpha

			render.text(2, vector(arg_138_1 + anonteam_138_0, arg_138_2), anonteam_138_3, nil, iter_138_3.name)

			anonteam_138_0 = anonteam_138_0 + (1 + render.measure_text(2, nil, iter_138_3.name).x) * (iter_138_3.alpha / 255)
		end
	end
})
anonteam_0_41.data:CreateObject({
	GetBool = function()
		return #anonteam_0_41.shit_talkin.get_active_binds("second") > 0
	end,
	CustomRender = function(arg_140_0, arg_140_1, arg_140_2)
		local anonteam_140_0 = 0
		local anonteam_140_1 = anonteam_0_41.shit_talkin.get_active_binds("second")
		local anonteam_140_2 = 0

		for iter_140_0, iter_140_1 in ipairs(anonteam_140_1) do
			anonteam_140_2 = anonteam_140_2 + (1 + render.measure_text(2, nil, iter_140_1.name).x) * (iter_140_1.alpha / 255)
		end

		arg_140_1 = arg_140_1 - (anonteam_0_5.elements.cross_pos:get() == "Center" and anonteam_140_2 / 2 or 0)

		for iter_140_2, iter_140_3 in ipairs(anonteam_140_1) do
			local anonteam_140_3 = type(iter_140_3.col) == "function" and iter_140_3.col() or iter_140_3.col

			anonteam_140_3.a = iter_140_3.alpha

			render.text(2, vector(arg_140_1 + anonteam_140_0, arg_140_2), anonteam_140_3, nil, iter_140_3.name)

			anonteam_140_0 = anonteam_140_0 + (1 + render.measure_text(2, nil, iter_140_3.name).x) * (iter_140_3.alpha / 255)
		end
	end
})

function anonteam_0_41.GetActiveBinds(arg_141_0)
	local anonteam_141_0 = {}

	for iter_141_0, iter_141_1 in ipairs(arg_141_0.data) do
		iter_141_1.alpha = anonteam_0_23.lerp(iter_141_1.alpha, iter_141_1:GetBool() and 255 or 0)

		if iter_141_1.alpha > 0 then
			table.insert(anonteam_141_0, iter_141_1)
		end
	end

	return anonteam_141_0
end

function anonteam_0_41.on_draw()
	if not anonteam_0_5.elements.crosshair_indicators:get() then
		return
	end

	local anonteam_142_0 = entity.get_local_player()

	if not anonteam_142_0 or not anonteam_142_0:is_alive() then
		return
	end

	anonteam_0_41.damage_indicator:update()

	anonteam_0_41.move_in_scope = anonteam_142_0.m_bIsScoped

	local anonteam_142_1 = anonteam_0_5.elements.cross_pos:get()
	local anonteam_142_2 = anonteam_0_23.new("plus_x", anonteam_0_41.move_in_scope and (anonteam_142_1 == "Center" and 35 or 5) or 0)
	local anonteam_142_3 = anonteam_0_15.screen.x / 2 + anonteam_142_2
	local anonteam_142_4 = anonteam_0_15.screen.y / 2 + 25
	local anonteam_142_5 = 0
	local anonteam_142_6 = anonteam_0_41:GetActiveBinds()
	local anonteam_142_7 = 0

	for iter_142_0, iter_142_1 in pairs(anonteam_142_6) do
		local anonteam_142_8 = anonteam_142_4 + anonteam_142_5 * iter_142_1.add_y

		iter_142_1:CustomRender(anonteam_142_3, anonteam_142_8)

		anonteam_142_5 = anonteam_142_5 + iter_142_1.alpha / 255
	end
end

events.render:set(anonteam_0_41.on_draw)

local anonteam_0_43 = {}

anonteam_0_5.new("side_indicators", anonteam_0_31.visual_main:switch("Side Indicators"))

anonteam_0_43.tab = anonteam_0_5.elements.side_indicators:create()

anonteam_0_5.new("side_binds", anonteam_0_43.tab:selectable("Binds", {
	"Bomb Info",
	"Min. Damage",
	"Hitchance",
	"Ping",
	"Double Tab",
	"Hide Shots",
	"Dormant Aimbot",
	"Freestanding",
	"Fake Duck",
	"Safe Points",
	"Body Aim",
	"Ragebot Stats",
	"Fake"
}))
anonteam_0_5.new("side_pos_y", anonteam_0_43.tab:slider("Offset", 0, anonteam_0_15.screen.y, math.floor(anonteam_0_15.screen.y / 1.4)), function()
	return #anonteam_0_5.elements.side_binds:get() > 0
end)

anonteam_0_40.side_default = render.load_font("calibri", 23, "adb")
anonteam_0_40.side_small = render.load_font("calibri", 19, "adb")
anonteam_0_43.mt = {
	alpha = 0,
	add_y = 40,
	GetBool = function()
		return true
	end,
	CustomRender = function(arg_145_0, arg_145_1, arg_145_2)
		return
	end
}
anonteam_0_43.data = {}

function anonteam_0_43.data.CreateObject(arg_146_0, arg_146_1)
	table.insert(arg_146_0, setmetatable(arg_146_1, {
		__index = anonteam_0_43.mt
	}))
end

function anonteam_0_43.render_gradient(arg_147_0, arg_147_1, arg_147_2, arg_147_3, ...)
	render.gradient(vector(arg_147_0, arg_147_1), vector(arg_147_0 + arg_147_2, arg_147_1 + arg_147_3), ...)
end

function anonteam_0_43.render_indicator(arg_148_0, arg_148_1, arg_148_2, arg_148_3)
	local anonteam_148_0 = render.measure_text(anonteam_0_40.side_default, nil, arg_148_3)
	local anonteam_148_1 = arg_148_2.a / 255

	anonteam_0_43.render_gradient(arg_148_0 - 10, arg_148_1 - 5, anonteam_148_0.x / 2 + 10, anonteam_148_0.y + 10, color(0, 0, 0, 0 * anonteam_148_1), color(0, 0, 0, 30 * anonteam_148_1), color(0, 0, 0, 0 * anonteam_148_1), color(0, 0, 0, 30 * anonteam_148_1))
	anonteam_0_43.render_gradient(arg_148_0 + anonteam_148_0.x / 2, arg_148_1 - 5, anonteam_148_0.x / 2 + 10, anonteam_148_0.y + 10, color(0, 0, 0, 30 * anonteam_148_1), color(0, 0, 0, 0 * anonteam_148_1), color(0, 0, 0, 30 * anonteam_148_1), color(0, 0, 0, 0 * anonteam_148_1))
	render.text(anonteam_0_40.side_default, vector(arg_148_0, arg_148_1), arg_148_2, nil, arg_148_3)
end

anonteam_0_43.data:CreateObject({
	GetBool = function(arg_149_0)
		return anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Fake")
	end,
	CustomRender = function(arg_150_0, arg_150_1, arg_150_2)
		local anonteam_150_0 = anonteam_0_23.new("desync_side", math.abs(anonteam_0_2.get_desync_delta())) / 60
		local anonteam_150_1 = color(195, 16, 16):lerp(color(132, 195, 16), anonteam_150_0)

		anonteam_150_1.a = arg_150_0.alpha

		anonteam_0_43.render_indicator(arg_150_1, arg_150_2, anonteam_150_1, "FAKE")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_151_0)
		return anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Ragebot Stats")
	end,
	CustomRender = function(arg_152_0, arg_152_1, arg_152_2)
		local anonteam_152_0 = color(200, 200, 200)

		anonteam_152_0.a = arg_152_0.alpha

		local anonteam_152_1 = anonteam_0_35.shots_data.hit + anonteam_0_35.shots_data.miss
		local anonteam_152_2 = anonteam_0_35.shots_data.hit / anonteam_152_1
		local anonteam_152_3 = 0

		if anonteam_152_2 > 0 then
			anonteam_152_3 = math.floor(anonteam_152_2 * 100)
		end

		local anonteam_152_4 = ("%s/%s (%s%%)"):format(anonteam_0_35.shots_data.hit, anonteam_0_35.shots_data.miss, anonteam_152_3)

		anonteam_0_43.render_indicator(arg_152_1, arg_152_2, anonteam_152_0, anonteam_152_4)
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_153_0)
		if not anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Min. Damage") then
			return false
		end

		for iter_153_0, iter_153_1 in ipairs(ui.get_binds()) do
			if iter_153_1.name == "Min. Damage" and iter_153_1.active then
				return true
			end
		end

		return false
	end,
	CustomRender = function(arg_154_0, arg_154_1, arg_154_2)
		local anonteam_154_0 = color(200, 200, 200)

		anonteam_154_0.a = arg_154_0.alpha

		local anonteam_154_1 = tostring(anonteam_0_16["Min. Damage"]:get())

		anonteam_0_43.render_indicator(arg_154_1, arg_154_2, anonteam_154_0, ("DMG: %s"):format(anonteam_154_1))
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_155_0)
		if not anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Hitchance") then
			return false
		end

		for iter_155_0, iter_155_1 in ipairs(ui.get_binds()) do
			if iter_155_1.name == "Hit Chance" and iter_155_1.active then
				return true
			end
		end

		return false
	end,
	CustomRender = function(arg_156_0, arg_156_1, arg_156_2)
		local anonteam_156_0 = color(200, 200, 200, arg_156_0.alpha)
		local anonteam_156_1 = anonteam_0_16.hitchance:get()

		anonteam_0_43.render_indicator(arg_156_1, arg_156_2, anonteam_156_0, ("HC: %s"):format(anonteam_156_1))
	end
})

anonteam_0_16.fake_latency = ui.find("Miscellaneous", "Main", "Other", "Fake Latency")

anonteam_0_43.data:CreateObject({
	GetBool = function(arg_157_0)
		return anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Ping") and anonteam_0_16.fake_latency:get() > 0
	end,
	CustomRender = function(arg_158_0, arg_158_1, arg_158_2)
		local anonteam_158_0 = math.clamp(anonteam_0_22(0) / anonteam_0_16.fake_latency:get(), 0, 1)
		local anonteam_158_1 = color(238, 222, 185):lerp(color(123, 194, 21), anonteam_158_0)

		anonteam_158_1.a = arg_158_0.alpha

		anonteam_0_43.render_indicator(arg_158_1, arg_158_2, anonteam_158_1, "PING")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_159_0)
		return anonteam_0_16.fake_duck:get() and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Fake Duck")
	end,
	CustomRender = function(arg_160_0, arg_160_1, arg_160_2)
		local anonteam_160_0 = color(200, 200, 200, arg_160_0.alpha)

		anonteam_0_43.render_indicator(arg_160_1, arg_160_2, anonteam_160_0, "DUCK")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_161_0)
		return anonteam_0_16.body_aim:get() == "Force" and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Body Aim")
	end,
	CustomRender = function(arg_162_0, arg_162_1, arg_162_2)
		local anonteam_162_0 = color(200, 200, 200)

		anonteam_162_0.a = arg_162_0.alpha

		anonteam_0_43.render_indicator(arg_162_1, arg_162_2, anonteam_162_0, "BAIM")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_163_0)
		return anonteam_0_16.safe_points:get() == "Force" and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Safe Points")
	end,
	CustomRender = function(arg_164_0, arg_164_1, arg_164_2)
		local anonteam_164_0 = color(200, 200, 200)

		anonteam_164_0.a = arg_164_0.alpha

		anonteam_0_43.render_indicator(arg_164_1, arg_164_2, anonteam_164_0, "SAFE")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_165_0)
		return anonteam_0_2.menu_refs.Freestanding:get() and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Freestanding")
	end,
	CustomRender = function(arg_166_0, arg_166_1, arg_166_2)
		local anonteam_166_0 = color(200, 200, 200)

		anonteam_166_0.a = arg_166_0.alpha

		anonteam_0_43.render_indicator(arg_166_1, arg_166_2, anonteam_166_0, "FS")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_167_0)
		return anonteam_0_16.dormant_aimbot:get() and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Dormant Aimbot")
	end,
	CustomRender = function(arg_168_0, arg_168_1, arg_168_2)
		local anonteam_168_0 = color(200, 200, 200)

		anonteam_168_0.a = arg_168_0.alpha

		anonteam_0_43.render_indicator(arg_168_1, arg_168_2, anonteam_168_0, "DA")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_169_0)
		return anonteam_0_16.hide_shots:get() and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Hide Shots")
	end,
	CustomRender = function(arg_170_0, arg_170_1, arg_170_2)
		local anonteam_170_0 = color(200, 200, 200)

		anonteam_170_0.a = arg_170_0.alpha

		anonteam_0_43.render_indicator(arg_170_1, arg_170_2, anonteam_170_0, "OS")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_171_0)
		return anonteam_0_16.double_tap:get() and anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Double Tab")
	end,
	CustomRender = function(arg_172_0, arg_172_1, arg_172_2)
		local anonteam_172_0 = rage.exploit:get() == 1 and color(200, 200, 200) or color(255, 0, 50)

		anonteam_172_0.a = arg_172_0.alpha

		anonteam_0_43.render_indicator(arg_172_1, arg_172_2, anonteam_172_0, "DT")
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_173_0)
		local anonteam_173_0, anonteam_173_1 = anonteam_0_25.init():get_state()

		return anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Bomb Info") and anonteam_173_0 and not anonteam_173_1
	end,
	CustomRender = function(arg_174_0, arg_174_1, arg_174_2)
		local anonteam_174_0 = anonteam_0_25.init()
		local anonteam_174_1 = anonteam_174_0:get_site()
		local anonteam_174_2, anonteam_174_3 = anonteam_174_0:get_timer()
		local anonteam_174_4 = anonteam_0_23.new("bomb_timer", anonteam_174_2 < 5 and color(255, 0, 50) or color(222, 222, 222))

		anonteam_174_4.a = arg_174_0.alpha

		local anonteam_174_5 = ("%s - %.1fs"):format(anonteam_174_1, anonteam_174_2)

		anonteam_0_43.render_indicator(arg_174_1, arg_174_2, anonteam_174_4, anonteam_174_5)
	end
})
anonteam_0_43.data:CreateObject({
	GetBool = function(arg_175_0)
		local anonteam_175_0, anonteam_175_1 = anonteam_0_25.init():get_state()

		return anonteam_0_11(anonteam_0_5.elements.side_binds:get(), "Bomb Info") and anonteam_175_0 and not anonteam_175_1
	end,
	CustomRender = function(arg_176_0, arg_176_1, arg_176_2)
		local anonteam_176_0, anonteam_176_1 = anonteam_0_25.init():get_damage()
		local anonteam_176_2 = anonteam_0_23.new("bomb_fatal", anonteam_176_0 and color(255, 0, 50) or color(252, 243, 105))

		anonteam_176_2.a = arg_176_0.alpha

		local anonteam_176_3 = anonteam_176_0 and "FATAL" or ("-%s HP"):format(anonteam_176_1)

		anonteam_0_43.render_indicator(arg_176_1, arg_176_2, anonteam_176_2, anonteam_176_3)
	end
})

function anonteam_0_43.GetActiveBinds(arg_177_0)
	local anonteam_177_0 = {}

	for iter_177_0, iter_177_1 in ipairs(arg_177_0.data) do
		iter_177_1.alpha = iter_177_1:GetBool() and 255 or 0

		if iter_177_1.alpha > 0 then
			table.insert(anonteam_177_0, iter_177_1)
		end
	end

	return anonteam_177_0
end

function anonteam_0_43.on_draw()
	if not anonteam_0_5.elements.side_indicators:get() then
		return
	end

	local anonteam_178_0 = entity.get_local_player()

	if not anonteam_178_0 or not anonteam_178_0:is_alive() then
		return
	end

	local anonteam_178_1 = 20
	local anonteam_178_2 = anonteam_0_5.elements.side_pos_y:get()
	local anonteam_178_3 = 0
	local anonteam_178_4 = anonteam_0_43:GetActiveBinds()

	for iter_178_0, iter_178_1 in ipairs(anonteam_178_4) do
		local anonteam_178_5 = anonteam_178_2 - iter_178_0 * iter_178_1.add_y

		iter_178_1:CustomRender(anonteam_178_1, anonteam_178_5)
	end
end

events.render:set(anonteam_0_43.on_draw)

local anonteam_0_44 = {
	var = ui.find("Visuals", "World", "Main", "Override Zoom", "Scope Overlay")
}

anonteam_0_5.new("scope_lines", anonteam_0_31.visual_main:switch("Scope Lines"))

anonteam_0_44.tab = anonteam_0_5.elements.scope_lines:create()

anonteam_0_5.new("scope_color", anonteam_0_44.tab:color_picker("Color", color(255, 255, 255)))
anonteam_0_5.new("scope_offset", anonteam_0_44.tab:slider("Offset", 0, 100, 10))
anonteam_0_5.new("scope_length", anonteam_0_44.tab:slider("Length", 0, 300, 60))
anonteam_0_5.new("scope_options", anonteam_0_44.tab:listable("", "Spread Based", "Inverted", "T-Style"))

function anonteam_0_44.on_draw()
	if not anonteam_0_5.elements.scope_lines:get() then
		return
	end

	anonteam_0_44.var:override("Remove All")

	local anonteam_179_0 = entity.get_local_player()
	local anonteam_179_1 = not not anonteam_179_0 and not not anonteam_179_0:is_alive() and not not anonteam_179_0.m_bIsScoped
	local anonteam_179_2 = anonteam_0_23.new("scope_lines", anonteam_179_1 and 1 or 0)
	local anonteam_179_3 = 0

	if anonteam_0_5.elements.scope_options:get(1) and anonteam_179_0 then
		local anonteam_179_4 = anonteam_179_0:get_player_weapon()

		if anonteam_179_4 and anonteam_179_0.m_bIsScoped then
			anonteam_179_3 = anonteam_0_23.new("spread", (anonteam_179_4:get_inaccuracy() + anonteam_179_4:get_spread()) * anonteam_179_4:get_max_speed()) / 2
		end
	end

	local function anonteam_179_5(arg_180_0)
		return anonteam_0_11(anonteam_0_5.elements.scope_disable_lines:get(), arg_180_0)
	end

	local anonteam_179_6 = not anonteam_0_5.elements.scope_options:get(2)

	anonteam_0_44.offset = anonteam_0_5.elements.scope_offset:get() * anonteam_179_2 + anonteam_179_3
	anonteam_0_44.length = anonteam_0_5.elements.scope_length:get() * anonteam_179_2
	anonteam_0_44.col_1 = anonteam_0_5.elements.scope_color:get()
	anonteam_0_44.col_2 = anonteam_0_5.elements.scope_color:get()
	anonteam_0_44.width = 1
	anonteam_0_44.col_1.a = (anonteam_179_6 and anonteam_0_44.col_1.a or 0) * anonteam_179_2
	anonteam_0_44.col_2.a = (not anonteam_179_6 and anonteam_0_44.col_2.a or 0) * anonteam_179_2
	anonteam_0_44.start_x = anonteam_0_15.screen.x / 2
	anonteam_0_44.start_y = anonteam_0_15.screen.y / 2

	render.gradient(vector(anonteam_0_44.start_x - anonteam_0_44.offset, anonteam_0_44.start_y), vector(anonteam_0_44.start_x - anonteam_0_44.offset - anonteam_0_44.length, anonteam_0_44.start_y + anonteam_0_44.width), anonteam_0_44.col_1, anonteam_0_44.col_2, anonteam_0_44.col_1, anonteam_0_44.col_2)
	render.gradient(vector(anonteam_0_44.start_x + anonteam_0_44.offset, anonteam_0_44.start_y), vector(anonteam_0_44.start_x + anonteam_0_44.offset + anonteam_0_44.length, anonteam_0_44.start_y + anonteam_0_44.width), anonteam_0_44.col_1, anonteam_0_44.col_2, anonteam_0_44.col_1, anonteam_0_44.col_2)
	render.gradient(vector(anonteam_0_44.start_x, anonteam_0_44.start_y + anonteam_0_44.offset), vector(anonteam_0_44.start_x + anonteam_0_44.width, anonteam_0_44.start_y + anonteam_0_44.offset + anonteam_0_44.length), anonteam_0_44.col_1, anonteam_0_44.col_1, anonteam_0_44.col_2, anonteam_0_44.col_2)

	if not anonteam_0_5.elements.scope_options:get(3) then
		render.gradient(vector(anonteam_0_44.start_x, anonteam_0_44.start_y - anonteam_0_44.offset), vector(anonteam_0_44.start_x + anonteam_0_44.width, anonteam_0_44.start_y - anonteam_0_44.offset - anonteam_0_44.length), anonteam_0_44.col_1, anonteam_0_44.col_1, anonteam_0_44.col_2, anonteam_0_44.col_2)
	end
end

function anonteam_0_44.on_destroy()
	anonteam_0_44.var:override()
end

anonteam_0_5.elements.scope_lines:set_callback(anonteam_0_44.on_destroy)
events.render:set(anonteam_0_44.on_draw)
events.shutdown:set(anonteam_0_44.on_destroy)

local anonteam_0_45 = {}

anonteam_0_5.new("arrows", anonteam_0_31.visual_main:switch("Arrows"))

anonteam_0_45.tab = anonteam_0_5.elements.arrows:create()

anonteam_0_5.new("arrows_size", anonteam_0_45.tab:slider("Size", 0, 15, 9))
anonteam_0_5.new("arrows_distance", anonteam_0_45.tab:slider("Distance", 0, 60, 43))
anonteam_0_5.new("arrows_inverted_color", anonteam_0_45.tab:color_picker("Inverted", color(150, 150, 255)))
anonteam_0_5.new("arrows_active_color", anonteam_0_45.tab:color_picker("Active", color(150, 150, 255)))
anonteam_0_5.new("arrows_inactive_color", anonteam_0_45.tab:color_picker("Inactive", color(0, 0, 0, 50)))
anonteam_0_5.new("arrows_in_scope", anonteam_0_45.tab:combo("In Scope", {
	"Nothing",
	"Disable",
	"Replace"
}))

function anonteam_0_45.on_draw()
	local anonteam_182_0 = true

	if not anonteam_0_5.elements.arrows:get() then
		anonteam_182_0 = false
	end

	local anonteam_182_1 = entity.get_local_player()

	if not anonteam_182_1 or not anonteam_182_1:is_alive() then
		anonteam_182_0 = false
	end

	local anonteam_182_2 = anonteam_0_5.elements.arrows_in_scope:get()
	local anonteam_182_3 = anonteam_182_1 and anonteam_182_1.m_bIsScoped

	if anonteam_0_5.elements.scope_lines:get() and anonteam_182_3 and anonteam_182_2 == "Disable" then
		anonteam_182_0 = false
	end

	local anonteam_182_4 = anonteam_0_15.screen.x / 2
	local anonteam_182_5 = anonteam_0_15.screen.y / 2
	local anonteam_182_6 = anonteam_0_5.elements.arrows_distance:get() or 0
	local anonteam_182_7 = anonteam_0_5.elements.arrows_size:get() or 0
	local anonteam_182_8 = 5 + (anonteam_0_5.elements.arrows_size:get() or 0)
	local anonteam_182_9 = anonteam_182_5 - anonteam_0_23.new("replace_arrows", anonteam_182_2 == "Replace" and anonteam_182_3 and anonteam_182_7 + 7 or 0)
	local anonteam_182_10 = anonteam_0_2.get_manual_func:state()
	local anonteam_182_11 = anonteam_0_2.get_inverter_state()
	local anonteam_182_12 = anonteam_0_5.elements.arrows_active_color:get()
	local anonteam_182_13 = anonteam_0_5.elements.arrows_inactive_color:get()
	local anonteam_182_14 = anonteam_0_23.new("arrows_alpha", anonteam_182_0 and 1 or 0)
	local anonteam_182_15 = anonteam_0_23.new("poly_left", anonteam_182_10.left and anonteam_182_12 or anonteam_182_13)

	anonteam_182_15.a = anonteam_182_15.a * anonteam_182_14

	local anonteam_182_16 = anonteam_0_23.new("poly_right", anonteam_182_10.right and anonteam_182_12 or anonteam_182_13)

	anonteam_182_16.a = anonteam_182_16.a * anonteam_182_14

	local anonteam_182_17 = anonteam_0_5.elements.arrows_inverted_color:get()
	local anonteam_182_18 = anonteam_0_23.new("inverted_left", anonteam_182_11 and anonteam_182_17 or anonteam_182_13)

	anonteam_182_18.a = anonteam_182_18.a * anonteam_182_14

	local anonteam_182_19 = anonteam_0_23.new("inverted_right", anonteam_182_11 and anonteam_182_13 or anonteam_182_17)

	anonteam_182_19.a = anonteam_182_19.a * anonteam_182_14

	render.poly(anonteam_182_15, vector(anonteam_182_4 - anonteam_182_6, anonteam_182_9 - anonteam_182_7), vector(anonteam_182_4 - (anonteam_182_6 + anonteam_182_8), anonteam_182_9), vector(anonteam_182_4 - anonteam_182_6, anonteam_182_9 + anonteam_182_7))
	render.poly(anonteam_182_16, vector(anonteam_182_4 + anonteam_182_6, anonteam_182_9 - anonteam_182_7), vector(anonteam_182_4 + (anonteam_182_6 + anonteam_182_8), anonteam_182_9), vector(anonteam_182_4 + anonteam_182_6, anonteam_182_9 + anonteam_182_7))
	render.rect(vector(anonteam_182_4 - (anonteam_182_6 - 2), anonteam_182_9 - anonteam_182_7), vector(anonteam_182_4 - (anonteam_182_6 - 2) + 2, anonteam_182_9 + anonteam_182_7), anonteam_182_18)
	render.rect(vector(anonteam_182_4 + (anonteam_182_6 - 2) - 2, anonteam_182_9 - anonteam_182_7), vector(anonteam_182_4 + (anonteam_182_6 - 2), anonteam_182_9 + anonteam_182_7), anonteam_182_19)
end

events.render:set(anonteam_0_45.on_draw)

anonteam_0_31.global_misc = ui.create(anonteam_0_31.settings, anonteam_0_28("wrench", "Misc"))

local anonteam_0_46 = {}

anonteam_0_5.new("clantag_enable", anonteam_0_31.global_misc:switch("Clantag"))

anonteam_0_46.tab = anonteam_0_5.elements.clantag_enable:create()

anonteam_0_5.new("clantag_type", anonteam_0_46.tab:combo("Type", {
	"original",
	"custom"
}))
anonteam_0_5.new("clantag_custom", anonteam_0_46.tab:input("Text", ""), function()
	return anonteam_0_5.elements.clantag_type:get() == "custom"
end)

anonteam_0_46.last = nil

function anonteam_0_46.set(arg_184_0)
	if arg_184_0 == anonteam_0_46.last then
		return
	end

	common.set_clan_tag(arg_184_0)

	anonteam_0_46.last = arg_184_0
end

function anonteam_0_46.build(arg_185_0)
	local anonteam_185_0 = {}

	for iter_185_0 = 1, #arg_185_0 do
		table.insert(anonteam_185_0, arg_185_0:sub(1, iter_185_0))
	end

	for iter_185_1 = 1, 4 do
		table.insert(anonteam_185_0, arg_185_0)
	end

	for iter_185_2 = 1, #arg_185_0 do
		table.insert(anonteam_185_0, arg_185_0:sub(iter_185_2, #arg_185_0))
	end

	table.insert(anonteam_185_0, "")

	return anonteam_185_0
end

anonteam_0_46.types = {}

function anonteam_0_46.new_type(arg_186_0, arg_186_1)
	if not anonteam_0_46.types[arg_186_0] then
		anonteam_0_46.types[arg_186_0] = {
			get_string = function()
				if type(arg_186_1) == "string" then
					return arg_186_1
				end

				return arg_186_1()
			end
		}
	end
end

anonteam_0_46.new_type("original", function()
	return "aarneclub"
end)
anonteam_0_46.new_type("custom", function()
	return anonteam_0_5.elements.clantag_custom:get()
end)

function anonteam_0_46.on_render()
	if not anonteam_0_5.elements.clantag_enable:get() then
		return
	end

	if not globals.is_connected then
		return
	end

	local anonteam_190_0 = utils.net_channel()

	if not anonteam_190_0 then
		return
	end

	local anonteam_190_1 = anonteam_0_5.elements.clantag_type:get()
	local anonteam_190_2 = anonteam_0_46.types[anonteam_190_1] and anonteam_0_46.types[anonteam_190_1]:get_string() or ""
	local anonteam_190_3 = anonteam_0_46.build(anonteam_190_2)
	local anonteam_190_4 = anonteam_190_0.latency[0] / globals.tickinterval
	local anonteam_190_5 = globals.tickcount + anonteam_190_4
	local anonteam_190_6 = math.floor(math.fmod(anonteam_190_5 / 13, #anonteam_190_3)) + 1

	anonteam_0_46.set(anonteam_190_3[anonteam_190_6])
end

events.render:set(anonteam_0_46.on_render)

function anonteam_0_46.destroy()
	anonteam_0_46.set("")
end

anonteam_0_5.elements.clantag_enable:set_callback(anonteam_0_46.destroy)
events.shutdown:set(anonteam_0_46.destroy)

local anonteam_0_47 = {}

anonteam_0_5.new("trashtalk_enable", anonteam_0_31.global_misc:switch("Trashtalk"))

anonteam_0_47.tab = anonteam_0_5.elements.trashtalk_enable:create()

anonteam_0_5.new("trashtalk_type", anonteam_0_47.tab:combo("Type", {
	"Random Phrases",
	"Reply in chat"
}))
anonteam_0_5.new("trashtalk_reply_random_case", anonteam_0_47.tab:switch("Random case"), function()
	return anonteam_0_5.elements.trashtalk_type:get() == "Reply in chat"
end)
anonteam_0_5.new("trashtalk_events", anonteam_0_47.tab:selectable("Events", {
	"On Kill",
	"On Death"
}), function()
	return anonteam_0_5.elements.trashtalk_type:get() == "Random Phrases"
end)

anonteam_0_47.phrases = {
	on_kill = {
		"A \xD0\x9C\xD0\x90\xD0\x9C\xD0\x95? \xD0\x90 \xD0\x9F\xD0\x90\xD0\x9F\xD0\x95?? \xD0\x90 \xD0\x92 \xD0\xA5\xD0\xA3\xD0\x99???",
		"\xD0\xB2 \xD0\xB3\xD1\x83\xD0\xBB\xD0\xB0\xD0\xB3",
		"\xD1\x82\xD0\xB2\xD0\xBE\xD1\x8F \xD0\xBC\xD0\xB0\xD1\x82\xD1\x8C \xD1\x81\xD0\xB2\xD0\xBE\xD0\xB8\xD0\xBC \xD0\xBE\xD1\x87\xD0\xBA\xD0\xBE\xD0\xBC \xD1\x83\xD0\xBC\xD0\xB5\xD0\xB5\xD1\x82 \xD0\xB4\xD0\xBE\xD1\x80\xD0\xBE\xD0\xB3\xD0\xB8 \xD1\x81\xD1\x82\xD1\x80\xD0\xBE\xD0\xB8\xD1\x82\xD1\x8C",
		"\xD1\x8F \xD1\x81\xD0\xBC\xD0\xBE\xD1\x82\xD1\x80\xD0\xB5\xD0\xBB \xD0\xB2\xD0\xB8\xD0\xB4\xD0\xBE\xD1\x81\xD1\x8B \xD0\xBD\xD0\xBE\xD0\xBB\xD0\xB0\xD0\xB2\xD0\xB0 \xD0\xBC\xD0\xBD\xD0\xB5 \xD0\xBF\xD0\xBE\xD1\x85\xD1\x83\xD0\xB9 (\xE2\x97\xA3_\xE2\x97\xA2)",
		"primordial.dev/refund.php",
		"\xD1\x8F \xD1\x82\xD0\xB2\xD0\xBE\xD1\x8E \xD0\xBC\xD0\xB0\xD1\x82\xD1\x8C \xD0\xB2 \xD1\x82\xD0\xB2\xD0\xBE\xD0\xB5\xD0\xBC \xD0\xB4\xD0\xBE\xD0\xBC\xD0\xB5 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB, \xD1\x85\xD0\xB0\xD1\x82\xD1\x83 \xD1\x80\xD0\xB0\xD0\xB7\xD0\xBE\xD0\xB3\xD1\x80\xD0\xB5\xD0\xB2\xD0\xB0\xD0\xBB",
		"\xD0\xB2\xD1\x81\xD1\x8F \xD0\xBA\xD0\xBE\xD0\xBD\xD1\x81\xD0\xBE\xD0\xBB\xD1\x8C \xD0\xB2 \xD1\x82\xD0\xB2\xD0\xBE\xD0\xB8\xD1\x85 \xD1\x81\xD0\xBC\xD0\xB5\xD1\x80\xD1\x82\xD1\x8F\xD1\x85",
		{
			"\xD1\x82\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB9 \xD1\x82\xD1\x83\xD0\xBF\xD0\xBE\xD1\x80\xD1\x8B\xD0\xBB\xD1\x8B\xD0\xB9",
			"\xD1\x8F \xD0\xB2\xD0\xB0\xD1\x85\xD1\x83\xD0\xB5"
		},
		"\xD0\xB7\xD0\xB0\xD0\xB3\xD0\xB8\xD0\xBF\xD0\xBD\xD0\xBE\xD1\x82\xD0\xB8\xD0\xB7\xD0\xB8\xD1\x80\xD0\xBE\xD0\xB2\xD0\xB0\xD0\xBB \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD1\x81\xD0\xB2\xD0\xBE\xD0\xB8\xD0\xBC \xD1\x87\xD0\xBB\xD0\xB5\xD0\xBD\xD0\xBE\xD0\xBC",
		"\xD0\xBE\xD0\xB9, \xD1\x83\xD0\xB1\xD0\xB8\xD0\xBB \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F, \xD0\xBC\xD0\xBD\xD0\xB5 \xD1\x82\xD0\xB0\xD0\xBB\xD0\xB8\xD1\x81\xD0\xBC\xD0\xB0\xD0\xBD \xD0\xBF\xD0\xB8\xD1\x81\xD1\x8F\xD0\xBD\xD0\xBA\xD0\xB0 \xD0\xBF\xD0\xBE\xD0\xBC\xD0\xBE\xD0\xB3",
		"\xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB \xD1\x83\xD0\xB1\xD1\x8C\xD1\x91\xD1\x88\xD1\x8C? \xD0\xBD\xD0\xB0\xD1\x81\xD1\x82\xD1\x80\xD0\xBE\xD0\xB9\xD0\xBA\xD0\xB8 \xD0\xBE\xD1\x82 \xD0\xBF\xD0\xB8\xD1\x81\xD1\x8F\xD0\xBD\xD0\xBA\xD0\xB8 \xD0\xBF\xD0\xBE\xD0\xBC\xD0\xBE\xD0\xB3\xD0\xBB\xD0\xB8",
		"\xD1\x83\xD0\xB4\xD0\xB0\xD0\xBB\xD0\xB8 northon, \xD0\xBA\xD1\x83\xD0\xBF\xD0\xB8 aarneclub",
		"\xD0\xB0 \xD0\xB8\xD0\xB1\xD0\xBE \xD0\xBD\xD0\xB5\xD1\x85\xD1\x83\xD0\xB9 \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD1\x82\xD1\x8B\xD1\x80\xD0\xBA\xD0\xB0\xD1\x82\xD1\x8C \xD0\xBF\xD0\xBE \xD0\xBA\xD0\xBB\xD0\xB0\xD0\xB2\xD0\xB8\xD0\xB0\xD1\x82\xD1\x83\xD1\x80\xD0\xB5 \xD0\xB8 \xD0\xBD\xD0\xB0\xD0\xB4\xD0\xB5\xD0\xB5\xD1\x82\xD1\x81\xD1\x8F \xD0\xBD\xD0\xB0 \xD1\x83\xD0\xB4\xD0\xB0\xD1\x87\xD1\x83",
		"\xD1\x85\xD0\xB0, \xD0\xBE\xD0\xB1\xD0\xB5\xD0\xB7\xD1\x8C\xD1\x8F\xD0\xBD\xD0\xBA\xD0\xB0, \xD1\x83\xD0\xB1\xD0\xB8\xD0\xBB \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F",
		{
			"\xD0\xBD\xD1\x83 \xD1\x88\xD0\xBE \xD1\x82\xD0\xB5 \xD0\xBD\xD0\xB0\xD0\xBF\xD0\xB8\xD1\x81\xD0\xB0\xD1\x82\xD1\x8C",
			"\xD0\xBD\xD1\x83 1"
		},
		"\xD1\x85\xD0\xB2\xD0\xB0\xD1\x82\xD0\xB8\xD1\x82 \xD0\xBF\xD0\xB8\xD1\x82\xD1\x8C \xD0\xB1\xD0\xBE\xD1\x80\xD0\xB6\xD0\xBE\xD0\xBC\xD0\xB8",
		"\xD0\xB2\xD0\xBE\xD1\x82 \xD1\x8D\xD1\x82\xD0\xBE \xD1\x85\xD0\xB5\xD0\xB4\xD1\x88\xD0\xBE\xD1\x82 0_\xD0\xBE",
		"neverlose.cc/market/item-dispute?id=acidtech",
		"\xE2\x99\x9B \xF0\x9D\x90\x8E\xF0\x9D\x90\x96\xF0\x9D\x90\x8D\xF0\x9D\x90\x84\xF0\x9D\x90\x83 \xF0\x9D\x90\x81\xF0\x9D\x90\x98 \xF0\x9D\x90\x8F\xF0\x9D\x90\x8E\xF0\x9D\x90\x95\xF0\x9D\x90\x88\xF0\x9D\x90\x83\xF0\x9D\x90\x8B\xF0\x9D\x90\x8E \xE2\x99\x9B",
		{
			"\xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C \xD1\x81 northon?",
			"\xD0\xBE\xD0\xBD\xD0\xBE \xD0\xB8 \xD0\xB2\xD0\xB8\xD0\xB4\xD0\xBD\xD0\xBE))"
		},
		"\xD0\xB2\xD1\x85\xD0\xB0\xD0\xB2\xD0\xB2\xD1\x85\xD0\xB0\xD0\xB7\xD1\x85 \xD0\xB1\xD0\xBB\xD1\x8F\xD0\xB4\xD1\x8C \xD0\xB5\xD1\x89\xD0\xB5 \xD1\x81\xD0\xBA\xD0\xB0\xD0\xB6\xD0\xB8 \xD1\x87\xD1\x82\xD0\xBE \xD1\x82\xD1\x8B \xD1\x81\xD1\x82\xD1\x80\xD0\xB8\xD0\xBC\xD1\x8B \xD1\x84\xD0\xB8\xD0\xBF\xD0\xB0 \xD1\x81\xD0\xBC\xD0\xBE\xD1\x82\xD1\x80\xD0\xB8\xD1\x88\xD1\x8C"
	},
	on_death = {
		{
			"\xD0\xBD\xD0\xB5 \xD0\xBB\xD0\xB8\xD0\xB2\xD0\xB0\xD0\xB9 \xD0\xBF\xD0\xB8\xD0\xB4\xD0\xBE\xD1\x80\xD0\xB0\xD1\x81",
			"\xD1\x89\xD0\xB0 \xD0\xB7\xD0\xB0\xD0\xB3\xD1\x80\xD1\x83\xD0\xB6\xD1\x83 \xD0\xBA\xD0\xBE\xD0\xBD\xD1\x84\xD0\xB8\xD0\xB3 \xD0\xBA\xD0\xB8\xD1\x81\xD0\xBB\xD0\xBE\xD0\xB3\xD0\xBE \xD0\xB8 \xD0\xB2\xD1\x8B\xD0\xB5\xD0\xB1\xD1\x83 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F"
		},
		{
			"\xD0\xBD\xD1\x83 \xD0\xBD\xD0\xB5 \xD0\xBD\xD0\xB5",
			"\xD0\xBD\xD1\x83 \xD1\x82\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB9 \xD0\xBF\xD0\xB8\xD0\xB4\xD0\xBE\xD1\x80\xD0\xB0\xD1\x81 \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F \xD1\x83\xD0\xB1\xD0\xB8\xD0\xBB"
		},
		"\xD0\xBD\xD1\x83 \xD1\x84\xD1\x83 \xD0\xB1\xD0\xBB\xD1\x8F\xD1\x82\xD1\x8C",
		"\xD0\xBD\xD1\x83 \xD0\xBF\xD1\x80\xD0\xB8\xD0\xB4\xD1\x83\xD1\x80\xD0\xBE\xD0\xBA \xD0\xBF\xD1\x80\xD0\xBE\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB \xD0\xB2\xD1\x81\xD1\x91 \xD1\x87\xD1\x82\xD0\xBE \xD0\xBC\xD0\xBE\xD0\xB6\xD0\xBD\xD0\xBE",
		"\xD0\xBD\xD1\x83 \xD0\xBC\xD0\xB0\xD0\xBC\xD1\x83 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB \xD1\x82\xD1\x8B \xD0\xBA\xD0\xB0\xD0\xBA \xD1\x83\xD0\xB1\xD0\xB8\xD0\xBB \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F",
		"\xD0\xBD\xD1\x83 \xD1\x83 \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F \xD0\xB6\xD0\xB5 \xD0\xB2\xD1\x81\xD1\x91-\xD1\x82\xD0\xB0\xD0\xBA\xD0\xB8 \xD0\xBD\xD0\xB5 \xD1\x81\xD0\xBA\xD0\xB8\xD1\x82..",
		"\xD1\x84\xD1\x83 \xD0\xB1\xD0\xBB\xD1\x8F\xD0\xB4\xD0\xBE\xD1\x82\xD0\xB0 \xD1\x81 \xD0\xBD\xD0\xBB\xD0\xBE\xD0\xBC \xD1\x83\xD0\xB1\xD0\xB8\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x82 \xD0\xBE\xD0\xBF\xD1\x8F\xD1\x82\xD1\x8C",
		"\xD0\xB0 \xD1\x82\xD0\xB8\xD0\xBC\xD0\xB5\xD0\xB9\xD1\x82 \xD0\xBA\xD0\xB0\xD0\xBA \xD0\xB2\xD1\x81\xD0\xB5\xD0\xB3\xD0\xB4\xD0\xB0 \xD0\xBD\xD0\xB0 \xD0\xB1",
		"\xD0\x9A\xD0\x90\xD0\x9A \xD0\xA2\xD0\xAB \xD0\xA2\xD0\xA3\xD0\xA2 \xD0\x92\xD0\xAB\xD0\xA1\xD0\xA2\xD0\xA0\xD0\x95\xD0\x9B\xD0\x98\xD0\x9B \xD0\x94\xD0\x90\xD0\xA3\xD0\x9D",
		"\xD1\x8D\xD1\x82\xD0\xBE \xD1\x82\xD1\x8B \xD1\x81\xD0\xBA\xD0\xBE\xD0\xBB\xD1\x8C\xD0\xBA\xD0\xBE \xD0\xBA\xD0\xBD\xD0\xBE\xD0\xBF\xD0\xBE\xD0\xBA \xD0\xBF\xD1\x80\xD0\xBE\xD0\xB6\xD0\xB0\xD0\xBB \xD1\x87\xD1\x82\xD0\xBE\xD0\xB1\xD1\x8B \xD1\x83\xD0\xB1\xD0\xB8\xD1\x82\xD1\x8C \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F?",
		"mcdonalds resolver",
		{
			"[acidtech] missed shot due to death",
			"\xD0\xB7\xD0\xB0\xD0\xB5\xD0\xB1\xD0\xB8\xD1\x81\xD1\x8C \xD0\xBF\xD0\xB0\xD1\x81\xD1\x82\xD0\xB0 \xD0\xB1\xD0\xBB\xD1\x8F\xD0\xB4\xD1\x8C"
		},
		{
			"you're killin' me slow",
			"so slow",
			"oh no"
		},
		"\xD1\x8D\xD1\x82\xD0\xBE \xD0\xB0\xD0\xBD\xD1\x80\xD0\xB5\xD0\xB3 \xD0\xB2 \xD0\xBF\xD0\xB8\xD0\xBD\xD0\xB3"
	}
}

function anonteam_0_47.say_after(arg_194_0, arg_194_1)
	utils.execute_after(arg_194_0, function()
		utils.console_exec("say " .. arg_194_1)
	end)
end

function anonteam_0_47.delay_say(arg_196_0)
	local anonteam_196_0 = 0.75

	if type(arg_196_0) == "string" then
		return anonteam_0_47.say_after(anonteam_196_0, arg_196_0)
	end

	for iter_196_0, iter_196_1 in ipairs(arg_196_0) do
		anonteam_0_47.say_after(anonteam_196_0, iter_196_1)

		anonteam_196_0 = anonteam_196_0 + 0.75
	end
end

function anonteam_0_47.on_event(arg_197_0)
	if not anonteam_0_5.elements.trashtalk_enable:get() then
		return
	end

	if anonteam_0_5.elements.trashtalk_type:get() ~= "Random Phrases" then
		return
	end

	local anonteam_197_0 = entity.get_local_player()
	local anonteam_197_1 = entity.get(arg_197_0.attacker, true)
	local anonteam_197_2 = entity.get(arg_197_0.userid, true)
	local anonteam_197_3 = anonteam_0_5.elements.trashtalk_events:get()

	if anonteam_0_11(anonteam_197_3, "On Death") and anonteam_197_1 ~= anonteam_197_0 and anonteam_197_2 == anonteam_197_0 then
		local anonteam_197_4 = anonteam_0_47.phrases.on_death
		local anonteam_197_5 = anonteam_197_4[utils.random_int(1, #anonteam_197_4)]

		anonteam_0_47.delay_say(anonteam_197_5)
	end

	if anonteam_0_11(anonteam_197_3, "On Kill") and anonteam_197_1 == anonteam_197_0 and anonteam_197_2 ~= anonteam_197_0 then
		local anonteam_197_6 = anonteam_0_47.phrases.on_kill
		local anonteam_197_7 = anonteam_197_6[utils.random_int(1, #anonteam_197_6)]

		anonteam_0_47.delay_say(anonteam_197_7)
	end
end

events.player_death:set(anonteam_0_47.on_event)

function anonteam_0_47.string_find(arg_198_0, arg_198_1)
	arg_198_0 = string.lower(arg_198_0)

	if type(arg_198_1) == "string" then
		return arg_198_0:find(arg_198_1)
	end

	for iter_198_0, iter_198_1 in pairs(arg_198_1) do
		if arg_198_0:find(iter_198_1) then
			return true
		end
	end

	return false
end

anonteam_0_47.check_words = {
	"1",
	"rs",
	"\xD0\xBA\xD1\x8B"
}

function anonteam_0_47.on_say(arg_199_0)
	if not anonteam_0_5.elements.trashtalk_enable:get() then
		return
	end

	if anonteam_0_5.elements.trashtalk_type:get() ~= "Reply in chat" then
		return
	end

	local anonteam_199_0 = entity.get_local_player()

	if not entity.get(arg_199_0.userid, true):is_enemy() then
		return
	end

	if anonteam_0_47.string_find(arg_199_0.text, anonteam_0_47.check_words) then
		return
	end

	if anonteam_0_5.elements.trashtalk_reply_random_case:get() then
		local anonteam_199_1 = ""

		for iter_199_0 = 1, #arg_199_0.text do
			local anonteam_199_2 = arg_199_0.text:sub(iter_199_0, iter_199_0)
			local anonteam_199_3 = utils.random_int(0, 1) == 1

			anonteam_199_1 = anonteam_199_1 .. string[anonteam_199_3 and "upper" or "lower"](anonteam_199_2)
		end

		arg_199_0.text = anonteam_199_1
	end

	anonteam_0_47.say_after(1, arg_199_0.text)
end

events.player_say:set(anonteam_0_47.on_say)

local anonteam_0_48 = {
	keys = {
		"viewmodel_fov",
		"viewmodel_offset_x",
		"viewmodel_offset_y",
		"viewmodel_offset_z"
	},
	backup = {}
}

anonteam_0_48.backup.data = {}

function anonteam_0_48.backup.update()
	for iter_200_0, iter_200_1 in ipairs(anonteam_0_48.keys) do
		anonteam_0_48.backup.data[iter_200_1] = cvar[iter_200_1]:float()
	end
end

anonteam_0_48.backup.update()

function anonteam_0_48.backup.set()
	for iter_201_0, iter_201_1 in pairs(anonteam_0_48.backup.data) do
		cvar[iter_201_0]:float(iter_201_1)
	end
end

events.shutdown:set(anonteam_0_48.backup.set)
anonteam_0_5.new("viewmodel_enable", anonteam_0_31.global_misc:switch("Viewmodel"))

anonteam_0_48.tab = anonteam_0_5.elements.viewmodel_enable:create()

anonteam_0_5.new("viewmodel_fov", anonteam_0_48.tab:slider("FOV", -100, 100, 68))
anonteam_0_5.new("viewmodel_offset_x", anonteam_0_48.tab:slider("X", -100, 100, 25, 0.1))
anonteam_0_5.new("viewmodel_offset_y", anonteam_0_48.tab:slider("Y", -100, 100, 0, 0.1))
anonteam_0_5.new("viewmodel_offset_z", anonteam_0_48.tab:slider("Z", -100, 100, -15, 0.1))

function anonteam_0_48.on_createmove()
	if not anonteam_0_5.elements.viewmodel_enable:get() then
		return
	end

	for iter_202_0, iter_202_1 in ipairs(anonteam_0_48.keys) do
		local anonteam_202_0 = anonteam_0_5.elements[iter_202_1]:get()

		if iter_202_1:find("fov") == nil then
			anonteam_202_0 = anonteam_202_0 * 0.1
		end

		cvar[iter_202_1]:float(anonteam_202_0, true)
	end
end

events.createmove:set(anonteam_0_48.on_createmove)
anonteam_0_5.elements.viewmodel_enable:set_callback(function()
	if not anonteam_0_5.elements.viewmodel_enable:get() then
		anonteam_0_48.backup.set()
	end
end)

local anonteam_0_49 = {}

anonteam_0_5.new("aspect_ratio_enable", anonteam_0_31.global_misc:switch("Aspect Ratio"))

anonteam_0_49.tab = anonteam_0_5.elements.aspect_ratio_enable:create()

anonteam_0_5.new("aspect_ratio_value", anonteam_0_49.tab:slider("Value", 0, 300, 140, 0.01))

anonteam_0_49.hiden_cvars_ref = ui.find("Miscellaneous", "Main", "Other", "Unlock Hidden Cvars")
anonteam_0_49.cvar = cvar.r_aspectratio

function anonteam_0_49.update_value()
	if not anonteam_0_49.hiden_cvars_ref:get() then
		anonteam_0_49.hiden_cvars_ref:set(true)
	end

	local anonteam_204_0 = anonteam_0_5.elements.aspect_ratio_enable:get() and anonteam_0_5.elements.aspect_ratio_value:get() * 0.01 or 0

	if anonteam_0_49.cvar:float() ~= anonteam_204_0 then
		anonteam_0_49.cvar:float(anonteam_204_0)
	end
end

function anonteam_0_49.shutdown()
	anonteam_0_49.cvar:int(0)
end

events.shutdown:set(anonteam_0_49.shutdown)
events.render:set(anonteam_0_49.update_value)

local anonteam_0_50 = {}

anonteam_0_5.new("radar_disable", anonteam_0_31.global_misc:switch("Disable Radar"))

function anonteam_0_50.on_switch()
	cvar.cl_drawhud_force_radar:int(anonteam_0_5.elements.radar_disable:get() and -1 or 0)
end

events.shutdown:set(function()
	cvar.cl_drawhud_force_radar:int(0)
end)
anonteam_0_50.on_switch()
anonteam_0_5.elements.radar_disable:set_callback(anonteam_0_50.on_switch)


local anonteam_0_52 = anonteam_0_31.global_misc:switch("Taskbar Notify")

anonteam_0_52:tooltip("Will flash your csgo icon in taskbar on round start.")
anonteam_0_5.new("taskbar_notify", anonteam_0_52)
ffi.cdef("        int GetForegroundWindow();\n        bool FlashWindow(int hwnd, bool invert);\n        int FindWindowA(const char* class, const char* name);\n    ")

local anonteam_0_53 = ffi.load("user32")
local anonteam_0_54 = anonteam_0_53.FindWindowA("Valve001", "Counter-Strike: Global Offensive - Direct3D 9")

local function anonteam_0_55()
	return anonteam_0_53.GetForegroundWindow() == anonteam_0_54
end

local function anonteam_0_56()
	if not anonteam_0_55() then
		anonteam_0_53.FlashWindow(anonteam_0_54, true)
	end
end

local function anonteam_0_57()
	if anonteam_0_52:get() then
		anonteam_0_56()
	end
end

events.round_start(anonteam_0_57)

anonteam_0_31.visual_other = ui.create(anonteam_0_31.settings, anonteam_0_28("swatchbook", "Other"))

anonteam_0_5.new("hitlogs", anonteam_0_31.visual_other:switch("Logs"))

anonteam_0_3.tab = anonteam_0_5.elements.hitlogs:create()

anonteam_0_5.new("hitlogs_offset", anonteam_0_3.tab:slider("Offset", 0, 300, 0))
anonteam_0_5.new("hitlogs_style", anonteam_0_3.tab:selectable("Style", {
	"Center",
	"Default",
	"Console"
}))
anonteam_0_5.new("hitlogs_font", anonteam_0_3.tab:combo("Font", {
	"Default",
	"Bold"
}), function()
	return #anonteam_0_5.elements.hitlogs_style:get() > 0
end)
anonteam_0_5.new("hitlogs_glow", anonteam_0_3.tab:switch("Glow"), function()
	return anonteam_0_11(anonteam_0_5.elements.hitlogs_style:get(), "Center")
end)
anonteam_0_5.elements.hitlogs_glow:tooltip("Only for center logs.")
anonteam_0_5.new("hitlogs_custom_kolors", anonteam_0_3.tab:switch("Custom Colors"), function()
	return #anonteam_0_5.elements.hitlogs_style:get() > 0
end)

function anonteam_0_3.custom_colors_visibility()
	return #anonteam_0_5.elements.hitlogs_style:get() > 0 and anonteam_0_5.elements.hitlogs_custom_kolors:get()
end

anonteam_0_5.new("hitlogs_hit_color", anonteam_0_3.tab:color_picker("Hit", color(178, 255, 178)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_death_color", anonteam_0_3.tab:color_picker("Death", color(125, 125, 125)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_spread_color", anonteam_0_3.tab:color_picker("Spread", color(255, 230, 127)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_lagcomp_color", anonteam_0_3.tab:color_picker("Lagcomp", color(255, 127, 127)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_resolver_color", anonteam_0_3.tab:color_picker("Resolver", color(255, 127, 127)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_prediction_color", anonteam_0_3.tab:color_picker("Prediction", color(255, 230, 127)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_unregistered_color", anonteam_0_3.tab:color_picker("Unregistered", color(125, 125, 125)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_player_death_color", anonteam_0_3.tab:color_picker("Player Death", color(125, 125, 125)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_misprediction_color", anonteam_0_3.tab:color_picker("Misprediction", color(255, 127, 127)), function()
	return anonteam_0_3.custom_colors_visibility()
end)
anonteam_0_5.new("hitlogs_anti_brute_color", anonteam_0_3.tab:color_picker("Anti Bruteforce", color(255, 255, 204)), function()
	return anonteam_0_3.custom_colors_visibility()
end)

anonteam_0_3.work_time = 5
anonteam_0_3.mt = {
	add_y = 15,
	alpha = 0,
	realtime = globals.realtime,
	default_pos = vector(5, 5),
	CustomRender = function(arg_225_0, arg_225_1, arg_225_2)
		local anonteam_225_0 = color(255, 255, 255, arg_225_0.alpha)
		local anonteam_225_1 = ""

		render.text(anonteam_0_40.verdana_b, vector(arg_225_1, arg_225_2), anonteam_225_0, nil, anonteam_225_1)
	end
}
anonteam_0_3.style = {}
anonteam_0_3.style.Center = {}
anonteam_0_3.style.Default = {}
anonteam_0_3.shots = 0

events.round_start:set(function()
	anonteam_0_3.shots = 0
end)

anonteam_0_3.count = {
	"st",
	"nd",
	"rd"
}
anonteam_0_3.hitgroup_names = {
	[0] = "generic",
	"head",
	"chest",
	"stomach",
	"left arm",
	"right arm",
	"left leg",
	"right leg",
	"neck",
	"generic",
	"gear"
}
anonteam_0_3.shot_data = {}

function anonteam_0_3.on_ragebot(arg_227_0)
	anonteam_0_3.shot_data = {
		backtrack = arg_227_0.backtrack,
		hitchance = arg_227_0.hitchance,
		hitgroup = arg_227_0.hitgroup,
		damage = arg_227_0.damage,
		angle = arg_227_0.angle
	}
end

events.aim_fire:set(anonteam_0_3.on_ragebot)

function anonteam_0_3.get_reason(arg_228_0)
	arg_228_0 = tostring(arg_228_0)

	local anonteam_228_0 = anonteam_0_5.elements.hitlogs_custom_kolors:get()

	return ({
		["nil"] = {
			name = "hit",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_hit_color:get() or color(178, 255, 178)
		},
		spread = {
			name = "spread",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_spread_color:get() or color(255, 230, 127)
		},
		correction = {
			name = "resolver",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_resolver_color:get() or color(255, 127, 127)
		},
		misprediction = {
			name = "misprediction",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_misprediction_color:get() or color(255, 127, 127)
		},
		["lagcomp failure"] = {
			name = "lagcomp failure",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_lagcomp_color:get() or color(255, 127, 127)
		},
		["prediction error"] = {
			name = "prediction error",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_prediction_color:get() or color(255, 230, 127)
		},
		["unregistered shot"] = {
			name = "unregistered",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_unregistered_color:get() or color(125, 125, 125)
		},
		["player death"] = {
			name = "player death",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_player_death_color:get() or color(125, 125, 125)
		},
		death = {
			name = "death",
			color = anonteam_228_0 and anonteam_0_5.elements.hitlogs_death_color:get() or color(125, 125, 125)
		}
	})[arg_228_0] or {
		name = "?",
		color = color()
	}
end

function anonteam_0_3.build_log(arg_229_0, arg_229_1, arg_229_2)
	local anonteam_229_0 = arg_229_0:gsub("{logo}", anonteam_0_21("aarneclub")):gsub("{prefix}", anonteam_0_20("\xE2\x80\xA2", color(50, 50, 50)))

	for iter_229_0, iter_229_1 in pairs(arg_229_2) do
		iter_229_0 = ("{%s}"):format(iter_229_0)
		anonteam_229_0 = anonteam_229_0:gsub(iter_229_0, anonteam_0_20(iter_229_1, arg_229_1, arg_229_2.alpha))
	end

	return {
		push_render = function(arg_230_0, arg_230_1, arg_230_2)
			local anonteam_230_0 = arg_230_1 == "Default" and vector(5, 5) or vector(anonteam_0_15.screen.x / 2, anonteam_0_15.screen.y / 1.5)
			local anonteam_230_1 = arg_230_1 == "Center" and "c" or nil
			local anonteam_230_2 = arg_230_2 and arg_230_2 or color()

			anonteam_0_10(anonteam_0_3.style[arg_230_1], {
				realtime = globals.realtime,
				default_pos = anonteam_230_0,
				CustomRender = function(arg_231_0, arg_231_1, arg_231_2, arg_231_3)
					local anonteam_231_0 = render.measure_text(arg_231_3, nil, anonteam_229_0)

					render.text(arg_231_3, vector(arg_231_1, arg_231_2), color(255, 255, 255, arg_231_0.alpha), anonteam_230_1, anonteam_229_0)

					if arg_230_1 == "Center" and anonteam_0_5.elements.hitlogs_glow:get() then
						render.shadow(vector(arg_231_1 - anonteam_231_0.x / 2, arg_231_2 + anonteam_231_0.y / 2 - 5), vector(arg_231_1 + anonteam_231_0.x / 2, arg_231_2 + anonteam_231_0.y / 2 - 5), color(anonteam_230_2.r, anonteam_230_2.g, anonteam_230_2.b, arg_231_0.alpha / 1.5), 30)
					end
				end
			}, anonteam_0_3.mt)
		end,
		get_text = function(arg_232_0)
			return anonteam_229_0
		end
	}
end

function anonteam_0_3.is_enabled(arg_233_0, arg_233_1)
	local anonteam_233_0 = anonteam_0_5.elements.hitlogs_style:get()
	local anonteam_233_1 = anonteam_0_11(anonteam_233_0, arg_233_0)

	if arg_233_1 and anonteam_233_1 then
		return arg_233_1()
	end

	return anonteam_233_1
end

function anonteam_0_3.on_shot(arg_234_0)
	if not anonteam_0_5.elements.hitlogs:get() then
		return
	end

	local anonteam_234_0 = entity.get_local_player()

	if not arg_234_0.target or not arg_234_0.target:is_player() or not anonteam_234_0 then
		return
	end

	local anonteam_234_1 = anonteam_234_0:get_player_weapon()

	if anonteam_234_1 ~= nil and anonteam_234_1:get_name() == "Zeus x27" and arg_234_0.state == nil then
		return
	end

	anonteam_0_3.shots = anonteam_0_3.shots + 1

	local anonteam_234_2 = anonteam_0_3.shots .. (anonteam_0_3.count[anonteam_0_3.shots] or "th")
	local anonteam_234_3 = arg_234_0.target:get_name()
	local anonteam_234_4 = anonteam_0_3.get_reason(arg_234_0.state)
	local anonteam_234_5 = anonteam_0_3.hitgroup_names[arg_234_0.hitgroup] or "?"
	local anonteam_234_6 = anonteam_0_3.hitgroup_names[arg_234_0.wanted_hitgroup] or "?"
	local anonteam_234_7 = anonteam_0_3.hitgroup_names[anonteam_0_3.shot_data.hitgroup] or "?"
	local anonteam_234_8 = arg_234_0.damage and math.floor(arg_234_0.damage) or 0
	local anonteam_234_9 = math.floor(arg_234_0.wanted_damage)
	local anonteam_234_10 = math.floor(arg_234_0.hitchance + 0.5)
	local anonteam_234_11 = math.floor(anonteam_0_3.shot_data.hitchance + 0.5)
	local anonteam_234_12 = math.floor(arg_234_0.backtrack)
	local anonteam_234_13 = arg_234_0.target:is_alive() and ("%s remaining"):format(arg_234_0.target.m_iHealth) or "dead"

	anonteam_0_3.is_enabled("Console", function()
		local anonteam_235_0 = anonteam_0_3.build_log("{logo} {prefix} Hit {name}'s {hitgroup}({want_hitgroup}) for {damage}({want_damage}) ({state}) [hc={hitchance}% | bt={backtrack}]", anonteam_234_4.color, {
			name = anonteam_234_3,
			hitgroup = anonteam_234_5,
			want_hitgroup = anonteam_234_6,
			damage = anonteam_234_8,
			want_damage = anonteam_234_9,
			state = anonteam_234_13,
			hitchance = anonteam_234_10,
			backtrack = anonteam_234_12
		})
		local anonteam_235_1 = anonteam_0_3.build_log("{logo} {prefix} Missed {name}'s {hitgroup}({want_damage}) due to {reason} [hc={hitchance}% | bt={backtrack}]", anonteam_234_4.color, {
			name = anonteam_234_3,
			hitgroup = anonteam_234_7,
			reason = anonteam_234_4.name,
			hitchance = anonteam_234_10,
			backtrack = anonteam_234_12,
			want_damage = anonteam_234_9
		})
		local anonteam_235_2 = anonteam_234_4.name == "hit" and anonteam_235_0 or anonteam_235_1

		print_raw(anonteam_235_2:get_text())
	end)
	anonteam_0_3.is_enabled("Default", function()
		local anonteam_236_0 = anonteam_0_3.build_log("Hit {name}'s {hitgroup}({want_hitgroup}) for {damage}({want_damage}) ({state}) [hc={hitchance}% | bt={backtrack}]", anonteam_234_4.color, {
			alpha = true,
			name = anonteam_234_3,
			hitgroup = anonteam_234_5,
			want_hitgroup = anonteam_234_6,
			damage = anonteam_234_8,
			want_damage = anonteam_234_9,
			state = anonteam_234_13,
			hitchance = anonteam_234_10,
			backtrack = anonteam_234_12
		})
		local anonteam_236_1 = anonteam_0_3.build_log("Missed {name}'s {hitgroup}({want_damage}) due to {reason} [hc={hitchance}% | bt={backtrack}]", anonteam_234_4.color, {
			alpha = true,
			name = anonteam_234_3,
			hitgroup = anonteam_234_7,
			reason = anonteam_234_4.name,
			hitchance = anonteam_234_10,
			backtrack = anonteam_234_12,
			want_damage = anonteam_234_9
		})

		;(anonteam_234_4.name == "hit" and anonteam_236_0 or anonteam_236_1):push_render("Default", anonteam_234_4.color)
	end)
	anonteam_0_3.is_enabled("Center", function()
		local anonteam_237_0 = arg_234_0.target:is_alive() and ("%s hp left"):format(arg_234_0.target.m_iHealth) or "dead"
		local anonteam_237_1 = anonteam_0_3.build_log("Hit {name}'s {hitgroup} for {damage} damage ({state})", anonteam_234_4.color, {
			alpha = true,
			name = anonteam_234_3,
			damage = anonteam_234_8,
			hitgroup = anonteam_234_5,
			want_hitgroup = anonteam_234_6,
			state = anonteam_237_0
		})
		local anonteam_237_2 = anonteam_0_3.build_log("Missed {name}'s {hitgroup} due to {reason}", anonteam_234_4.color, {
			alpha = true,
			name = anonteam_234_3,
			damage = anonteam_234_8,
			hitgroup = anonteam_234_7,
			reason = anonteam_234_4.name
		})

		;(anonteam_234_4.name == "hit" and anonteam_237_1 or anonteam_237_2):push_render("Center", anonteam_234_4.color)
	end)
end

events.aim_ack:set(anonteam_0_3.on_shot)

anonteam_0_3.weapon_to_verb = {
	hegrenade = "Naded",
	inferno = "Burned",
	knife = "Knifed",
	taser = "Tased"
}

function anonteam_0_3.on_hurt(arg_238_0)
	if not anonteam_0_5.elements.hitlogs:get() then
		return
	end

	local anonteam_238_0 = entity.get(arg_238_0.userid, true)
	local anonteam_238_1 = entity.get(arg_238_0.attacker, true)
	local anonteam_238_2 = entity.get_local_player()
	local anonteam_238_3 = anonteam_0_3.weapon_to_verb[arg_238_0.weapon]

	if anonteam_238_3 == nil or anonteam_238_2 == nil or anonteam_238_2 ~= anonteam_238_1 then
		return
	end

	local anonteam_238_4 = anonteam_238_0:get_name()
	local anonteam_238_5 = tostring(arg_238_0.dmg_health)
	local anonteam_238_6 = arg_238_0.health > 0 and ("%s hp left"):format(arg_238_0.health) or "dead"
	local anonteam_238_7 = anonteam_0_3.get_reason("nil")
	local anonteam_238_8 = anonteam_0_3.build_log(anonteam_238_3 .. " {name} for {damage} damage ({state})", anonteam_238_7.color, {
		alpha = true,
		name = anonteam_238_4,
		damage = anonteam_238_5,
		state = anonteam_238_6
	})

	anonteam_0_3.is_enabled("Center", function()
		anonteam_238_8:push_render("Center", anonteam_238_7.color)
	end)
	anonteam_0_3.is_enabled("Default", function()
		anonteam_238_8:push_render("Default", anonteam_238_7.color)
	end)

	local anonteam_238_9 = arg_238_0.health > 0 and ("%s remaining"):format(arg_238_0.health) or "dead"
	local anonteam_238_10 = anonteam_0_3.build_log("{logo} {prefix} " .. anonteam_238_3 .. " {name} for {damage} damage ({state})", anonteam_238_7.color, {
		name = anonteam_238_4,
		damage = anonteam_238_5,
		state = anonteam_238_9
	})

	anonteam_0_3.is_enabled("Console", function()
		print_raw(anonteam_238_10:get_text())
	end)
end

events.player_hurt:set(anonteam_0_3.on_hurt)

function anonteam_0_3.on_draw()
	if not anonteam_0_5.elements.hitlogs:get() then
		return
	end

	local anonteam_242_0 = 6
	local anonteam_242_1 = anonteam_0_5.elements.hitlogs_offset:get()
	local anonteam_242_2 = anonteam_0_5.elements.hitlogs_font:get() == "Bold" and anonteam_0_40.verdana_b or 1
	local anonteam_242_3 = {}

	for iter_242_0, iter_242_1 in pairs(anonteam_0_3.style) do
		if not anonteam_0_11(anonteam_0_5.elements.hitlogs_style:get(), iter_242_0) then
			-- block empty
		else
			anonteam_242_3[iter_242_0] = 0

			for iter_242_2, iter_242_3 in ipairs(iter_242_1) do
				local anonteam_242_4 = iter_242_3.realtime + anonteam_0_3.work_time > globals.realtime

				iter_242_3.alpha = anonteam_0_23.lerp(iter_242_3.alpha, anonteam_242_4 and 255 or 0)

				local anonteam_242_5 = iter_242_3.default_pos.y + anonteam_242_3[iter_242_0] * iter_242_3.add_y

				iter_242_3:CustomRender(iter_242_3.default_pos.x, anonteam_242_5 + anonteam_242_1, anonteam_242_2)

				anonteam_242_3[iter_242_0] = anonteam_242_3[iter_242_0] + iter_242_3.alpha / 255

				if anonteam_242_0 ~= 0 and anonteam_242_0 < #iter_242_1 then
					table.remove(iter_242_1, 1)
				end

				if not anonteam_242_4 and iter_242_3.alpha < 1 then
					table.remove(iter_242_1, iter_242_2)
				end
			end
		end
	end
end

events.render:set(anonteam_0_3.on_draw)

local anonteam_0_58 = {}

anonteam_0_5.new("widgets_enable", anonteam_0_31.visual_other:switch("Widgets"))

anonteam_0_58.tab = anonteam_0_5.elements.widgets_enable:create()

anonteam_0_5.new("widgets", anonteam_0_58.tab:selectable("Widgets", {
	"Watermark",
	"Keybinds",
	"Slow Down"
}))
anonteam_0_5.new("widgets_glow", anonteam_0_58.tab:switch("Glow"))
anonteam_0_5.new("widgets_color", anonteam_0_58.tab:color_picker("Color"))

function anonteam_0_58.render_box(arg_243_0, arg_243_1, arg_243_2, arg_243_3, arg_243_4)
	local anonteam_243_0 = anonteam_0_5.elements.widgets_color:get()

	anonteam_243_0.a = anonteam_243_0.a * arg_243_4

	local anonteam_243_1 = anonteam_243_0
	local anonteam_243_2 = color(anonteam_243_0.r, anonteam_243_0.g, anonteam_243_0.b, 50 * arg_243_4)
	local anonteam_243_3 = 3
	local anonteam_243_4 = anonteam_243_1
	local anonteam_243_5 = anonteam_243_2
	local anonteam_243_6 = anonteam_243_1
	local anonteam_243_7 = anonteam_243_2
	local anonteam_243_8 = 1

	render.rect(vector(arg_243_0 + anonteam_243_8, arg_243_1 + anonteam_243_8), vector(arg_243_0 + anonteam_243_8, arg_243_1 + anonteam_243_8) + vector(arg_243_2 - anonteam_243_8 - 1, arg_243_3 - anonteam_243_8), color(10, 10, 10, anonteam_243_0.a), anonteam_243_3)

	anonteam_243_0.a = 255 * arg_243_4

	if anonteam_0_5.elements.widgets_glow:get() then
		render.shadow(vector(arg_243_0 + 1, arg_243_1), vector(arg_243_0 + arg_243_2 - 1, arg_243_1 + arg_243_3), anonteam_243_0, 30, nil, 5)
	end

	render.gradient(vector(arg_243_0 + anonteam_243_3, arg_243_1), vector(arg_243_0 + anonteam_243_3, arg_243_1) + vector(arg_243_2 - anonteam_243_3 * 2, anonteam_243_8), anonteam_243_4, anonteam_243_5, anonteam_243_4, anonteam_243_5)
	render.circle_outline(vector(arg_243_0 + anonteam_243_3, arg_243_1 + anonteam_243_3), anonteam_243_4, anonteam_243_3, 180, 0.25, anonteam_243_8)
	render.circle_outline(vector(arg_243_0 + arg_243_2 - anonteam_243_3, arg_243_1 + anonteam_243_3), anonteam_243_5, anonteam_243_3, 270, 0.25, anonteam_243_8)
	render.gradient(vector(arg_243_0, arg_243_1 + anonteam_243_3), vector(arg_243_0, arg_243_1 + anonteam_243_3) + vector(anonteam_243_8, arg_243_3 - anonteam_243_3 * 2), anonteam_243_4, anonteam_243_4, anonteam_243_6, anonteam_243_6)
	render.gradient(vector(arg_243_0 + arg_243_2 - anonteam_243_8, arg_243_1 + anonteam_243_3), vector(arg_243_0 + arg_243_2 - anonteam_243_8, arg_243_1 + anonteam_243_3) + vector(anonteam_243_8, arg_243_3 - anonteam_243_3 * 2), anonteam_243_5, anonteam_243_5, anonteam_243_7, anonteam_243_7)
	render.circle_outline(vector(arg_243_0 + anonteam_243_3, arg_243_1 + arg_243_3 - anonteam_243_3), anonteam_243_6, anonteam_243_3, 90, 0.25, anonteam_243_8)
	render.circle_outline(vector(arg_243_0 + arg_243_2 - anonteam_243_3, arg_243_1 + arg_243_3 - anonteam_243_3), anonteam_243_7, anonteam_243_3, 0, 0.25, anonteam_243_8)
	render.gradient(vector(arg_243_0 + anonteam_243_3, arg_243_1 + arg_243_3 - anonteam_243_8), vector(arg_243_0 + anonteam_243_3, arg_243_1 + arg_243_3 - anonteam_243_8) + vector(arg_243_2 - anonteam_243_3 * 2, anonteam_243_8), anonteam_243_6, anonteam_243_7, anonteam_243_6, anonteam_243_7)
end

anonteam_0_58.watermark_features = {}

function anonteam_0_58.watermark_add_feature(arg_244_0, arg_244_1)
	table.insert(anonteam_0_58.watermark_features, {
		name = arg_244_0,
		callback = arg_244_1
	})
end

function anonteam_0_58.watermark_get_active()
	local anonteam_245_0 = {}

	for iter_245_0, iter_245_1 in ipairs(anonteam_0_58.watermark_features) do
		table.insert(anonteam_245_0, iter_245_1.callback())
	end

	return anonteam_245_0
end

anonteam_0_58.watermark_add_feature("script_name", function()
	local anonteam_246_0 = anonteam_0_5.elements.widgets_color:get()

	anonteam_246_0.a = 255

	local anonteam_246_1 = anonteam_0_8.text_animate("aarneclub" .. (anonteam_0_0 and " beta" or ""), -1, {
		anonteam_246_0 / 1.3,
		anonteam_246_0
	})

	anonteam_246_1:animate()

	return anonteam_246_1:get_animated_text() .. "\a" .. color(222, 222, 222):to_hex()
end)
anonteam_0_58.watermark_add_feature("username", function()
	return anonteam_0_15.user
end)
anonteam_0_58.watermark_add_feature("ping", function()
	return tostring(anonteam_0_22()) .. "ms"
end)
anonteam_0_58.watermark_add_feature("time", function()
	return common.get_date("%I:%M") .. " " .. string.lower(common.get_date("%p"))
end)

function anonteam_0_58.watermark()
	if not anonteam_0_5.elements.widgets_enable:get() or not anonteam_0_11(anonteam_0_5.elements.widgets:get(), "Watermark") then
		return
	end

	local anonteam_250_0 = anonteam_0_58.watermark_get_active()
	local anonteam_250_1 = table.concat(anonteam_250_0, " \xE2\x80\xA2 ")
	local anonteam_250_2 = render.measure_text(1, nil, anonteam_250_1)
	local anonteam_250_3 = anonteam_0_15.screen.x
	local anonteam_250_4 = 10
	local anonteam_250_5 = anonteam_250_2.x + 10
	local anonteam_250_6 = 18
	local anonteam_250_7 = anonteam_250_3 - anonteam_250_5 - 10

	anonteam_0_58.render_box(anonteam_250_7, anonteam_250_4, anonteam_250_5, anonteam_250_6, 1)
	render.text(1, vector(anonteam_250_7 + 5, anonteam_250_4 + 2), color(), nil, anonteam_250_1)
end

events.render:set(anonteam_0_58.watermark)

local anonteam_0_59 = {
	data = {},
	get_active = function(arg_251_0)
		local anonteam_251_0 = ui.get_binds()
		local anonteam_251_1 = {}
		local anonteam_251_2 = false

		for iter_251_0 = 1, #anonteam_251_0 do
			local anonteam_251_3 = anonteam_251_0[iter_251_0]
			local anonteam_251_4 = anonteam_251_3.name

			if arg_251_0.data[anonteam_251_4] == nil then
				arg_251_0.data[anonteam_251_4] = {
					alpha = 0,
					name = anonteam_251_4,
					value = anonteam_251_3.value,
					mode = anonteam_251_3.mode
				}
			else
				if arg_251_0.data[anonteam_251_4].value ~= anonteam_251_3.value then
					arg_251_0.data[anonteam_251_4].value = anonteam_251_3.value
				end

				local anonteam_251_5 = anonteam_251_3.active

				arg_251_0.data[anonteam_251_4].alpha = anonteam_0_23.lerp(arg_251_0.data[anonteam_251_4].alpha, anonteam_251_5 and 255 or 0)

				if arg_251_0.data[anonteam_251_4].alpha > 1 then
					local anonteam_251_6 = arg_251_0.data[anonteam_251_4].name
					local anonteam_251_7 = tostring(arg_251_0.data[anonteam_251_4].value)

					if #anonteam_251_6 + #anonteam_251_7 > 28 then
						if #anonteam_251_6 >= #anonteam_251_7 then
							anonteam_251_6 = string.sub(anonteam_251_6, 1, 14) .. "..."
						else
							anonteam_251_7 = string.sub(anonteam_251_7, 1, 14) .. "..."
						end
					end

					table.insert(anonteam_251_1, 1, {
						name = anonteam_251_6,
						state = anonteam_251_7,
						mode = arg_251_0.data[anonteam_251_4].mode,
						alpha = arg_251_0.data[anonteam_251_4].alpha
					})
				end

				if anonteam_251_5 then
					anonteam_251_2 = true
				end
			end
		end

		return {
			active = anonteam_251_1,
			is_any_active = anonteam_251_2
		}
	end
}

anonteam_0_58.keybinds_data = {
	width = 100,
	modes = {
		"holding",
		"toggled"
	}
}
anonteam_0_58.keybinds = anonteam_0_18.create_draggable(anonteam_0_15.screen.x / 2, 300, 0, 0, "widgets_keybinds", function(arg_252_0)
	if not anonteam_0_5.elements.widgets_enable:get() or not anonteam_0_11(anonteam_0_5.elements.widgets:get(), "Keybinds") then
		return
	end

	local anonteam_252_0 = vector(arg_252_0.position_x, arg_252_0.position_y)

	arg_252_0.size_x = anonteam_0_58.keybinds_data.width
	arg_252_0.size_y = 20

	local anonteam_252_1 = anonteam_0_59:get_active()
	local anonteam_252_2 = anonteam_252_1.is_any_active or ui.get_alpha() > 0
	local anonteam_252_3 = anonteam_0_23.new("widgets_keybinds_alpha", anonteam_252_2 and 1 or 0)

	if anonteam_252_3 < 0.05 then
		return
	end

	local anonteam_252_4 = anonteam_252_0.x
	local anonteam_252_5 = anonteam_252_0.y
	local anonteam_252_6 = arg_252_0.size_x
	local anonteam_252_7 = 18

	anonteam_0_58.render_box(anonteam_252_4, anonteam_252_5, anonteam_252_6, anonteam_252_7, anonteam_252_3)
	render.text(1, vector(anonteam_252_4 + anonteam_252_6 / 2, anonteam_252_5 + 8), color(222, 222, 222, 222 * anonteam_252_3), "c", "keybinds")

	local anonteam_252_8 = 0
	local anonteam_252_9 = 0

	for iter_252_0, iter_252_1 in ipairs(anonteam_252_1.active) do
		if iter_252_1.state == "true" then
			iter_252_1.state = anonteam_0_58.keybinds_data.modes[iter_252_1.mode]
		end

		iter_252_1.state = ("[%s]"):format(iter_252_1.state)

		local anonteam_252_10 = render.measure_text(1, nil, iter_252_1.state)
		local anonteam_252_11 = render.measure_text(1, nil, iter_252_1.name)
		local anonteam_252_12 = anonteam_252_5 + anonteam_252_9 * 15 + 20

		render.text(1, vector(anonteam_252_4 + 3, anonteam_252_12), color(222, 222, 222, iter_252_1.alpha * anonteam_252_3), nil, iter_252_1.name)
		render.text(1, vector(anonteam_252_4 + anonteam_252_6 - anonteam_252_10.x - 3, anonteam_252_12), color(222, 222, 222, iter_252_1.alpha * anonteam_252_3), nil, iter_252_1.state)

		local anonteam_252_13 = anonteam_252_11.x + anonteam_252_10.x + 13

		if anonteam_252_13 > 100 and anonteam_252_8 < anonteam_252_13 then
			anonteam_252_8 = anonteam_252_13
		end

		anonteam_252_9 = anonteam_252_9 + iter_252_1.alpha / 255
	end

	anonteam_0_58.keybinds_data.width = anonteam_0_23.new("keybinds_size", math.max(100, anonteam_252_8))
end)

events.render:set(function()
	anonteam_0_58.keybinds:update()
end)

anonteam_0_42.svg = "<svg width=\"110\" height=\"110\" viewBox=\"0 0 110 110\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M93.5381 70.75L60.6292 13.75C58.1273 9.41667 51.8727 9.41667 49.3708 13.75L16.4619 70.75C13.96 75.0833 17.0873 80.5 22.091 80.5H87.909C92.9127 80.5 96.04 75.0833 93.5381 70.75Z\" fill=\"white\" stroke=\"black\" stroke-width=\"2\"/></svg>"
anonteam_0_42.icon = render.load_image(anonteam_0_42.svg, vector(50, 50))

function anonteam_0_42.line(arg_254_0, arg_254_1, arg_254_2, arg_254_3, arg_254_4, arg_254_5)
	local anonteam_254_0 = color(99, 150, 0)
	local anonteam_254_1 = color(135, 0, 0):lerp(anonteam_254_0, arg_254_4)

	anonteam_254_1.a = arg_254_5

	render.rect(vector(arg_254_0, arg_254_1), vector(arg_254_0 + arg_254_2, arg_254_1 + arg_254_3), color(0, 0, 0, arg_254_5 / 3), 4)
	render.rect_outline(vector(arg_254_0, arg_254_1), vector(arg_254_0 + arg_254_2, arg_254_1 + arg_254_3), color(0, 0, 0, arg_254_5 / 4), 1, 4)
	render.rect(vector(arg_254_0, arg_254_1) + 1, vector(arg_254_0 + arg_254_2 * arg_254_4, arg_254_1 + arg_254_3) - 1, anonteam_254_1, 4)

	return anonteam_254_1
end

anonteam_0_42.BIG_FONT = render.load_font("verdana", 22, "ab")
anonteam_0_42.tahoma = render.load_font("tahoma", 11, "abd")
anonteam_0_42.on_draw = anonteam_0_18.create_draggable(math.floor(anonteam_0_15.screen.x / 2), 300, 0, 0, "slow_down", function(arg_255_0)
	local anonteam_255_0 = true

	if not anonteam_0_5.elements.widgets_enable:get() or not anonteam_0_11(anonteam_0_5.elements.widgets:get(), "Slow Down") then
		anonteam_255_0 = false
	end

	local anonteam_255_1 = anonteam_0_42.get_velocity()

	if anonteam_255_1 == 1 and not (ui.get_alpha() > 0) then
		anonteam_255_0 = false
	end

	local anonteam_255_2 = anonteam_0_23.new("slow_down_alpha", anonteam_255_0 and 255 or 0)

	if not anonteam_255_0 and anonteam_255_2 < 1 then
		return
	end

	local anonteam_255_3 = vector(arg_255_0.position_x, arg_255_0.position_y)

	arg_255_0.size_x = 150
	arg_255_0.size_y = 40

	local anonteam_255_4 = anonteam_0_42.line(anonteam_255_3.x + 50, anonteam_255_3.y + 21, 100, 15, anonteam_255_1, anonteam_255_2)

	render.text(anonteam_0_42.tahoma, vector(anonteam_255_3.x + 52, anonteam_255_3.y + 5), color(200, 200, 200, anonteam_255_2), nil, ("Slow Down %s%%"):format(math.floor(100 * anonteam_255_1)))

	local anonteam_255_5 = anonteam_0_14() * anonteam_255_2

	anonteam_255_4.a = anonteam_255_5

	if anonteam_0_42.icon ~= nil then
		render.texture(anonteam_0_42.icon, vector(anonteam_255_3.x, anonteam_255_3.y), nil, anonteam_255_4)
		render.text(anonteam_0_42.BIG_FONT, vector(anonteam_255_3.x + 25, anonteam_255_3.y + 23), color(0, 0, 0, anonteam_255_5), "c", "!")
	end
end)

events.render:set(function()
	anonteam_0_42.on_draw:update()
end)

local anonteam_0_60 = {}

anonteam_0_5.new("hitmarker", anonteam_0_31.visual_other:switch("Hitmarker"))

anonteam_0_60.tab = anonteam_0_5.elements.hitmarker:create()

anonteam_0_5.new("hitmarker_color", anonteam_0_60.tab:color_picker("Color", color()))
anonteam_0_5.new("hitmarker_style", anonteam_0_60.tab:selectable("Style ", {
	"Plus",
	"Damage"
}))
anonteam_0_5.new("hitmarker_font", anonteam_0_60.tab:combo("Font", {
	"Default",
	"Bold",
	"Pixel"
}), function()
	return anonteam_0_11(anonteam_0_5.elements.hitmarker_style:get(), "Damage")
end)

anonteam_0_60.mt = {
	move_y = 0,
	alpha = 0,
	realtime = globals.realtime,
	hitpos = vector(),
	CustomRender = function(arg_258_0, arg_258_1)
		local anonteam_258_0 = color(255, 255, 255, arg_258_0.alpha)

		render.text(anonteam_0_40.verdana_b, vector(hitpos.x, hitpos.y), anonteam_258_0, "c", arg_258_1)
	end
}
anonteam_0_60.data = {}

function render.cross(arg_259_0, arg_259_1, arg_259_2, arg_259_3, arg_259_4)
	render.line(vector(arg_259_0 - arg_259_3, arg_259_1 - arg_259_3), vector(arg_259_0 - arg_259_3 - arg_259_2, arg_259_1 - arg_259_3 - arg_259_2), arg_259_4)
	render.line(vector(arg_259_0 + arg_259_3, arg_259_1 - arg_259_3), vector(arg_259_0 + arg_259_3 + arg_259_2, arg_259_1 - arg_259_3 - arg_259_2), arg_259_4)
	render.line(vector(arg_259_0 + arg_259_3, arg_259_1 + arg_259_3), vector(arg_259_0 + arg_259_3 + arg_259_2, arg_259_1 + arg_259_3 + arg_259_2), arg_259_4)
	render.line(vector(arg_259_0 - arg_259_3, arg_259_1 + arg_259_3), vector(arg_259_0 - arg_259_3 - arg_259_2, arg_259_1 + arg_259_3 + arg_259_2), arg_259_4)
end

function anonteam_0_60.on_hurt(arg_260_0)
	if not anonteam_0_5.elements.hitmarker:get() then
		return
	end

	local anonteam_260_0 = entity.get_local_player()

	if not anonteam_260_0 then
		return
	end

	local anonteam_260_1 = entity.get(arg_260_0.userid, true)

	if anonteam_260_0 ~= entity.get(arg_260_0.attacker, true) or anonteam_260_0 == anonteam_260_1 then
		return
	end

	local anonteam_260_2 = anonteam_0_5.elements.hitmarker_font:get()
	local anonteam_260_3 = anonteam_260_2 == "Bold" and anonteam_0_40.verdana_b or anonteam_260_2 == "Pixel" and 2 or 1
	local anonteam_260_4 = arg_260_0.dmg_health
	local anonteam_260_5 = arg_260_0.hitgroup
	local anonteam_260_6 = anonteam_260_1:get_hitbox_position(anonteam_260_5)

	anonteam_0_10(anonteam_0_60.data, {
		realtime = globals.realtime,
		hitpos = anonteam_260_6,
		CustomRender = function(arg_261_0)
			local anonteam_261_0 = anonteam_0_5.elements.hitmarker_color:get()

			anonteam_261_0.a = arg_261_0.alpha

			local anonteam_261_1 = render.world_to_screen(arg_261_0.hitpos)

			if not anonteam_261_1 then
				return
			end

			local anonteam_261_2 = anonteam_261_1.x
			local anonteam_261_3 = anonteam_261_1.y
			local anonteam_261_4 = anonteam_0_5.elements.hitmarker_style:get()

			if anonteam_0_11(anonteam_261_4, "Plus") then
				local anonteam_261_5 = arg_261_0.alpha / 255

				render.rect(vector(anonteam_261_2 - 5 * anonteam_261_5, anonteam_261_3), vector(anonteam_261_2 + 5 * anonteam_261_5, anonteam_261_3 + 1), anonteam_261_0)
				render.rect(vector(anonteam_261_2, anonteam_261_3 - 5 * anonteam_261_5), vector(anonteam_261_2 + 1, anonteam_261_3 + 5 * anonteam_261_5), anonteam_261_0)
			end

			if anonteam_0_11(anonteam_261_4, "Damage") then
				render.text(anonteam_260_3, vector(anonteam_261_2, anonteam_261_3 - arg_261_0.move_y), anonteam_261_0, "c", tostring(anonteam_260_4))
			end
		end
	}, anonteam_0_60.mt)
end

events.player_hurt:set(anonteam_0_60.on_hurt)

function anonteam_0_60.on_draw()
	if not anonteam_0_5.elements.hitmarker:get() then
		return
	end

	for iter_262_0, iter_262_1 in ipairs(anonteam_0_60.data) do
		local anonteam_262_0 = iter_262_1.realtime + 1.5 > globals.realtime

		iter_262_1.alpha = anonteam_0_23.lerp(iter_262_1.alpha, anonteam_262_0 and 255 or 0)

		iter_262_1:CustomRender()

		iter_262_1.move_y = anonteam_0_23.lerp(iter_262_1.move_y, 100, 0.0025)

		if not anonteam_262_0 and iter_262_1.alpha < 1 then
			table.remove(anonteam_0_60.data, iter_262_0)
		end
	end
end

events.render:set(anonteam_0_60.on_draw)

local anonteam_0_61 = {
	data = {}
}

anonteam_0_5.new("info_panel_enable", anonteam_0_31.visual_other:switch("Info Panel"))

anonteam_0_61.tab = anonteam_0_5.elements.info_panel_enable:create()

anonteam_0_5.new("info_panel_list", anonteam_0_61.tab:selectable("Features", {
	"Username",
	"Hit/Miss",
	"Country",
	"Version",
	"State",
	"Desync"
}))
anonteam_0_5.new("info_panel_font", anonteam_0_61.tab:combo("Font", {
	"Default",
	"Bold"
}), function()
	return #anonteam_0_5.elements.info_panel_list:get() > 0
end)

anonteam_0_61.mt = {
	alpha = 0,
	add_y = 12,
	GetBool = function()
		return true
	end,
	CustomRender = function(arg_265_0, arg_265_1, arg_265_2)
		return
	end
}
anonteam_0_61.country_data = {}
anonteam_0_61.change_country_name = {
	["Russian Federation"] = "Russia"
}

function anonteam_0_61.update_country_data()
	-- local anonteam_266_0 = "https://api.myip.com"

	-- network.get(anonteam_266_0, {}, function(arg_267_0)
	-- 	if arg_267_0 == nil then
	-- 		return
	-- 	end

	-- 	local anonteam_267_0 = json.parse(arg_267_0)
	-- 	local anonteam_267_1 = anonteam_0_61.change_country_name[anonteam_267_0.country]

	-- 	anonteam_0_61.country_data.name = anonteam_267_1 and anonteam_267_1 or anonteam_267_0.country

	-- 	local anonteam_267_2 = ("https://www.countryflagicons.com/FLAT/64/%s.png"):format(anonteam_267_0.cc)

	-- 	network.get(anonteam_267_2, {}, function(arg_268_0)
	-- 		local anonteam_268_0, anonteam_268_1 = pcall(render.load_image, arg_268_0, vector(10, 10))

	-- 		if anonteam_268_0 and anonteam_268_1 ~= nil then
	-- 			anonteam_0_61.country_data.flag = anonteam_268_1
	-- 		end
	-- 	end)
	-- end)
end

anonteam_0_61.update_country_data()

function anonteam_0_61.get_pos_by_screen(arg_269_0, arg_269_1)
	local anonteam_269_0 = 150

	if arg_269_0 < anonteam_0_15.screen.x / 3 then
		return 0
	end

	if arg_269_0 > anonteam_0_15.screen.x / 1.5 then
		return anonteam_269_0 - arg_269_1
	end

	return anonteam_269_0 / 2 - arg_269_1 / 2
end

anonteam_0_10(anonteam_0_61.data, {
	GetBool = function(arg_270_0)
		return anonteam_0_11(anonteam_0_5.elements.info_panel_list:get(), "Username")
	end,
	CustomRender = function(arg_271_0, arg_271_1, arg_271_2, arg_271_3)
		local anonteam_271_0 = "aarneclub - " .. anonteam_0_15.user
		local anonteam_271_1 = render.measure_text(arg_271_3, "d", anonteam_271_0)
		local anonteam_271_2 = color(255, 255, 255, arg_271_0.alpha)
		local anonteam_271_3 = anonteam_0_61.get_pos_by_screen(arg_271_1, anonteam_271_1.x)
		local anonteam_271_4 = anonteam_0_23.new("info_aarne", anonteam_271_3)

		render.text(arg_271_3, vector(arg_271_1 + anonteam_271_4, arg_271_2), anonteam_271_2, "d", anonteam_271_0)
	end
}, anonteam_0_61.mt)
anonteam_0_10(anonteam_0_61.data, {
	GetBool = function(arg_272_0)
		return anonteam_0_11(anonteam_0_5.elements.info_panel_list:get(), "Hit/Miss")
	end,
	CustomRender = function(arg_273_0, arg_273_1, arg_273_2, arg_273_3)
		local anonteam_273_0 = anonteam_0_35.shots_data.hit + anonteam_0_35.shots_data.miss
		local anonteam_273_1 = anonteam_0_35.shots_data.hit / anonteam_273_0
		local anonteam_273_2 = 0

		if anonteam_273_1 > 0 then
			anonteam_273_2 = math.floor(anonteam_273_1 * 100)
		end

		local anonteam_273_3 = ("hit/miss: %s/%s(%s%%)"):format(anonteam_0_35.shots_data.hit, anonteam_0_35.shots_data.miss, anonteam_273_2)
		local anonteam_273_4 = render.measure_text(arg_273_3, "d", anonteam_273_3)
		local anonteam_273_5 = color(255, 255, 255, arg_273_0.alpha)
		local anonteam_273_6 = anonteam_0_61.get_pos_by_screen(arg_273_1, anonteam_273_4.x)
		local anonteam_273_7 = anonteam_0_23.new("info_hitrate", anonteam_273_6)

		render.text(arg_273_3, vector(arg_273_1 + anonteam_273_7, arg_273_2), anonteam_273_5, "d", anonteam_273_3)
	end
}, anonteam_0_61.mt)
anonteam_0_10(anonteam_0_61.data, {
	GetBool = function(arg_274_0)
		return anonteam_0_11(anonteam_0_5.elements.info_panel_list:get(), "Country")
	end,
	CustomRender = function(arg_275_0, arg_275_1, arg_275_2, arg_275_3)
		local anonteam_275_0 = "country: " .. (anonteam_0_61.country_data.name ~= nil and anonteam_0_61.country_data.name or "loading...")
		local anonteam_275_1 = render.measure_text(arg_275_3, "d", anonteam_275_0)
		local anonteam_275_2 = color(255, 255, 255, arg_275_0.alpha)
		local anonteam_275_3 = anonteam_0_61.get_pos_by_screen(arg_275_1, anonteam_275_1.x + 15)
		local anonteam_275_4 = anonteam_0_23.new("info_country", anonteam_275_3)

		render.text(arg_275_3, vector(arg_275_1 + anonteam_275_4, arg_275_2), anonteam_275_2, "d", anonteam_275_0)

		if anonteam_0_61.country_data.flag then
			render.texture(anonteam_0_61.country_data.flag, vector(arg_275_1 + anonteam_275_1.x + anonteam_275_4 + 2, arg_275_2 + 2), nil, anonteam_275_2)
		end
	end
}, anonteam_0_61.mt)
anonteam_0_10(anonteam_0_61.data, {
	GetBool = function(arg_276_0)
		return anonteam_0_11(anonteam_0_5.elements.info_panel_list:get(), "Version")
	end,
	CustomRender = function(arg_277_0, arg_277_1, arg_277_2, arg_277_3)
		local anonteam_277_0 = "version: " .. anonteam_0_1
		local anonteam_277_1 = render.measure_text(arg_277_3, "d", anonteam_277_0)
		local anonteam_277_2 = color(255, 255, 255, arg_277_0.alpha)
		local anonteam_277_3 = anonteam_0_61.get_pos_by_screen(arg_277_1, anonteam_277_1.x)
		local anonteam_277_4 = anonteam_0_23.new("info_version", anonteam_277_3)

		render.text(arg_277_3, vector(arg_277_1 + anonteam_277_4, arg_277_2), anonteam_277_2, "d", "version: ")

		local anonteam_277_5 = color(255, 255, 255, arg_277_0.alpha * anonteam_0_14())
		local anonteam_277_6 = render.measure_text(arg_277_3, "d", "version: ")

		render.text(arg_277_3, vector(arg_277_1 + anonteam_277_4 + anonteam_277_6.x, arg_277_2), anonteam_277_5, "d", anonteam_0_1)
	end
}, anonteam_0_61.mt)
anonteam_0_10(anonteam_0_61.data, {
	GetBool = function(arg_278_0)
		return anonteam_0_11(anonteam_0_5.elements.info_panel_list:get(), "State")
	end,
	CustomRender = function(arg_279_0, arg_279_1, arg_279_2, arg_279_3)
		local anonteam_279_0 = anonteam_0_2.get_player_state()
		local anonteam_279_1 = "state: " .. (anonteam_279_0 and anonteam_279_0.indicator_name:lower() or "none")
		local anonteam_279_2 = render.measure_text(arg_279_3, "d", anonteam_279_1)
		local anonteam_279_3 = color(255, 255, 255, arg_279_0.alpha)
		local anonteam_279_4 = anonteam_0_61.get_pos_by_screen(arg_279_1, anonteam_279_2.x)
		local anonteam_279_5 = anonteam_0_23.new("info_state", anonteam_279_4)

		render.text(arg_279_3, vector(arg_279_1 + anonteam_279_5, arg_279_2), anonteam_279_3, "d", anonteam_279_1)
	end
}, anonteam_0_61.mt)
anonteam_0_10(anonteam_0_61.data, {
	GetBool = function(arg_280_0)
		return anonteam_0_11(anonteam_0_5.elements.info_panel_list:get(), "Desync")
	end,
	CustomRender = function(arg_281_0, arg_281_1, arg_281_2, arg_281_3)
		local anonteam_281_0 = "desync: "
		local anonteam_281_1 = render.measure_text(arg_281_3, "d", anonteam_281_0 .. "00\xC2\xB0")
		local anonteam_281_2 = color(255, 255, 255, arg_281_0.alpha)
		local anonteam_281_3 = anonteam_0_61.get_pos_by_screen(arg_281_1, anonteam_281_1.x)
		local anonteam_281_4 = anonteam_0_23.new("info_desync", anonteam_281_3)

		render.text(arg_281_3, vector(arg_281_1 + anonteam_281_4, arg_281_2), anonteam_281_2, "d", anonteam_281_0 .. tostring(math.abs(math.floor(anonteam_0_2.get_desync_delta()))) .. "\xC2\xB0")
	end
}, anonteam_0_61.mt)

function anonteam_0_61.get_active()
	local anonteam_282_0 = {}

	for iter_282_0, iter_282_1 in ipairs(anonteam_0_61.data) do
		iter_282_1.alpha = anonteam_0_23.lerp(iter_282_1.alpha, iter_282_1:GetBool() and 255 or 0)

		if iter_282_1:GetBool() and iter_282_1.alpha > 0 then
			table.insert(anonteam_282_0, iter_282_1)
		end
	end

	return anonteam_282_0
end

anonteam_0_61.on_draw = anonteam_0_18.create_draggable(10, math.floor(anonteam_0_15.screen.y / 2), 0, 0, "info_panel", function(arg_283_0)
	local anonteam_283_0 = false
	local anonteam_283_1 = entity.get_local_player()
	local anonteam_283_2 = ui.get_alpha() > 0
	local anonteam_283_3 = anonteam_0_5.elements.info_panel_enable:get() and (anonteam_283_1 and anonteam_283_1:is_alive() or anonteam_283_2)
	local anonteam_283_4 = anonteam_0_23.new("info_panel_alpha", anonteam_283_3 and 255 or 0)

	if anonteam_283_3 == false and anonteam_283_4 < 1 then
		return
	end

	local anonteam_283_5 = anonteam_0_61.get_active()
	local anonteam_283_6 = vector(arg_283_0.position_x, arg_283_0.position_y)
	local anonteam_283_7 = 0

	arg_283_0.size_x = 150
	arg_283_0.size_y = anonteam_0_23.new("info_panel_size_y", 13 * #anonteam_283_5)

	if #anonteam_283_5 > 0 and anonteam_283_2 and anonteam_283_3 then
		render.rect_outline(vector(anonteam_283_6.x, anonteam_283_6.y) - 5, vector(anonteam_283_6.x + arg_283_0.size_x, anonteam_283_6.y + arg_283_0.size_y) + 5, color(255, 255, 255, anonteam_283_4 / 2), 1, 5)
	end

	local anonteam_283_8 = anonteam_0_5.elements.info_panel_font:get() == "Bold" and anonteam_0_40.verdana_b or 1

	for iter_283_0, iter_283_1 in ipairs(anonteam_283_5) do
		iter_283_1.alpha = iter_283_1.alpha * (anonteam_283_4 / 255)

		local anonteam_283_9 = anonteam_283_6.y + anonteam_283_7 * iter_283_1.add_y

		iter_283_1:CustomRender(anonteam_283_6.x, anonteam_283_9, anonteam_283_8)

		anonteam_283_7 = anonteam_283_7 + iter_283_1.alpha / 255
	end
end)

events.render:set(function()
	anonteam_0_61.on_draw:update()
end)
events.player_connect_full:set(function(arg_285_0)
	local anonteam_285_0 = entity.get_local_player()

	if entity.get(arg_285_0.userid, true) ~= anonteam_285_0 then
		return
	end

	anonteam_0_35.shots_data = {
		hit = 0,
		miss = 0
	}
end)

local anonteam_0_62 = {}

anonteam_0_5.new("grenade_rad_enable", anonteam_0_31.visual_other:switch("Grenade Radius"))

anonteam_0_62.tab = anonteam_0_5.elements.grenade_rad_enable:create()

anonteam_0_5.new("grenades", anonteam_0_62.tab:selectable("Grenades", {
	"Smoke",
	"Molotov"
}))

function anonteam_0_62.is_grenade(arg_286_0)
	return anonteam_0_11(anonteam_0_5.elements.grenades:get(), arg_286_0)
end

anonteam_0_5.new("molotov_enemy_color", anonteam_0_62.tab:color_picker("Enemy Molotov", color(255, 50, 50)), function()
	return anonteam_0_62.is_grenade("Molotov")
end)
anonteam_0_5.new("molotov_color", anonteam_0_62.tab:color_picker("Safe Molotov"), function()
	return anonteam_0_62.is_grenade("Molotov")
end)
anonteam_0_5.new("smoke_color", anonteam_0_62.tab:color_picker("Smoke"), function()
	return anonteam_0_62.is_grenade("Smoke")
end)

function anonteam_0_62.on_render()
	if not anonteam_0_5.elements.grenade_rad_enable:get() then
		return
	end

	local anonteam_290_0 = entity.get_local_player()

	if not anonteam_290_0 then
		return
	end

	local anonteam_290_1 = 130

	if anonteam_0_62.is_grenade("Smoke") then
		entity.get_entities("CSmokeGrenadeProjectile", false, function(arg_291_0)
			local anonteam_291_0 = anonteam_290_0:get_origin():dist2d(arg_291_0:get_origin())
			local anonteam_291_1 = arg_291_0.m_bDidSmokeEffect and anonteam_291_0 < anonteam_290_1
			local anonteam_291_2 = anonteam_0_23.new("smoke_alpha" .. arg_291_0:get_index(), anonteam_291_1 and 1 or 0)
			local anonteam_291_3 = anonteam_0_23.new("smoke_rad" .. arg_291_0:get_index(), arg_291_0.m_bDidSmokeEffect and 125 or 0)
			local anonteam_291_4 = anonteam_0_5.elements.smoke_color:get()

			anonteam_291_4.a = anonteam_291_4.a * anonteam_291_2

			if arg_291_0.m_bDidSmokeEffect then
				render.circle_3d_outline(arg_291_0:get_origin(), anonteam_291_4, anonteam_291_3, 0, 1, 1)
			end
		end)
	end

	if anonteam_0_62.is_grenade("Molotov") then
		entity.get_entities("CInferno", false, function(arg_292_0)
			local anonteam_292_0 = anonteam_290_0:get_origin():dist2d(arg_292_0:get_origin())
			local anonteam_292_1 = arg_292_0.m_bFireIsBurning and anonteam_292_0 < anonteam_290_1
			local anonteam_292_2 = anonteam_0_23.new("moly_alpha" .. arg_292_0:get_index(), anonteam_292_1 and 1 or 0)
			local anonteam_292_3 = arg_292_0.m_hOwnerEntity
			local anonteam_292_4 = anonteam_292_3 ~= nil and tonumber(cvar.mp_friendlyfire:int()) == 0 and anonteam_292_3 ~= anonteam_290_0 and not anonteam_292_3:is_enemy() and anonteam_0_5.elements.molotov_color:get() or anonteam_0_5.elements.molotov_enemy_color:get()

			anonteam_292_4.a = anonteam_292_4.a * anonteam_292_2

			local anonteam_292_5 = 40
			local anonteam_292_6 = 0
			local anonteam_292_7 = {}
			local anonteam_292_8 = 0
			
			

			for iter_292_0 = 1, 64 do
				if arg_292_0.m_bFireIsBurning[iter_292_0] then
					table.insert(anonteam_292_7, vector(arg_292_0.m_fireXDelta[iter_292_0], arg_292_0.m_fireYDelta[iter_292_0], arg_292_0.m_fireZDelta[iter_292_0]))
				end
			end

			for iter_292_1 = 1, #anonteam_292_7 do
				for iter_292_2 = 1, #anonteam_292_7 do
					local anonteam_292_11 = anonteam_292_7[iter_292_1]:dist2d(anonteam_292_7[iter_292_2])

					if anonteam_292_8 < anonteam_292_11 then
						anonteam_292_8 = anonteam_292_11
						anonteam_292_9 = anonteam_292_7[iter_292_1]
						anonteam_292_10 = anonteam_292_7[iter_292_2]
					end
				end
			end

			if anonteam_292_9 ~= nil and anonteam_292_10 ~= nil then
				local anonteam_292_12 = anonteam_292_9:lerp(anonteam_292_10, 0.5)
				local anonteam_292_13 = arg_292_0:get_origin() + anonteam_292_12
				local anonteam_292_14 = anonteam_0_23.new("moly_rad" .. arg_292_0:get_index(), anonteam_292_8 / 2 + anonteam_292_5)

				if arg_292_0.m_bFireIsBurning then
					render.circle_3d_outline(anonteam_292_13, anonteam_292_4, anonteam_292_14, 0, 1, 1)
				end
			end
		end)
	end
end

events.render:set(anonteam_0_62.on_render)

local anonteam_0_63 = {}

anonteam_0_5.new("console_enable", anonteam_0_31.visual_other:switch("Custom Console"))

anonteam_0_63.tab = anonteam_0_5.elements.console_enable:create()

anonteam_0_5.new("console_color", anonteam_0_63.tab:color_picker("Color"))

anonteam_0_63.engine_client = ffi.cast(ffi.typeof("void***"), utils.create_interface("engine.dll", "VEngineClient014"))
anonteam_0_63.is_visible = anonteam_0_4.this_call(ffi.cast(ffi.typeof("bool(__thiscall*)(void*)"), anonteam_0_63.engine_client[0][11]), anonteam_0_63.engine_client)
anonteam_0_63.material_names = {
	"vgui_white",
	"vgui/hud/800corner1",
	"vgui/hud/800corner2",
	"vgui/hud/800corner3",
	"vgui/hud/800corner4"
}
anonteam_0_63.materials = {}

function anonteam_0_63.update_materials()
	anonteam_0_63.materials = {}

	for iter_293_0, iter_293_1 in ipairs(anonteam_0_63.material_names) do
		local anonteam_293_0 = materials.get(iter_293_1)

		if anonteam_293_0 == nil then
			anonteam_293_0 = materials.get_materials(iter_293_1)[1]
		end

		if anonteam_293_0 ~= nil and anonteam_293_0:is_valid() then
			anonteam_0_63.materials[iter_293_1] = anonteam_293_0
		end
	end
end

anonteam_0_63.update_materials()

anonteam_0_63.last_color = nil

function anonteam_0_63.setup_color(arg_294_0)
	if not anonteam_0_63.is_visible() then
		arg_294_0 = color()
	end

	if anonteam_0_63.last_color == arg_294_0 then
		return
	end

	for iter_294_0, iter_294_1 in pairs(anonteam_0_63.materials) do
		iter_294_1:alpha_modulate(arg_294_0.a / 255)
		iter_294_1:color_modulate(color(arg_294_0.r, arg_294_0.g, arg_294_0.b))
	end

	anonteam_0_63.last_color = arg_294_0
end

function anonteam_0_63.on_render()
	if not anonteam_0_5.elements.console_enable:get() then
		return
	end

	local anonteam_295_0 = anonteam_0_5.elements.console_color:get()

	anonteam_0_63.setup_color(anonteam_295_0)
end

function anonteam_0_63.on_unload()
	anonteam_0_63.setup_color(color())
end

events.render:set(anonteam_0_63.on_render)
events.shutdown:set(anonteam_0_63.on_unload)
anonteam_0_5.elements.console_enable:set_callback(anonteam_0_63.on_unload)
events.mouse_input:set(function()
	return ui.get_alpha() < 1
end)
ui.sidebar("aarneclub" .. (anonteam_0_0 and " beta" or ""))

local anonteam_0_64 = anonteam_0_3.build_log("{logo} {prefix} Welcome back, {name}!", color(), {
	name = anonteam_0_15.user,
	version = anonteam_0_1
})

print_raw(anonteam_0_64:get_text())
