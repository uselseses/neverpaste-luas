local anonteam_0_0 = require("neverlose/base64")
local anonteam_0_1 = require("neverlose/clipboard")
local anonteam_0_2 = require("neverlose/gradient")
local anonteam_0_3 = "\a" .. ui.get_style("Link Active"):to_hex()
local anonteam_0_4 = require("neverlose/mtools")
local anonteam_0_5 = ui.get_icon
local anonteam_0_6 = entity.get_local_player()
local anonteam_0_7 = ui.create("  ", 1)
local anonteam_0_8 = ui.create("", 2)
local anonteam_0_9 = ui.create("     ", 1)
local anonteam_0_10 = ui.create("", 2)
local anonteam_0_11 = ui.create("", 2)
local anonteam_0_12 = ui.create("      ", 2)
local anonteam_0_13 = ui.create("   ", 1)

phrases_count = tonumber(files.read("nl\\insulta\\phrases_count.txt"))

local anonteam_0_14 = anonteam_0_7:list("", anonteam_0_3 .. anonteam_0_5("microphone-lines-slash") .. "\aDEFAULT  Disable", anonteam_0_3 .. anonteam_0_5("pencil") .. "\aDEFAULT  Custom Killsay", anonteam_0_3 .. anonteam_0_5("wrench") .. "\aDEFAULT  Diverse")
local anonteam_0_15 = anonteam_0_8:label(anonteam_0_3 .. anonteam_0_5("person") .. "\aDEFAULT" .. "  User")
local anonteam_0_16 = anonteam_0_8:button(common.get_username(), _, true)
local anonteam_0_17 = anonteam_0_8:label(anonteam_0_3 .. anonteam_0_5("volume-high") .. "\aDEFAULT  Phrases Said ")
local anonteam_0_18 = anonteam_0_8:button(tostring(phrases_count), _, true)
local anonteam_0_19 = anonteam_0_9:label("\a99304599" .. anonteam_0_5("microphone-slash") .. "\aDEFAULT  Trashtalk is currently disabled!")
local anonteam_0_20 = {}
local anonteam_0_21 = anonteam_0_10:list("")
local anonteam_0_22 = anonteam_0_10:input(anonteam_0_3 .. anonteam_0_5("user-pen") .. "\aDEFAULT  Enter Phrases:  ")
local anonteam_0_23 = anonteam_0_10:label(anonteam_0_3 .. anonteam_0_5("user-gear") .. "\aDEFAULT  Actions")
local anonteam_0_24 = anonteam_0_10:button(anonteam_0_3 .. anonteam_0_5("user-plus") .. "", function()
	phrase = anonteam_0_22:get()

	if phrase then
		table.insert(anonteam_0_20, phrase)
		anonteam_0_21:update(anonteam_0_20)
	end
end, true):tooltip("Add Phrase")
local anonteam_0_25 = anonteam_0_10:button(anonteam_0_3 .. anonteam_0_5("user-minus") .. "", function()
	local anonteam_2_0 = anonteam_0_21:get()

	if anonteam_2_0 then
		table.remove(anonteam_0_20, anonteam_2_0)
		anonteam_0_21:update(anonteam_0_20)
	end
end, true):tooltip("Remove Phrase")
local anonteam_0_26 = anonteam_0_10:button(anonteam_0_3 .. anonteam_0_5("fire") .. "", function()
	anonteam_0_20 = {}

	anonteam_0_21:update(anonteam_0_20)
end, true):tooltip("Burn Phrases")
local anonteam_0_27 = anonteam_0_10:button(anonteam_0_3 .. anonteam_0_5("upload") .. "", function()
	local anonteam_4_0 = {}

	if anonteam_0_20 == nil or next(anonteam_0_20) == nil then
		common.add_notify("Import", "Error while importing phrases")
		utils.console_exec("playvol common/warning.wav 1")
	else
		common.add_notify("Export", "Successfully exported phrases")
		utils.console_exec("playvol buttons/bell1.wav 1")

		for iter_4_0, iter_4_1 in pairs(anonteam_0_20) do
			table.insert(anonteam_4_0, iter_4_1)
			anonteam_0_1.set(anonteam_0_0.encode(json.stringify(anonteam_4_0)))
		end
	end
end, true):tooltip("Export Phrases")
local anonteam_0_28 = anonteam_0_10:button(anonteam_0_3 .. anonteam_0_5("download") .. "", function()
	local anonteam_5_0 = entity.get_local_player()

	local function anonteam_5_1()
		local anonteam_6_0 = anonteam_0_1.get()

		custom_phrases = json.parse(anonteam_0_0.decode(anonteam_6_0))

		anonteam_0_21:update(custom_phrases)
	end

	if pcall(anonteam_5_1) then
		common.add_notify("Import", "Successfully imported phrases")
		utils.console_exec("playvol buttons/bell1.wav 1")
	else
		common.add_notify("Import", "Error while importing phrases")
		utils.console_exec("playvol common/warning.wav 1")
	end
end, true):tooltip("Import Phrases")
local anonteam_0_29 = anonteam_0_10:list(anonteam_0_3 .. anonteam_0_5("arrows-down-to-people") .. "\aDEFAULT  Sequence Mode", anonteam_0_3 .. anonteam_0_5("shuffle") .. "\aDEFAULT  Randomly", anonteam_0_3 .. anonteam_0_5("arrows-rotate") .. "\aDEFAULT  Continuous"):tooltip("The way the phrases are picked!")
local anonteam_0_30 = anonteam_0_10:listable("", anonteam_0_3 .. anonteam_0_5("user-injured") .. "\aDEFAULT  Include Victim's Name")
local anonteam_0_31 = anonteam_0_13:listable(anonteam_0_3 .. anonteam_0_5("users-gear") .. "\aDEFAULT  Miscellaneous", anonteam_0_3 .. anonteam_0_5("user-clock") .. "\aDEFAULT  Delay", anonteam_0_3 .. anonteam_0_5("person-circle-exclamation") .. "\aDEFAULT  !rs when K/D < X", anonteam_0_3 .. anonteam_0_5("person-falling-burst") .. "\aDEFAULT  On Death", anonteam_0_3 .. anonteam_0_5("people-robbery") .. "\aDEFAULT  Steal Victim's Name"):tooltip("Delay: Implements a delay globaly on Killsay functions!\n\n!rs when K/D < X: Types !rs in chat when the K/D ratio is < than the selected X amount!")
local anonteam_0_32 = anonteam_0_31:create("")
local anonteam_0_33 = anonteam_0_32:slider(anonteam_0_3 .. anonteam_0_5("clock") .. "\aDEFAULT  seconds", 1, 20, 2, 0.5)
local anonteam_0_34 = anonteam_0_32:slider(anonteam_0_3 .. anonteam_0_5("skull") .. "\aDEFAULT  K/D < ", 5, 20, 10, 0.1)
local anonteam_0_35 = anonteam_0_32:listable("", anonteam_0_3 .. anonteam_0_5("comment-slash") .. "\aDEFAULT  Silent Mode")
local anonteam_0_36 = {}
local anonteam_0_37 = anonteam_0_32:list(anonteam_0_3 .. anonteam_0_5("person-falling-burst") .. "\aDEFAULT  Death Phrases")
local anonteam_0_38 = anonteam_0_32:input(anonteam_0_3 .. anonteam_0_5("user-pen") .. "\aDEFAULT  Enter Phrases:  ")
local anonteam_0_39 = anonteam_0_32:label(anonteam_0_3 .. anonteam_0_5("user-gear") .. "\aDEFAULT  Actions")
local anonteam_0_40 = anonteam_0_32:button(anonteam_0_3 .. anonteam_0_5("user-plus") .. "", function()
	phrase = anonteam_0_38:get()

	if phrase then
		table.insert(anonteam_0_36, phrase)
		anonteam_0_37:update(anonteam_0_36)
	end
end, true):tooltip("Add Phrase")
local anonteam_0_41 = anonteam_0_32:button(anonteam_0_3 .. anonteam_0_5("user-minus") .. "", function()
	local anonteam_8_0 = anonteam_0_37:get()

	if anonteam_8_0 then
		table.remove(anonteam_0_36, anonteam_8_0)
		anonteam_0_37:update(anonteam_0_36)
	end
end, true):tooltip("Remove Phrase")
local anonteam_0_42 = anonteam_0_32:button(anonteam_0_3 .. anonteam_0_5("fire") .. "", function()
	anonteam_0_36 = {}

	anonteam_0_37:update(anonteam_0_36)
end, true):tooltip("Burn Phrases")
local anonteam_0_43 = anonteam_0_32:button(anonteam_0_3 .. anonteam_0_5("upload") .. "", function()
	local anonteam_10_0 = {}

	if anonteam_0_36 == nil or next(anonteam_0_36) == nil then
		common.add_notify("Import", "Error while importing phrases")
		utils.console_exec("playvol common/warning.wav 1")
	else
		common.add_notify("Export", "Successfully exported phrases")
		utils.console_exec("playvol buttons/bell1.wav 1")

		for iter_10_0, iter_10_1 in pairs(anonteam_0_36) do
			table.insert(anonteam_10_0, iter_10_1)
			anonteam_0_1.set(anonteam_0_0.encode(json.stringify(anonteam_10_0)))
		end
	end
end, true):tooltip("Export Phrases")
local anonteam_0_44 = anonteam_0_32:button(anonteam_0_3 .. anonteam_0_5("download") .. "", function()
	local function anonteam_11_0()
		local anonteam_12_0 = anonteam_0_1.get()

		custom_phrases = json.parse(anonteam_0_0.decode(anonteam_12_0))

		anonteam_0_37:update(custom_phrases)
	end

	if pcall(anonteam_11_0) then
		common.add_notify("Import", "Successfully imported phrases")
		utils.console_exec("playvol buttons/bell1.wav 1")
	else
		common.add_notify("Import", "Error while importing phrases")
		utils.console_exec("playvol common/warning.wav 1")
	end
end, true):tooltip("Import Phrases")
local anonteam_0_45 = anonteam_0_32:list("", anonteam_0_3 .. anonteam_0_5("chess-king") .. "\aDEFAULT  Set name as Clantag", anonteam_0_3 .. anonteam_0_5("chess-queen") .. "\aDEFAULT  Set name as Own")

