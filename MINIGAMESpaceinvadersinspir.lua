local anonteam_0_0
local anonteam_0_1 = 0
local anonteam_0_2 = 0
local anonteam_0_3 = render.screen_size()
local anonteam_0_4 = anonteam_0_3.x / 2 - 500
local anonteam_0_5 = anonteam_0_3.y / 2 - 500
local anonteam_0_6 = 750
local anonteam_0_7 = 750
local anonteam_0_8 = false
local anonteam_0_9 = 1
local anonteam_0_10 = 100
local anonteam_0_11 = 100
local anonteam_0_12 = 1
local anonteam_0_13 = common.get_unixtime()
local anonteam_0_14 = common.get_unixtime()

local function anonteam_0_15()
	anonteam_0_8 = false
end

local anonteam_0_16 = 0.3
local anonteam_0_17 = 1
local anonteam_0_18 = 1
local anonteam_0_19 = false
local anonteam_0_20 = false
local anonteam_0_21 = 0
local anonteam_0_22 = 0
local anonteam_0_23 = render.load_image_from_file("enemyhead.png")
local anonteam_0_24 = render.load_image_from_file("localhead.png")
local anonteam_0_25 = render.load_image_from_file("projectile.png")
local anonteam_0_26 = db.spaceinvadersdb
local anonteam_0_27 = anonteam_0_26 and anonteam_0_26.x or 5
local anonteam_0_28 = anonteam_0_26 and anonteam_0_26.y or 5
local anonteam_0_29 = anonteam_0_26 and anonteam_0_26.highscore or 0

local function anonteam_0_30(arg_2_0, arg_2_1, arg_2_2, arg_2_3)
	local anonteam_2_0 = ui.get_mouse_position()

	return arg_2_0 <= anonteam_2_0.x and anonteam_2_0.x < arg_2_0 + arg_2_2 and arg_2_1 <= anonteam_2_0.y and anonteam_2_0.y < arg_2_1 + arg_2_3
end

local function anonteam_0_31()
	local anonteam_3_0 = ui.get_mouse_position()

	if anonteam_0_19 then
		anonteam_0_4 = anonteam_3_0.x - anonteam_0_21
		anonteam_0_5 = anonteam_3_0.y - anonteam_0_22

		return
	end

	if anonteam_0_30(anonteam_0_4, anonteam_0_5, anonteam_0_6, anonteam_0_7) then
		anonteam_0_19 = true
		anonteam_0_21 = anonteam_3_0.x - anonteam_0_4
		anonteam_0_22 = anonteam_3_0.y - anonteam_0_5

		return
	end
end

local anonteam_0_32 = {}
local anonteam_0_33 = {}

anonteam_0_33.__index = anonteam_0_33

function anonteam_0_33.new(arg_4_0, arg_4_1)
	local anonteam_4_0 = setmetatable({
		time = arg_4_0,
		func = arg_4_1
	}, anonteam_0_33)

	anonteam_4_0.valid = true
	anonteam_4_0.createTime = common.get_unixtime()
	anonteam_4_0.cur_time = common.get_unixtime()

	table.insert(anonteam_0_32, anonteam_4_0)
end

function anonteam_0_33.Update(arg_5_0)
	if arg_5_0.valid then
		arg_5_0.cur_time = common.get_unixtime()

		if (arg_5_0.cur_time - arg_5_0.createTime) % 60 >= arg_5_0.time then
			arg_5_0.valid = false

			arg_5_0.func()
		end
	end
end

local anonteam_0_34 = {}
local anonteam_0_35 = {}

anonteam_0_35.__index = anonteam_0_35

function anonteam_0_35.new(arg_6_0, arg_6_1, arg_6_2)
	local anonteam_6_0 = setmetatable({
		x = arg_6_0,
		y = arg_6_1,
		vel = arg_6_2,
		Update = function(arg_7_0)
			arg_7_0.y = arg_7_0.y + arg_7_0.vel
		end
	}, anonteam_0_35)

	table.insert(anonteam_0_34, anonteam_6_0)
end

local anonteam_0_36 = {}
local anonteam_0_37 = {}
local anonteam_0_38 = {}

anonteam_0_38.__index = anonteam_0_38

local anonteam_0_39 = {
	Black = 5,
	Orange = 4,
	Red = 3,
	Green = 2,
	Blue = 1
}
local anonteam_0_40 = {
	"Blue",
	"Green",
	"Red",
	"Orange",
	"Black"
}