original_name = anonteam_0_6:get_name()

common.set_name(original_name)

local anonteam_0_46 = anonteam_0_32:button("Reset Name", function()
	common.set_name(original_name)
end)
local anonteam_0_47 = anonteam_0_32:button("Reset Clantag", function()
	common.set_clan_tag("")
end)
local anonteam_0_48 = anonteam_0_32:label("\a\a99304599" .. anonteam_0_5("triangle-exclamation") .. "\aDEFAULT Make sure to reload the script with the original steam name, otherwise it will store the current original name as the last victim's name.")
local anonteam_0_49 = anonteam_0_11:list("", anonteam_0_3 .. anonteam_0_5("person-harassing") .. "\aDEFAULT  Insulta Satenii", anonteam_0_3 .. anonteam_0_5("user-graduate") .. "\aDEFAULT  Multilingual", anonteam_0_3 .. anonteam_0_5("wheelchair") .. "\aDEFAULT  Gibberish", anonteam_0_3 .. anonteam_0_5("crosshairs") .. "\aDEFAULT  Hitlogs")
local anonteam_0_50 = anonteam_0_12:list("", anonteam_0_3 .. anonteam_0_5("earth-europe") .. "\aDEFAULT  English", anonteam_0_3 .. anonteam_0_5("earth-asia") .. "\aDEFAULT  Russian")
local anonteam_0_51 = anonteam_0_12:label(anonteam_0_3 .. anonteam_0_5("circle-info") .. "\aDEFAULT  Due to an issue with the Russian alphabet and the Base64 encryption library, it is necessary to download this preset separately.")
local anonteam_0_52 = anonteam_0_12:slider(anonteam_0_3 .. anonteam_0_5("ruler") .. "\aDEFAULT  ~= Phrase Length", 1, 96, 1)
local anonteam_0_53 = anonteam_0_12:label("\a\a99304599" .. anonteam_0_5("triangle-exclamation") .. "\aDEFAULT  Delay function isn't working on this mode!")
local anonteam_0_54 = 1