function anonteam_0_38.new(arg_8_0, arg_8_1, arg_8_2)
	local anonteam_8_0 = setmetatable({
		width = 50,
		Gravity = 0,
		Alpha = 255,
		x = arg_8_1,
		y = arg_8_2,
		color = arg_8_0,
		maxhp = anonteam_0_39[arg_8_0],
		hp = anonteam_0_39[arg_8_0],
		handleMovement = function(arg_9_0)
			arg_9_0.y = arg_9_0.y + anonteam_0_9
		end,
		handleAlpha = function(arg_10_0)
			arg_10_0.Alpha = arg_10_0.Alpha - 3
		end
	}, anonteam_0_38)

	table.insert(anonteam_0_36, anonteam_8_0)
end

local anonteam_0_41 = {}

anonteam_0_41.__index = anonteam_0_41

function anonteam_0_41.new(arg_11_0, arg_11_1)
	anonteam_0_0 = setmetatable({
		x = arg_11_0,
		y = arg_11_1,
		Fire = function(arg_12_0)
			anonteam_0_35.new(arg_12_0.x, arg_12_0.y - 25, -5)
		end
	}, anonteam_0_41)
end

local function anonteam_0_42()
	local anonteam_13_0 = math.random(anonteam_0_4 + 50, anonteam_0_4 + anonteam_0_6 - 50)
	local anonteam_13_1 = anonteam_0_5 + 50
	local anonteam_13_2 = anonteam_0_38.new(anonteam_0_40[math.random(1, #anonteam_0_40)], anonteam_13_0, anonteam_13_1)

	for iter_13_0 = 1, math.floor(anonteam_0_1 / 100) do
		if math.random(1, 100) % 2 == 0 then
			local anonteam_13_3 = anonteam_0_38.new(anonteam_0_40[math.random(1, #anonteam_0_40)], math.random(anonteam_0_4 + 50, anonteam_0_4 + anonteam_0_6 - 50), anonteam_0_5 + 50)

			table.insert(anonteam_0_36, anonteam_13_3)
		end
	end

	table.insert(anonteam_0_36, anonteam_13_2)
	anonteam_0_33.new(math.random(0, 2), anonteam_0_42)
end

local function anonteam_0_43()
	anonteam_0_1 = 0
	anonteam_0_2 = 0
	anonteam_0_36 = {}
	anonteam_0_34 = {}
	anonteam_0_32 = {}
	anonteam_0_37 = {}
	anonteam_0_9 = 1
	anonteam_0_20 = false
	anonteam_0_10 = 100
	anonteam_0_13 = common.get_unixtime()
	anonteam_0_14 = common.get_unixtime()

	anonteam_0_41.new(anonteam_0_4 + anonteam_0_6 / 2 - 25, anonteam_0_5 + anonteam_0_6 - 75)
	anonteam_0_42()
end

local function anonteam_0_44()
	for iter_15_0, iter_15_1 in ipairs(anonteam_0_36) do
		for iter_15_2, iter_15_3 in ipairs(anonteam_0_34) do
			if iter_15_3.y <= iter_15_1.y + iter_15_1.width and iter_15_3.x > iter_15_1.x and iter_15_3.x < iter_15_1.x + iter_15_1.width then
				table.remove(anonteam_0_34, iter_15_0)

				iter_15_1.hp = iter_15_1.hp - anonteam_0_12

				if iter_15_1.hp <= 0 then
					table.remove(anonteam_0_36, iter_15_0)

					anonteam_0_1 = anonteam_0_1 + iter_15_1.maxhp * anonteam_0_18
				end
			end
		end
	end
end

local anonteam_0_45 = false
local anonteam_0_46 = 0
local anonteam_0_47 = 0

local function anonteam_0_48()
	local anonteam_16_0 = ui.get_mouse_position()

	if anonteam_0_45 then
		anonteam_0_27 = anonteam_16_0.x - anonteam_0_46
		anonteam_0_28 = anonteam_16_0.y - anonteam_0_47

		return
	end

	if anonteam_0_30(anonteam_0_27, anonteam_0_28, 125, 70) then
		anonteam_0_45 = true
		anonteam_0_46 = anonteam_16_0.x - anonteam_0_27
		anonteam_0_47 = anonteam_16_0.y - anonteam_0_28

		return
	end
end

local anonteam_0_49 = true

local function anonteam_0_50()
	anonteam_0_49 = true
end

local anonteam_0_51 = 100
local anonteam_0_52 = 1
local anonteam_0_53 = {
	interractable = true,
	visible = false,
	elements = {}
}
local anonteam_0_54 = {
	Damage = {
		val = 1,
		func = function(arg_18_0)
			anonteam_0_12 = 1 + arg_18_0 * 0.1
		end
	},
	["Fire Rate"] = {
		val = 1,
		func = function(arg_19_0)
			anonteam_0_16 = 0.3 - 0.025 * arg_19_0
		end
	},
	["Player speed"] = {
		val = 1,
		func = function(arg_20_0)
			anonteam_0_17 = 1 + arg_20_0 * 0.25
		end
	},
	Health = {
		val = 1,
		func = function(arg_21_0)
			anonteam_0_10 = 100 + 10 * arg_21_0
			anonteam_0_11 = 100 + 10 * arg_21_0
		end
	},
	["Money Multiplier"] = {
		val = 1,
		func = function(arg_22_0)
			anonteam_0_52 = 1 + arg_22_0 * 0.1
		end
	},
	["Score Multiplier"] = {
		val = 1,
		func = function(arg_23_0)
			anonteam_0_18 = 1 + arg_23_0 * 0.1
		end
	}
}
local anonteam_0_55 = {
	__index = anonteam_0_53
}

local function anonteam_0_56()
	anonteam_0_53.interractable = true
end

function anonteam_0_53.CreateElement(arg_25_0, arg_25_1, arg_25_2, arg_25_3)
	local anonteam_25_0 = setmetatable({
		h = 20,
		w = 125,
		x = anonteam_0_27 + 5,
		y = anonteam_0_28 + 105 + (#anonteam_0_53.elements - 1) * 25,
		idx = #anonteam_0_53.elements + 1,
		text = arg_25_0,
		cost = arg_25_1,
		basecost = arg_25_1,
		level = arg_25_3 or 1,
		maxlevel = arg_25_2,
		updateelement = function(arg_26_0)
			arg_26_0.cost = arg_26_0.basecost * (arg_26_0.level == "MAX" and arg_26_0.maxlevel or arg_26_0.level)

			anonteam_0_54[arg_26_0.text].func(arg_26_0.level == "MAX" and arg_26_0.maxlevel or arg_26_0.level)

			if arg_26_0.level == arg_26_0.maxlevel then
				arg_26_0.level = "MAX"
			end
		end,
		updatePos = function(arg_27_0)
			arg_27_0.x = anonteam_0_27 + 5
			arg_27_0.y = anonteam_0_28 + 105 + arg_27_0.idx * 25
		end,
		purchase = function(arg_28_0)
			if anonteam_0_51 >= arg_28_0.cost and (arg_28_0.level == "MAX" and arg_28_0.maxlevel or arg_28_0.level) < arg_28_0.maxlevel then
				anonteam_0_51 = anonteam_0_51 - arg_28_0.cost
				arg_28_0.level = arg_28_0.level + 1

				arg_28_0:updateelement()
			end
		end
	}, anonteam_0_55)

	anonteam_25_0:updateelement()
	anonteam_25_0:updatePos()
	table.insert(anonteam_0_53.elements, anonteam_25_0)
end

local anonteam_0_57 = db.spaceinvadersupgrades
local anonteam_0_58 = {
	["Player speed"] = {
		maxlevel = 5,
		basecost = 50,
		text = "Player speed"
	},
	Damage = {
		maxlevel = 10,
		basecost = 100,
		text = "Damage"
	},
	["Fire Rate"] = {
		maxlevel = 10,
		basecost = 125,
		text = "Fire Rate"
	},
	Health = {
		maxlevel = 10,
		basecost = 150,
		text = "Health"
	},
	["Money Multiplier"] = {
		maxlevel = 10,
		basecost = 200,
		text = "Money Multiplier"
	},
	["Score Multiplier"] = {
		maxlevel = 10,
		basecost = 200,
		text = "Score Multiplier"
	}
}

if anonteam_0_57 == nil then
	anonteam_0_53.CreateElement("Player speed", 50, 5)
	anonteam_0_53.CreateElement("Damage", 100, 10)
	anonteam_0_53.CreateElement("Fire Rate", 125, 5)
	anonteam_0_53.CreateElement("Health", 150, 10)
	anonteam_0_53.CreateElement("Money Multiplier", 200, 5)
else
	for iter_0_0, iter_0_1 in pairs(anonteam_0_58) do
		anonteam_0_53.CreateElement(iter_0_0, iter_0_1.basecost, iter_0_1.maxlevel, anonteam_0_57.elements[iter_0_0] ~= nil and anonteam_0_57.elements[iter_0_0].level or 1)
	end

	anonteam_0_51 = anonteam_0_57.money
end

events.shutdown:set(function()
	if anonteam_0_1 > anonteam_0_29 then
		anonteam_0_29 = anonteam_0_1
	end

	local anonteam_29_0 = {
		x = anonteam_0_27,
		y = anonteam_0_28,
		highscore = anonteam_0_29
	}

	db.spaceinvadersdb = anonteam_29_0

	local anonteam_29_1 = {
		elements = {},
		money = anonteam_0_51
	}

	for iter_29_0, iter_29_1 in pairs(anonteam_0_53.elements) do
		anonteam_29_1.elements[iter_29_1.text] = {
			level = iter_29_1.level,
			basecost = iter_29_1.basecost,
			maxlevel = iter_29_1.maxlevel
		}
	end

	db.spaceinvadersupgrades = anonteam_29_1
end)

local function anonteam_0_59()
	render.rect(vector(anonteam_0_27, anonteam_0_28 + 100), vector(anonteam_0_27 + 275, anonteam_0_28 + 100 + 175), color(0, 0, 0, 150))
	render.text(1, vector(anonteam_0_27 + 5, anonteam_0_28 + 105), color(255, 255, 255, 255), nil, string.format("Money: $%d", anonteam_0_51))

	for iter_30_0, iter_30_1 in pairs(anonteam_0_53.elements) do
		iter_30_1:updatePos()
		render.text(1, vector(iter_30_1.x, iter_30_1.y), color(255, 255, 255, 255), nil, string.format("%s | Level: %s | Cost: $%d", iter_30_1.text, iter_30_1.level, iter_30_1.cost))
		render.rect(vector(anonteam_0_27 + 270 - 20, iter_30_1.y), vector(anonteam_0_27 + 270 - 20 + 15, iter_30_1.y + 15), color(0, 0, 0, 200))
		render.text(1, vector(anonteam_0_27 + 270 - 17, iter_30_1.y + 1), color(255, 255, 255, 255), nil, "+")

		if anonteam_0_30(anonteam_0_27 + 270 - 20, iter_30_1.y, 15, 15) and common.is_button_down(1) and anonteam_0_53.interractable then
			iter_30_1:purchase()

			anonteam_0_53.interractable = false

			utils.execute_after(0.5, anonteam_0_56)
		end
	end
end

local anonteam_0_60 = 1

local function anonteam_0_61()
	local anonteam_31_0 = render.measure_text(1, nil, "Score: " .. anonteam_0_1)
	local anonteam_31_1 = render.measure_text(1, nil, "By Fr#7777")

	if anonteam_0_45 and not common.is_button_down(1) then
		anonteam_0_45 = false
		anonteam_0_46 = 0
		dragging_offset_y_scodragging_offset_x_scoreboard = 0
	end

	if common.is_button_down(1) then
		anonteam_0_48()
	end

	render.rect(vector(anonteam_0_27, anonteam_0_28), vector(anonteam_0_27 + 125, anonteam_0_28 + 95), color(0, 0, 0, 150))
	render.text(1, vector(anonteam_0_27 + 5 + anonteam_31_1.x / 2, anonteam_0_28 + 5), color(255, 255, 255, 255), nil, "By Fr#7777")

	local anonteam_31_2 = anonteam_0_30(anonteam_0_27 + 5, anonteam_0_28 + 50 + anonteam_31_0.y, 115, 25) and 130 or 180

	if anonteam_0_49 then
		if anonteam_0_30(anonteam_0_27 + 5, anonteam_0_28 + 50 + anonteam_31_0.y, 115, 25) and common.is_button_down(1) then
			anonteam_0_43()

			anonteam_0_49 = false

			utils.execute_after(0.2, anonteam_0_50)
		elseif anonteam_0_30(anonteam_0_27 + 5, anonteam_0_28 + 20 + anonteam_31_0.y, 115, 25) and common.is_button_down(1) then
			anonteam_0_53.visible = not anonteam_0_53.visible
			anonteam_0_49 = false

			utils.execute_after(0.2, anonteam_0_50)
		end
	end

	render.rect(vector(anonteam_0_27 + 5, anonteam_0_28 + 20 + anonteam_31_0.y), vector(anonteam_0_27 + 5 + 115, anonteam_0_28 + 20 + anonteam_31_0.y + 25), color(0, 0, 0, anonteam_31_2))

	local anonteam_31_3 = render.measure_text(1, nil, "Settings")

	render.text(1, vector(anonteam_0_27 + 5 + anonteam_31_3.x / 1.1, anonteam_0_28 + 20 + anonteam_31_0.y + anonteam_31_3.y / 2), color(255, 255, 255, 255), nil, "Settings")
	render.rect(vector(anonteam_0_27 + 5, anonteam_0_28 + 50 + anonteam_31_0.y), vector(anonteam_0_27 + 5 + 115, anonteam_0_28 + 50 + anonteam_31_0.y + 25), color(0, 0, 0, anonteam_31_2))

	local anonteam_31_4 = render.measure_text(1, nil, "Reset Game")

	render.text(1, vector(anonteam_0_27 + 5 + anonteam_31_4.x / 2, anonteam_0_28 + 50 + anonteam_31_0.y + anonteam_31_4.y / 2), color(255, 255, 255, 255), nil, "Reset Game")

	if anonteam_0_53.visible then
		anonteam_0_59()
	end

	if anonteam_0_0 == nil then
		return
	end

	if anonteam_0_2 == 0 then
		anonteam_0_14 = common.get_unixtime()
	else
		anonteam_0_14 = anonteam_0_14
	end

	local anonteam_31_5 = anonteam_0_14 - anonteam_0_13
	local anonteam_31_6
	local anonteam_31_7 = anonteam_31_5 % 60 < 10 and "0" or ""
	local anonteam_31_8 = string.format("%i:%s%i", math.floor(anonteam_31_5 / 60), anonteam_31_7, anonteam_31_5 % 60)

	render.rect(vector(anonteam_0_4, anonteam_0_5), vector(anonteam_0_4 + anonteam_0_6, anonteam_0_5 + anonteam_0_7), color(0, 0, 0, 150))

	local anonteam_31_9 = render.measure_text(1, nil, "Time: " .. anonteam_31_8)

	render.text(1, vector(anonteam_0_4 + anonteam_0_6 - anonteam_31_9.x - 5, anonteam_0_5 + 5), color(255, 255, 255, 255), nil, "Time: " .. anonteam_31_8)

	local anonteam_31_10 = render.measure_text(1, nil, string.format("Highscore: %s", anonteam_0_29))

	render.text(1, vector(anonteam_0_4 + 5, anonteam_0_5 + 5), color(255, 255, 255, 255), nil, string.format("Highscore: %s", anonteam_0_29))
	render.text(1, vector(anonteam_0_4 + 5, anonteam_0_5 + 5 + anonteam_31_10.y), color(255, 255, 255, 255), nil, string.format("Score: %s", anonteam_0_1))

	if anonteam_0_10 < 0 then
		anonteam_0_10 = 0
		anonteam_0_2 = 1
	end

	render.rect(vector(anonteam_0_4 + anonteam_0_6 - anonteam_0_11 - 5, anonteam_0_5 + 5 + anonteam_31_9.y), vector(anonteam_0_4 + anonteam_0_6 - anonteam_0_11 - 5 + anonteam_0_11, anonteam_0_5 + 5 + anonteam_31_9.y + 5), color(0, 0 or 0, 0, 180))
	render.rect(vector(anonteam_0_4 + anonteam_0_6 - anonteam_0_11 - 5, anonteam_0_5 + 5 + anonteam_31_9.y), vector(anonteam_0_4 + anonteam_0_6 - anonteam_0_11 - 5 + anonteam_0_10, anonteam_0_5 + 5 + anonteam_31_9.y + 5), color(anonteam_0_10 <= 25 and 255 or 0, anonteam_0_10 >= 25 and 255 or 0, 0, 255))

	if anonteam_0_2 == 1 then
		local anonteam_31_11 = "You lost u fucking retard LOLOL"
		local anonteam_31_12 = render.measure_text(1, nil, anonteam_31_11)

		render.text(1, vector(anonteam_0_4 + anonteam_0_6 / 2 - anonteam_31_12.x / 2, anonteam_0_5 + anonteam_0_6 / 2), color(255, 0, 0, 255), nil, anonteam_31_11)

		if anonteam_0_1 > anonteam_0_29 then
			anonteam_0_29 = anonteam_0_1
		end

		if not anonteam_0_20 then
			anonteam_0_51 = anonteam_0_51 + anonteam_0_1 / 5 * anonteam_0_52
			anonteam_0_20 = true
		end

		return
	end

	for iter_31_0, iter_31_1 in ipairs(anonteam_0_32) do
		if iter_31_1.valid then
			iter_31_1:Update()
		else
			table.remove(anonteam_0_32, iter_31_0)
		end
	end

	anonteam_0_44()

	for iter_31_2, iter_31_3 in ipairs(anonteam_0_36) do
		iter_31_3:handleMovement()

		if anonteam_0_23 == nil then
			return
		end

		render.texture(anonteam_0_23, vector(iter_31_3.x, iter_31_3.y), vector(iter_31_3.width, iter_31_3.width), color(255, 255, 255, iter_31_3.Alpha), "f")
		render.rect(vector(iter_31_3.x, iter_31_3.y + iter_31_3.width + 2), vector(iter_31_3.x + iter_31_3.width, iter_31_3.y + iter_31_3.width + 2 + 5), color(0, 0, 0, 180))
		render.rect(vector(iter_31_3.x, iter_31_3.y + iter_31_3.width + 2), vector(iter_31_3.x + iter_31_3.hp * 10, iter_31_3.y + iter_31_3.width + 2 + 5), color(0, 255, 0, iter_31_3.Alpha))

		if iter_31_3.y >= anonteam_0_5 + anonteam_0_7 - 50 then
			anonteam_0_10 = anonteam_0_10 - 10

			if anonteam_0_10 <= 0 then
				anonteam_0_2 = 1
			end

			table.insert(anonteam_0_37, iter_31_3)
			table.remove(anonteam_0_36, iter_31_2)
		end
	end

	for iter_31_4, iter_31_5 in ipairs(anonteam_0_37) do
		if iter_31_5.Alpha <= 0 then
			table.remove(anonteam_0_37, iter_31_4)
		end

		iter_31_5:handleAlpha()
		iter_31_5:handleMovement()
		render.texture(anonteam_0_23, vector(iter_31_5.x, iter_31_5.y), vector(iter_31_5.width, iter_31_5.width), color(255, 255, 255, iter_31_5.Alpha), "f")
	end

	for iter_31_6, iter_31_7 in ipairs(anonteam_0_34) do
		iter_31_7:Update()

		if iter_31_7.x < anonteam_0_4 or iter_31_7.x > anonteam_0_4 + anonteam_0_6 or iter_31_7.y < anonteam_0_5 or iter_31_7.y > anonteam_0_5 + anonteam_0_7 then
			table.remove(anonteam_0_34, iter_31_6)
		else
			render.texture(anonteam_0_25, vector(iter_31_7.x - 10, iter_31_7.y - 10), vector(20, 20), color(255, 255, 255, 255), "f")
		end
	end

	if not anonteam_0_8 and common.is_button_down(32) then
		anonteam_0_0:Fire()
		utils.execute_after(anonteam_0_16, anonteam_0_15)

		anonteam_0_8 = true
	end

	if common.is_button_down(65) then
		anonteam_0_0.x = anonteam_0_0.x - 2 * anonteam_0_17
	elseif common.is_button_down(68) then
		anonteam_0_0.x = anonteam_0_0.x + 2 * anonteam_0_17
	end

	if anonteam_0_0.x < anonteam_0_4 + 25 then
		anonteam_0_0.x = anonteam_0_4 + 25
	elseif anonteam_0_0.x > anonteam_0_4 + anonteam_0_6 - 25 then
		anonteam_0_0.x = anonteam_0_4 + anonteam_0_6 - 25
	end

	anonteam_0_0.y = anonteam_0_5 + anonteam_0_6 - 75

	if anonteam_0_1 >= anonteam_0_60 * 100 then
		anonteam_0_9 = anonteam_0_9 + 0.25
		anonteam_0_60 = anonteam_0_60 + 1

		if anonteam_0_10 < anonteam_0_11 then
			anonteam_0_10 = anonteam_0_10 + 10
		end
	end

	if anonteam_0_24 ~= nil then
		render.texture(anonteam_0_24, vector(anonteam_0_0.x - 25, anonteam_0_0.y), vector(50, 50), color(255, 255, 255, 255), "f")
	end
end

local anonteam_0_62 = ui.create("Spaceinvaders"):button("Reset game", function()
	anonteam_0_43()
end)

anonteam_0_43()
events.render:set(anonteam_0_61)