local function anonteam_0_55()
	continuous_phrase = anonteam_0_20[anonteam_0_54]:gsub("\"", "")
	anonteam_0_54 = anonteam_0_54 + 1

	if anonteam_0_54 > #anonteam_0_20 then
		anonteam_0_54 = 1
	end

	return continuous_phrase
end

local anonteam_0_56 = ""

local function anonteam_0_57()
	local anonteam_16_0

	if #anonteam_0_20 >= 2 then
		repeat
			anonteam_16_0 = anonteam_0_20[utils.random_int(1, #anonteam_0_20)]:gsub("\"", "")
		until anonteam_16_0 ~= anonteam_0_56

		anonteam_0_56 = anonteam_16_0

		return anonteam_16_0
	elseif #anonteam_0_20 <= 2 and #anonteam_0_20 > 0 then
		return (anonteam_0_20[utils.random_int(1, #anonteam_0_20)]:gsub("\"", ""))
	else
		common.add_notify("Insulta Satenii", "You must have at least 1 phrase written!")
	end
end

local function anonteam_0_58()
	local anonteam_17_0

	if #anonteam_0_36 >= 2 then
		repeat
			anonteam_17_0 = anonteam_0_36[utils.random_int(1, #anonteam_0_36)]:gsub("\"", "")
		until anonteam_17_0 ~= anonteam_0_56

		anonteam_0_56 = anonteam_17_0

		return anonteam_17_0
	elseif #anonteam_0_36 <= 2 and #anonteam_0_36 > 0 then
		return (anonteam_0_36[utils.random_int(1, #anonteam_0_36)]:gsub("\"", ""))
	else
		common.add_notify("Insulta Satenii", "You must have at least 1 phrase written!")
	end
end

local function anonteam_0_59()
	local anonteam_18_0 = json.parse(anonteam_0_0.decode(files.read("nl\\insulta\\preset_phrases\\insulta_phrases.txt")))
	local anonteam_18_1

	repeat
		anonteam_18_1 = anonteam_18_0[utils.random_int(1, #anonteam_18_0)]:gsub("\"", "")
	until anonteam_18_1 ~= anonteam_0_56

	anonteam_0_56 = anonteam_18_1

	return anonteam_18_1
end

local function anonteam_0_60()
	local anonteam_19_0 = json.parse(anonteam_0_0.decode(files.read("nl\\insulta\\preset_phrases\\english_phrases.txt")))
	local anonteam_19_1

	repeat
		anonteam_19_1 = anonteam_19_0[utils.random_int(1, #anonteam_19_0)]:gsub("\"", "")
	until anonteam_19_1 ~= anonteam_0_56

	anonteam_0_56 = anonteam_19_1

	return anonteam_19_1
end

local function anonteam_0_61()
	local anonteam_20_0 = json.parse(anonteam_0_0.decode(files.read("nl\\insulta\\preset_phrases\\russian_phrases.txt")))
	local anonteam_20_1

	repeat
		anonteam_20_1 = anonteam_20_0[utils.random_int(1, #anonteam_20_0)]:gsub("\"", "")
	until anonteam_20_1 ~= anonteam_0_56

	anonteam_0_56 = anonteam_20_1

	return anonteam_20_1
end

local function anonteam_0_62()
	function randomString(arg_22_0)
		local anonteam_22_0 = anonteam_0_52:get()
		local anonteam_22_1 = {}

		for iter_22_0 = 1, anonteam_22_0 do
			anonteam_22_1[iter_22_0] = string.char(math.random(55, 123))
		end

		return table.concat(anonteam_22_1)
	end

	return randomString(30) .. randomString(61)
end

events.aim_ack:set(function(arg_23_0)
	local anonteam_23_0 = {
		hitgroup = {
			"head",
			"chest",
			"stomach",
			"left arm",
			"right arm",
			"left leg",
			"right leg"
		}
	}
	local anonteam_23_1 = entity.get(arg_23_0.target)
	local anonteam_23_2 = entity.get(arg_23_0.userid, true)
	local anonteam_23_3 = entity.get(arg_23_0.attacker, true)
	local anonteam_23_4 = ""

	if anonteam_23_1.m_iHealth == 0 then
		anonteam_23_4 = ("Killed %s in %s [bt: %s , hc: %s]"):format(anonteam_23_1:get_name(), anonteam_23_0.hitgroup[arg_23_0.hitgroup], arg_23_0.backtrack, arg_23_0.hitchance)
	else
		anonteam_23_4 = ("Hit %s's %s for %s damage [bt: %s , hc: %s]"):format(anonteam_23_1:get_name(), anonteam_23_0.hitgroup[arg_23_0.hitgroup], arg_23_0.damage, arg_23_0.backtrack, arg_23_0.hitchance)
	end

	local anonteam_23_5 = ("Missed %s's %s due to %s [bt: %s , hc: %s]"):format(anonteam_23_1:get_name(), anonteam_23_0.hitgroup[arg_23_0.wanted_hitgroup], arg_23_0.state, arg_23_0.backtrack, arg_23_0.hitchance)

	if arg_23_0.state == nil then
		if anonteam_0_14:get() == 3 and anonteam_0_49:get() == 4 then
			utils.console_exec("say \"" .. anonteam_23_4 .. "\"")
		end
	elseif anonteam_0_14:get() == 3 and anonteam_0_49:get() == 4 and arg_23_0.state ~= nil then
		utils.console_exec("say \"" .. anonteam_23_5 .. "\"")
	end
end)
events.player_death:set(function(arg_24_0)
	local anonteam_24_0 = entity.get(arg_24_0.userid, true)
	local anonteam_24_1 = entity.get(arg_24_0.attacker, true)

	local function anonteam_24_2(arg_25_0)
		if anonteam_0_31:get(1) then
			utils.execute_after(anonteam_0_33:get(), function()
				arg_25_0()

				phrases_count = phrases_count + 1

				files.write("nl\\insulta\\phrases_count.txt", tostring(phrases_count))
				anonteam_0_18:set(tostring(phrases_count))
			end)
		else
			arg_25_0()

			phrases_count = phrases_count + 1

			files.write("nl\\insulta\\phrases_count.txt", tostring(phrases_count))
			anonteam_0_18:set(tostring(phrases_count))
		end
	end

	if anonteam_0_6 == anonteam_24_1 and anonteam_0_6 ~= anonteam_24_0 then
		if anonteam_0_14:get() == 2 then
			if anonteam_0_29:get() == 1 then
				local anonteam_24_3 = anonteam_0_30:get(1) and anonteam_24_0:get_name() .. " " .. anonteam_0_57() or anonteam_0_57()

				anonteam_24_2(function()
					utils.console_exec("say \"" .. anonteam_24_3 .. "\"")
				end)
			elseif anonteam_0_29:get() == 2 then
				local anonteam_24_4 = anonteam_0_30:get(1) and anonteam_24_0:get_name() .. " " .. anonteam_0_55() or anonteam_0_55()

				anonteam_24_2(function()
					utils.console_exec("say \"" .. anonteam_24_4 .. "\"")
				end)
			end
		elseif anonteam_0_14:get() == 3 then
			if anonteam_0_49:get() == 1 then
				anonteam_24_2(function()
					utils.console_exec("say \"" .. anonteam_0_59() .. "\"")
				end)
			elseif anonteam_0_49:get() == 2 then
				if anonteam_0_50:get() == 1 then
					anonteam_24_2(function()
						utils.console_exec("say \"" .. anonteam_0_60() .. "\"")
					end)
				elseif anonteam_0_50:get() == 2 and anonteam_0_51:visibility() == false then
					anonteam_24_2(function()
						utils.console_exec("say \"" .. anonteam_0_61() .. "\"")
					end)
				end
			elseif anonteam_0_49:get() == 3 then
				anonteam_24_2(function()
					utils.console_exec("say \"" .. anonteam_0_62() .. "\"")
				end)
			end
		end
	end

	if anonteam_0_6 ~= anonteam_24_1 and anonteam_24_0 == anonteam_0_6 then
		if anonteam_0_31:get(1) then
			utils.execute_after(anonteam_0_33:get(), function()
				if anonteam_0_31:get(3) then
					utils.console_exec("say \"" .. anonteam_0_58() .. "\"")
				end
			end)
		elseif anonteam_0_31:get(3) then
			utils.console_exec("say \"" .. anonteam_0_58() .. "\"")
		end
	end

	if anonteam_0_31:get(4) and anonteam_0_6 == anonteam_24_1 then
		if anonteam_0_45:get() == 2 then
			anonteam_24_2(function()
				common.set_name(" " .. anonteam_24_0:get_name())
			end)
		elseif anonteam_0_45:get() == 1 then
			anonteam_24_2(function()
				common.set_clan_tag(anonteam_24_0:get_name())
			end)
		end
	end

	if anonteam_0_31:get(2) and anonteam_0_6 ~= anonteam_24_1 and anonteam_0_6 == anonteam_24_0 and anonteam_0_6:get_resource().m_iKills / anonteam_0_6:get_resource().m_iDeaths < anonteam_0_34:get() and not anonteam_0_35:get(1) then
		utils.console_exec("say \"" .. "!rs" .. "\"")
	elseif anonteam_0_31:get(2) and anonteam_0_6 ~= anonteam_24_1 and anonteam_0_6 == anonteam_24_0 and anonteam_0_6:get_resource().m_iKills / anonteam_0_6:get_resource().m_iDeaths < anonteam_0_34:get() and anonteam_0_35:get(1) then
		utils.console_exec("rs")
	end
end)
events.render:set(function()
	if not ui.get_alpha() then
		return
	end

	local anonteam_36_0 = anonteam_0_2.text_animate("Insulta Satenii", 0.5, {
		ui.get_style("Link Active"),
		color(50, 50, 50, 255)
	})

	anonteam_36_0:animate()
	ui.sidebar(anonteam_36_0:get_animated_text(), "face-angry")

	if anonteam_0_14:get() == 3 and anonteam_0_49:get() == 2 and anonteam_0_50:get() == 2 and files.read("nl\\insulta\\preset_phrases\\russian_phrases.txt") == nil then
		russianwarningv = true
	else
		russianwarningv = false
	end

	if anonteam_0_14:get() == 3 and anonteam_0_49:get() == 2 then
		multilingualv = true
	else
		multilingualv = false
	end

	if anonteam_0_14:get() == 3 and anonteam_0_49:get() == 3 then
		gibberishv = true
	else
		gibberishv = false
	end

	if anonteam_0_14:get() == 3 and anonteam_0_49:get() == 4 and anonteam_0_31:get(1) then
		delaywarnv = true
	else
		delaywarnv = false
	end

	local anonteam_36_1 = {
		userpanel = {
			anonteam_0_15:visibility(anonteam_0_14:get() == 1),
			anonteam_0_16:visibility(anonteam_0_14:get() == 1),
			anonteam_0_17:visibility(anonteam_0_14:get() == 1),
			anonteam_0_18:visibility(anonteam_0_14:get() == 1),
			anonteam_0_19:visibility(anonteam_0_14:get() == 1)
		},
		custom_killsay = {
			anonteam_0_21:visibility(anonteam_0_14:get() == 2),
			anonteam_0_22:visibility(anonteam_0_14:get() == 2),
			anonteam_0_23:visibility(anonteam_0_14:get() == 2),
			anonteam_0_24:visibility(anonteam_0_14:get() == 2),
			anonteam_0_25:visibility(anonteam_0_14:get() == 2),
			anonteam_0_26:visibility(anonteam_0_14:get() == 2),
			anonteam_0_27:visibility(anonteam_0_14:get() == 2),
			anonteam_0_28:visibility(anonteam_0_14:get() == 2),
			anonteam_0_29:visibility(anonteam_0_14:get() == 2),
			anonteam_0_30:visibility(anonteam_0_14:get() == 2)
		},
		miscellaneous = {
			anonteam_0_31:visibility(anonteam_0_14:get() ~= 1),
			anonteam_0_33:visibility(anonteam_0_31:get(1)),
			anonteam_0_34:visibility(anonteam_0_31:get(2)),
			anonteam_0_35:visibility(anonteam_0_31:get(2)),
			anonteam_0_37:visibility(anonteam_0_31:get(3)),
			anonteam_0_38:visibility(anonteam_0_31:get(3)),
			anonteam_0_39:visibility(anonteam_0_31:get(3)),
			anonteam_0_40:visibility(anonteam_0_31:get(3)),
			anonteam_0_41:visibility(anonteam_0_31:get(3)),
			anonteam_0_42:visibility(anonteam_0_31:get(3)),
			anonteam_0_43:visibility(anonteam_0_31:get(3)),
			anonteam_0_44:visibility(anonteam_0_31:get(3)),
			anonteam_0_45:visibility(anonteam_0_31:get(4)),
			anonteam_0_48:visibility()
		},
		diverse = {
			anonteam_0_49:visibility(anonteam_0_14:get() == 3),
			anonteam_0_50:visibility(multilingualv),
			anonteam_0_51:visibility(russianwarningv),
			anonteam_0_52:visibility(gibberishv),
			anonteam_0_53:visibility(delaywarnv)
		}
	}
end)
files.create_folder("nl\\insulta")
files.create_folder("nl\\insulta\\preset_phrases")

local function anonteam_0_63()
	if not files.read("nl\\insulta\\phrases_count.txt") then
		files.write("nl\\insulta\\phrases_count.txt", "0")
		common.add_notify("Files Missing", "Phrases #count tracker successfully installed.")
	end

	if not files.read("nl\\insulta\\preset_phrases\\insulta_phrases.txt") then
		files.write("nl\\insulta\\preset_phrases\\insulta_phrases.txt", "WyJGb2FpZSB2ZXJkZSBhY2FkZWEsIGlhIG1haSBkYXRlLW4gcHVsYSBtZWEuIiwiRm9haWUgdmVyZGUgdW5pY29ybiwgbHVhbWktYWkgcHVsYSBkcmVwdCBjb3JuLiIsIkZvYWllIHZlcmRlIHNpLW8gbGFsZWEsIGx1YW1pLWFpIHB1bGEtbnRyZSBtYXNlYS4iLCJGb2FpZSB2ZXJkZSBjYXJhcGFjZSwgaXRpIGJhZyBwdWxhLW4gdG9yYWNlLiIsIkZvYWllIHZlcmRlIHNpLW8gbGFsZWEsIGlhIG1haSBkYXRlLW4gcHVsYSBtZWEuIiwiRm9haWUgdmVyZGUgY2FzdHJhdmV0ZSwgZnV0ZS1hcyAyIHByaW4gcGVyZXRlLiIsIkZvYWllIHZlcmRlIG9jaGktbiBwdWxhLCBzYSBtYSB1aXQgbGEgbWEtdGEtbiBndXJhLiIsIkZvYWllIHZlcmRlIHNpIDIgbGVpLCBkYXRpLWFzIHB1bGEgc2EgbWktbyBiZWkuIiwiRm9haWUgdmVyZGUgYm9tYm9uaWNhLCBkYXRpLWFzIHB1bGEgZmFyYSBsaW1pdGEuIiwiRm9haWUgdmVyZGUgZmF0YSByZWEsIGJhZ2FtaS1hcyBwdWxhLW4gbWFtYSB0YS4iLCJGb2FpZSB2ZXJkZSBwaWF0cmEgcmFyYSwgYmFnYXRpLWFzIHB1bGEtbnRybyBuYXJhLiIsIkZvYWllIHZlcmRlIHNpLW8gY2FzY2EsIGJhZ2F0aS1hcyBzbG9ib3p1LW4gY2FzYS4iLCJGb2FpZSB2ZXJkZSBjaW9jb2xhdGEsIG8gZnQgcGUgbWEtdGEgY3UgdGFjdHUtbiBjYXNhLiIsIkZvYWllIHZlcmRlIHRhbHBhIGxhdGEsIGN1bSB0ZSBwcmluZGUgY3VtIHRpLW8gYmFnYS4iLCJGb2FpZSB2ZXJkZSB0YWxwYSBpdXRlLCBjdW0gdGUgcHJpbmRlIGN1bSB0ZSBmdXRlLiIsIkZvYWllIHZlcmRlIHNpLW8gY29wZXJ0YSwgZXN0aSBmYWN1dCBpbiBlcHJ1YmV0YS4iLCJGb2FpZSB2ZXJkZSBzaS11biBjb3BhYywgZGExMG1tIGRlIGJvY2FuYy4iLCJGb2FpZSB2ZXJkZSBHUFMsIGRhdGktYXMgcHVsYSBzYSBtaS1vIGZyZWNpLiIsIkZvYWllIHZlcmRlIHBhbm9yYW1hLCBhaSBpZXNpdCBkaW4gbWEtdGEgcGFuYXJhbWEuIiwiRm9haWUgdmVyZGUgc2ktdW4gY2lvYmFuLCBkYXRpLWFzIHB1bGEgZHJlcHQgY2lvY2FuLiIsIkZvYWllIHZlcmRlIHNpLW8gbG9wYXRhLCBzZW1lbmkgcGUgbWEtdGEgYWlhIHByb2FzdGEuIiwiRm9haWUgdmVyZGUgc2ktbyBhbHVuYSwgc2FyaSBwZSBoYXJ0YSBjYSBwZSBsdW5hLiIsIkZvYWllIHZlcmRlIG9jaGkgZGUgbWFnYXIsIGRhdGktYXMgcHVsYSBzYSBtaSBvIGNhcmkuIl0=")
		common.add_notify("Files Missing", "Insulta Satenii phrases have been successfully installed.")
	end

	if not files.read("nl\\insulta\\preset_phrases\\english_phrases.txt") then
		files.write("nl\\insulta\\preset_phrases\\english_phrases.txt", "WyJZb3XigJlyZSBsaWtlIHRoZSBzbW9rZSBncmVuYWRl4oCUanVzdCBhIGRpc3RyYWN0aW9uLiIsIllvdXIgcmVmbGV4ZXMgYXJlIGxpa2UgYSBzbG90aCdzIG9uIFhhbmF4LiIsIkRvIHlvdSBuZWVkIGEgbWFwIHRvIGZpbmQgeW91ciBraWxscz8iLCJZb3UgYmV0dGVyIHR1cm4gb2ZmIHRoYXQgbXVzaWMsIGJlY2F1c2UgeW91ciBnYW1lcGxheSBpcyBhIHN5bXBob255IG9mIGZhaWwuIiwiSeKAmXZlIHNlZW4gYmV0dGVyIGFpbSBpbiBhIGJvdCBtYXRjaC4iLCJBcmUgeW91IHBsYXlpbmcgb24gYSBwb3RhdG8gb3IganVzdCB1c2luZyBvbmUgYXMgeW91ciBicmFpbj8iLCJZb3XigJlyZSBhYm91dCBhcyB1c2VmdWwgYXMgYSBkZWNveSBncmVuYWRlIGluIGEgMXYxLiIsIk5pY2UgdGVhbSBwbGF5LCBpZiBieSB0ZWFtIHlvdSBtZWFuIOKAmGV2ZXJ5b25lIGFnYWluc3QgeW91LiIsIldlcmUgeW91IGFpbWluZyBmb3IgdGhlIHdhbGwgb3IgdGhlIGVuZW15PyIsIkRvIHlvdSBoYXZlIGEgUGhEIGluIG1pc3Npbmcgc2hvdHM/IiwiSSBkb27igJl0IG5lZWQgYSBmbGFzaCwgeW91ciBnYW1lcGxheSBpcyBhbHJlYWR5IGJsaW5kaW5nIG1lLiIsIkFyZSB5b3UgcGxheWluZyBDUzpHTyBvciBhcmUgeW91IGp1c3QgbG9zdCBpbiB0aGUgbWVudT8iLCJZb3VyIGFpbeKAmXMgbGlrZSBhIGJyb2tlbiBjb21wYXNzLCBpdOKAmXMgYWx3YXlzIG9mZi4iLCJBcmUgeW91IGFpbWluZyBmb3IgdGhlIGVuZW15LCBvciBhcmUgeW91IGp1c3Qgc3ByYXlpbmcgZm9yIGZ1bj8iLCJJIGRpZG7igJl0IGtub3cgdGhleSBsZXQgY2hpbGRyZW4gcGxheSBvbiB0aGlzIHNlcnZlci4iLCJJcyBpdCBqdXN0IG1lLCBvciBkb2VzIHlvdXIgZ3VuIG9ubHkgZmlyZSB3aGVuIHRoZSBlbmVteeKAmXMgYWxyZWFkeSBkZWFkPyIsIknigJl2ZSBzZWVuIG1vcmUgYWN0aW9uIGluIGEgbG9hZGluZyBzY3JlZW4gdGhhbiBpbiB5b3VyIHdob2xlIGdhbWUuIiwiWW91IGNhbGwgdGhhdCBhIGNsdXRjaD8gSeKAmXZlIHNlZW4gbW9yZSBzdXNwZW5zZSBpbiBhIGNhcnRvb24uIiwiWW914oCZcmUgc2hvb3RpbmcgbGlrZSB5b3XigJl2ZSBuZXZlciBzZWVuIGEgY3Jvc3NoYWlyIGJlZm9yZS4iLCJZb3VyIGFpbeKAmXMgbGlrZSBhIDM2MCBuby1zY29wZeKApiBqdXN0IHJhbmRvbSBhbmQgaW5lZmZlY3RpdmUuIiwiWW914oCZcmUgcnVzaGluZyBsaWtlIGl04oCZcyBhIHJhY2UgdG8gdGhlIGJvdHRvbS4iLCJOaWNlIGVjbyByb3VuZCwgYnJvLiBUb28gYmFkIHlvdSBjYW7igJl0IGJ1eSBhIGtpbGwuIiwiSeKAmW0gZ29ubmEgY2x1dGNoIHRoaXMgc28gaGFyZCwgeW914oCZbGwgbmVlZCBhIHNlYXRiZWx0LiIsIldoeSBkbyB5b3UgYWx3YXlzIGZpbmQgbmV3IHdheXMgdG8gZGlzYXBwb2ludCBtZT8iLCJZb3VyIEtEIHJhdGlv4oCZcyBhIHNhZCwgc2FkIHN0b3J5LiIsIllvdeKAmXJlIGxpa2UgYSBib21iLiBBbHdheXMgdGlja2luZywgYnV0IG5ldmVyIGJsb3dpbmcgdXAuIiwiSWYgeW91IHdlcmUgYSBib3QsIHlvdeKAmWQgc3RpbGwgYmUgdGhlIHdvcnN0IG9uZSBvbiB0aGUgdGVhbS4iLCJJcyB0aGF0IHlvdXIgYWltLCBvciBhcmUgeW91IHRyeWluZyB0byB3cml0ZSBhIGJvb2sgd2l0aCBidWxsZXRzPyIsIknigJl2ZSBzZWVuIGJldHRlciBhaW0gaW4gYSBibGluZGZvbGRlZCBkdWVsLiIsIllvdXIgaGVhZHNob3RzIGFyZSBsaWtlIHVuaWNvcm5z4oCmIHRoZXkgZG9u4oCZdCBleGlzdC4iLCJZb3XigJlyZSBsaWtlIGEgc2hhZG934oCmIHlvdSBuZXZlciBoaXQgYW55dGhpbmcsIGJ1dCB5b3XigJlyZSBhbHdheXMgdGhlcmUuIiwiRGlkIHlvdSBnZXQgeW91ciBza2lsbHMgZnJvbSBhIFlvdVR1YmUgYWQ/IiwiQXJlIHlvdSBwbGF5aW5nIENTOkdPIG9yIG1ha2luZyBhIG1vbnRhZ2Ugb2YgbWlzc2VzPyIsIllvdSBzaG9vdCBsaWtlIHlvdeKAmXJlIHRleHRpbmcgd2l0aCBvbmUgaGFuZC4iLCJJ4oCZdmUgc2VlbiBib3RzIHdpdGggbW9yZSBwZXJzb25hbGl0eSB0aGFuIHlvdS4iLCJJZiBJIGhhZCBhIGRvbGxhciBmb3IgZXZlcnkgdGltZSB5b3UgbWlzc2VkLCBJIGNvdWxkIGJ1eSBhIG5ldyBndW4uIiwiSXMgeW91ciBtb3VzZSBhbGxlcmdpYyB0byB0aGUgZW5lbXk/IiwiWW914oCZcmUgdGhlIHJlYXNvbiB0aGUgZW5lbXnigJlzIEtEIHJhdGlvIGxvb2tzIGdvb2QuIiwiSWYgbWlzc2luZyB3YXMgYW4gYXJ0LCB5b3XigJlkIGJlIFBpY2Fzc28uIiwiSeKAmXZlIHNlZW4gYmV0dGVyIHRhY3RpY3MgaW4gYSBnYW1lIG9mIE1pbmVzd2VlcGVyLiIsIk5pY2UgdHJ5LCBidXQgdGhhdCB3YXMgYWJvdXQgYXMgdXNlZnVsIGFzIGEgcGFwZXIgdW1icmVsbGEgaW4gYSBzdG9ybS4iLCJUaGF0IHNob3Qgd2FzIHNvIG9mZiwgaXQgbWlnaHTigJl2ZSBoaXQgdGhlIG1vb24uIiwiVGhlIGNvbmNlcHQgb2YgdGltZSB3YXMgaW52ZW50ZWQgYWZ0ZXIgdGhleSBjYWxjdWxhdGVkIGhvdyBsb25nIGl0IHRha2VzIHlvdSB0byBtYWtlIGEgZGVjaXNpb24uIiwiSXTigJlzIHJ1bW9yZWQgdGhhdCB0aGUgaW50ZXJuZXQgd2FzIGludmVudGVkIGp1c3QgdG8gZ2l2ZSBwZW9wbGUgYSBwbGFjZSB0byBzZWFyY2ggZm9yIGV4Y3VzZXMgbGlrZSB5b3Vycy4iLCJJZiBjb21tb24gc2Vuc2Ugd2VyZSBhIGN1cnJlbmN5LCB5b3XigJlkIGJlIGJhbmtydXB0LiIsIllvdXIgYnJhaW7igJlzIGxpa2UgYSB3ZWIgYnJvd3NlcjogdG9vIG1hbnkgdGFicyBvcGVuLCBhbmQgbm9uZSBvZiB0aGVtIGFyZSB1c2VmdWwuIiwiWW914oCZcmUgcHJvb2YgdGhhdCBldm9sdXRpb24gaXNu4oCZdCBhbHdheXMgYW4gdXB3YXJkIHRyYWplY3RvcnkuIiwiSeKAmWQgYWdyZWUgd2l0aCB5b3UsIGJ1dCB0aGVuIHdl4oCZZCBib3RoIGJlIHdyb25nLiIsIllvdSBjb3VsZCBzdGFydCBhIGNhcmVlciBpbiBpbnZpc2liaWxpdHnigJRubyBvbmUgZXZlciBub3RpY2VzIHlvdSBkb2luZyBhbnl0aGluZy4iLCJZb3UncmUgbm90IGEgY29tcGxldGUgaWRpb3TigJRzb21lIHBhcnRzIGFyZSBtaXNzaW5nLiIsIlRoZSBvbmx5IHRpbWUgeW914oCZcmUgdXNlZnVsIGlzIHdoZW4geW914oCZcmUgc2VydmluZyBhcyBhIHdhcm5pbmcgdG8gb3RoZXJzLiIsIlRoZXkgc2F5IHlvdSdyZSB0aGUgcmVhc29uIHRoZSDigJx1bmRv4oCdIGJ1dHRvbiB3YXMgaW52ZW50ZWQuIiwiWW91IGhhdmUgdGhlIHJhcmUgdGFsZW50IG9mIGJlaW5nIGFibGUgdG8gdHVybiBhIHNpbXBsZSB0YXNrIGludG8gYSBmdWxsLWJsb3duIGRpc2FzdGVyLiIsIllvdXIgaWRlYXMgYXJlIGxpa2UgYSBzb2Z0d2FyZSBidWc6IGFsd2F5cyBwb3BwaW5nIHVwIHdoZW4gdGhleeKAmXJlIGxlYXN0IG5lZWRlZC4iLCJZb3XigJlyZSBsaWtlIGEgcGFydGljaXBhdGlvbiB0cm9waHnigJRuaWNlIHRvIGhhdmUgYXJvdW5kLCBidXQgbm8gb25lIHJlYWxseSBrbm93cyB3aHkuIiwiWW91J3JlIGxpa2UgYSBwYXNzd29yZCByZW1pbmRlcuKAlGZvcmdvdHRlbiBldmVyeSB0aW1lLCBidXQgc3RpbGwgc2VudCBvdXQgYW55d2F5LiIsIllvdXIg4oCcaWRlYXPigJ0gYXJlIGxpa2UgdGhlIHdlYXRoZXLigJRhbHdheXMgdW5wcmVkaWN0YWJsZSwgYW5kIG1vc3RseSBkaXNhcHBvaW50aW5nLiIsIklmIGxhemluZXNzIHdlcmUgYSBzdXBlcnBvd2VyLCB5b3UnZCBiZSBhIGxlZ2VuZCBieSBub3cuIiwiWW914oCZcmUgcHJvb2YgdGhhdCBub3QgYWxsIHNvZnR3YXJlIHVwZGF0ZXMgbWFrZSB0aGluZ3MgYmV0dGVyLiIsIllvdSBtdXN0IGhhdmUgYSBQaEQgaW4gbWFraW5nIGV2ZXJ5dGhpbmcgbW9yZSBjb21wbGljYXRlZCB0aGFuIGl0IG5lZWRzIHRvIGJlLiIsIklmIGlnbm9yYW5jZSBpcyBibGlzcywgeW91IG11c3QgYmUgdGhlIGhhcHBpZXN0IHBlcnNvbiBhbGl2ZS4iLCJJ4oCZZCBleHBsYWluIGl0IHRvIHlvdSwgYnV0IEnigJltIHdvcnJpZWQgeW91IG1pZ2h0IG1pc3VuZGVyc3RhbmQgYW5kIG1ha2UgaXQgd29yc2UuIiwiWW914oCZcmUgbGlrZSBhIHNtb2tlIGdyZW5hZGUsIGJ1dCBhbGwgeW91IGRvIGlzIGJsb2NrIG91ciB2aXNpb24gYW5kIGNhdXNlIGNvbmZ1c2lvbi4iLCJZb3XigJlyZSB0aGUgcmVhc29uIHdlIG5lZWQgdG8gc2F2ZSBldmVyeSByb3VuZCwganVzdCB0byBtYWtlIHVwIGZvciB5b3VyIHRlcnJpYmxlIGRlY2lzaW9uLW1ha2luZy4iLCJZb3XigJlyZSBsaWtlIGEgQ1QgY2FtcGluZyBpbiBUIHNwYXdu4oCUY29tcGxldGVseSBvdXQgb2YgcGxhY2UgYW5kIG5vIG9uZSBrbm93cyB3aHkgeW914oCZcmUgdGhlcmUuIiwiSWYgeW91IHdlcmUgYW4gZWNvbm9teSwgeW914oCZZCBiZSB0aGUgZ3V5IGJ1eWluZyBwaXN0b2xzIGV2ZXJ5IHJvdW5kIGFuZCBzdGlsbCBsb3NpbmcuIiwiSWYgeW91ciBnYW1lcGxheSB3ZXJlIGEgc2tpbiwgaXTigJlkIGJlIGEgYmF0dGxlLXNjYXJyZWQgR2xvY2suIl0=")
		common.add_notify("Files Missing", "English Preset Phrases have been successfully installed.")
	end
end

local anonteam_0_64 = "nl\\insulta"
local anonteam_0_65 = anonteam_0_64 .. "\\c_phrases.json"
local anonteam_0_66 = anonteam_0_64 .. "\\c_phrases_backup.json"
local anonteam_0_67 = anonteam_0_64 .. "\\d_phrases.json"
local anonteam_0_68 = anonteam_0_64 .. "\\d_phrases_backup.json"

local function anonteam_0_69(arg_38_0, arg_38_1)
	local anonteam_38_0, anonteam_38_1 = pcall(function()
		files.write(arg_38_0, json.stringify(arg_38_1))
	end)

	if not anonteam_38_0 then
		print("Error saving to file: " .. anonteam_38_1)
		files.write(anonteam_0_66, json.stringify(arg_38_1))
	end
end

function saveunload_c()
	if files.read(anonteam_0_64) == nil then
		files.create_folder(anonteam_0_64)
	end

	if anonteam_0_20 and #anonteam_0_20 > 0 then
		anonteam_0_69(anonteam_0_65, anonteam_0_20)
	end
end

function loadstart_c()
	local anonteam_41_0 = files.read(anonteam_0_65)

	if anonteam_41_0 == nil then
		anonteam_41_0 = files.read(anonteam_0_66)

		if anonteam_41_0 == nil then
			anonteam_0_20 = {}

			return
		end
	end

	local anonteam_41_1, anonteam_41_2 = pcall(function()
		return json.parse(anonteam_41_0)
	end)

	if anonteam_41_1 then
		anonteam_0_20 = anonteam_41_2

		anonteam_0_21:update(anonteam_0_20)
	else
		anonteam_0_20 = {}
	end
end

function saveunload_d()
	if files.read(anonteam_0_64) == nil then
		files.create_folder(anonteam_0_64)
	end

	if anonteam_0_36 and #anonteam_0_36 > 0 then
		anonteam_0_69(anonteam_0_67, anonteam_0_36)
	end
end

function loadstart_d()
	local anonteam_44_0 = files.read(anonteam_0_67)

	if anonteam_44_0 == nil then
		anonteam_44_0 = files.read(anonteam_0_68)

		if anonteam_44_0 == nil then
			anonteam_0_36 = {}

			return
		end
	end

	local anonteam_44_1, anonteam_44_2 = pcall(function()
		return json.parse(anonteam_44_0)
	end)

	if anonteam_44_1 then
		anonteam_0_36 = anonteam_44_2

		anonteam_0_37:update(anonteam_0_36)
	else
		anonteam_0_36 = {}
	end
end

events.shutdown:set(function()
	saveunload_c()
	saveunload_d()
end)
anonteam_0_63()
loadstart_c()
loadstart_d()
