local _ = string.format;
local _ = table.concat;
local l_remove_0 = table.remove;
local v3 = {};
local v4 = {};
local v5 = {};
local v6 = {};
ui.sidebar("Scoreboard info", "\aFF00FFFF" .. ui.get_icon("toggle-on"));
v6.group_ref = ui.create("Scoreboard Equipment");
v6.enabled = v6.group_ref:switch("Enabled", true);
v6.enabled_cp = v6.enabled:color_picker(color(255, 140));
v6.team_only = v6.group_ref:switch("Team Equipment", true);
v6.local_player = v6.group_ref:switch("Local Equipment", true);
v6.scale = v6.group_ref:slider("Scale", 10, 100, 50);
local v7 = {
    local_player = false, 
    team_only = false, 
    scale = 50, 
    enabled = false
};
local v8 = {
    enabled = function()
        -- upvalues: v7 (ref), v6 (ref)
        v7.enabled = v6.enabled:get();
        v6.team_only:visibility(v7.enabled);
        v6.scale:visibility(v7.enabled);
        v6.local_player:visibility(v7.enabled);
        ui.sidebar("Scoreboard info", ui.get_icon("toggle-" .. (v7.enabled and "on" or "off")));
    end, 
    team_only = function()
        -- upvalues: v7 (ref), v6 (ref)
        v7.team_only = v6.team_only:get();
    end, 
    local_player = function()
        -- upvalues: v7 (ref), v6 (ref)
        v7.local_player = v6.local_player:get();
    end, 
    scale = function()
        -- upvalues: v7 (ref), v6 (ref), v3 (ref)
        v7.scale = v6.scale:get();
        v3.m_times_recalled = 0;
    end
};
for v9, v10 in pairs(v6) do
    if v9 ~= "group_ref" and v9 ~= "enabled_cp" then
        v10:set_callback(v8[v9], true);
    end;
end;
v3 = {
    prev_update = 0, 
    _init = function(v11)
        v11.methods = v11.exec("            _scoreboardWeapons = function () {\n    \n                this.getContainer = function() {\n                    var _m_cP = $.GetContextPanel();\n                    var CSGOHud = _m_cP.FindChild(\"Hud\");\n                    return ScoreboardContainer = CSGOHud.FindChild(\"ScoreboardContainer\");\n                }\n    \n                this.weapon_priority = {armor_helmet: 397, armor: 398, defuser: 399, flashbang: 400, hegrenade: 401, smokegrenade: 402, molotov: 403, decoy: 404, incgrenade: 405, frag_grenade: 406, c4: 498, taser: 499, deagle: 500, elite: 501, fiveseven: 502, glock: 503, tec9: 504, hkp2000: 505, p250: 506, usp_silencer: 507, cz75a: 508, revolver: 509, ak47: 600, aug: 601, awp: 602, famas: 603, g3sg1: 604, galilar: 604, m249: 605, m4a1: 606, mac10: 607, p90: 608, mp5sd: 609, ump45: 610, xm1014: 611, bizon: 612, mag7: 613, negev: 614, sawedoff: 615, mp7: 616, mp9: 617, nova: 618, scar20: 619, sg556: 620, ssg08: 621, m4a1: 622}\n    \n                this.getXuid = function (entityIndex) { return entityIndex ? GameStateAPI.GetPlayerXuidStringFromEntIndex(entityIndex) : -1 }\n            \n                this.declaredChilds = []\n    \n                this.latest_array = []\n                this.updatePlayer = function (playerArray, teamCheck, show_local, color, alpha, scale) {\n\n                    const obj_hash = JSON.stringify(playerArray)\n                    if (this.latest_array == obj_hash)\n                        return\n\n                    this.latest_array = obj_hash\n\n                    if(playerArray == undefined)\n                        playerArray = []\n\n                    // entityIndex, weaponArray, activeWeapon\n                \n                    if(scale != undefined) \n                        scale = scale.toString() + \"%\"\n\n                    var playerArrayV2 = []\n                    const localXUID = GameStateAPI.GetLocalPlayerXuid()\n                    const localTeam = GameStateAPI.GetAssociatedTeamNumber(localXUID)\n    \n                    for(var i in playerArray) {\n                        var tempXuid = getXuid(playerArray[i].index)\n\n                        if(tempXuid != -1 || tempXuid != 0) {\n\n                            var temp_weapon_array = []\n\n                            for(var j in playerArray[i].weapons) {\n                                temp_weapon_array[Number(j) - 1] = playerArray[i].weapons[j]\n                            }\n\n                            playerArrayV2[tempXuid] = {weapons: temp_weapon_array, active: playerArray[i].active}\n                        }\n                    }\n    \n                    getContainer().FindChildrenWithClassTraverse(\"spectator-hidden\").forEach(function (player_element) {\n            \n                        if (player_element[\"id\"] !== \"id-sb-name__nameicons\") return false\n            \n                        var SteamID = 0\n                        player_element.GetParent().Children().forEach(function (local_element) {\n                            if (local_element[\"paneltype\"] == \"Label\") {\n                                SteamID = local_element.GetParent().GetParent()[\"m_xuid\"];\n                                return;\n                            }\n                        });\n    \n    \n                        if (playerArrayV2.length == 0 || ( (SteamID != localXUID && teamCheck && GameStateAPI.GetAssociatedTeamNumber(SteamID) == localTeam) || ((show_local && SteamID == localXUID)) )) {\n                            player_element.Children().forEach((elee) => {\n                                if(elee.id.startsWith(\"nvl_\"))\n                                    elee.DeleteAsync(.0)\n                            })\n                            return false;\n                        }\n    \n                        var weaponArray, activeWeapon\n    \n                        if(playerArrayV2[SteamID]) {\n                            weaponArray = playerArrayV2[SteamID].weapons\n                            activeWeapon = playerArrayV2[SteamID].active\n                        } else { return false }\n            \n                        if (!declaredChilds[SteamID]) declaredChilds[SteamID] = []\n            \n                        for (var i in declaredChilds[SteamID]) {\n                            var declaredFindChild = player_element.FindChild(\"nvl_\" + declaredChilds[SteamID][i])\n                            if (!declaredFindChild) continue\n            \n                            var currentExists = false\n                            for (var j in weaponArray) {\n                                if (declaredChilds[SteamID][i] == weaponArray[j]) {\n                                    currentExists = true\n                                    break;\n                                }\n                            }\n                            if (!currentExists) {\n                                declaredFindChild.DeleteAsync(.0)\n                            }\n                        }\n    \n                        function resort() {\n    \n                            var tempChilds = []\n                            player_element.Children().forEach((elee) => {\n                                if(elee.id.startsWith(\"nvl_\"))\n                                    tempChilds.push(elee)\n                            })\n    \n                            let newArray = tempChilds.sort((a, b) => this.weapon_priority[b.id.replace(\"nvl_\", \"\")] - this.weapon_priority[a.id.replace(\"nvl_\", \"\")])\n                            for(var i in newArray) {\n                                let j = parseInt(i)\n                                if(newArray[j + 1])  player_element.MoveChildBefore(newArray[j+1], newArray[j]) \n                            }\n                        }\n    \n                        for (var w of weaponArray) {\n            \n                            if(w == \"no\") continue;\n                            var alphaWeapon = w == activeWeapon ? Math.max(Math.min(1, alpha), 0.01) : Math.max(Math.min(1, alpha - 0.5), 0.01)\n                            var new_el = player_element.FindChild(\"nvl_\" + w)\n\n\n                            if (declaredChilds[SteamID].indexOf(w) == -1) declaredChilds[SteamID].push(w)\n            \n            \n                            if (!new_el) {\n                                player_element.BCreateChildren(`<ItemImage id=\"nvl_${w}\" registerforreadyevents=\"true\" readyfordisplay=\"false\" src=\"file://{images}/icons/equipment/${w}.svg\" scaling=\"stretch-to-fit-preserve-aspect\" style=\"transition-property: opacity; transition-duration: 0.1s; transition-timing-function: ease-in-out; margin-left: 2px; margin-right: 2px;ui-scale: ${scale}; vertical-align: middle; opacity: 0.001;wash-color: #${color};\"/>`);\n                                new_el = player_element.FindChild(\"nvl_\" + w)\n                                new_el.style.opacity = alphaWeapon\n                            } else {\n                                new_el.style.opacity = alphaWeapon\n                                new_el.style.washColor = \"#\" + color\n                                new_el.style[\"ui-scale\"] = scale\n                            }\n                        }\n    \n                        resort()\n                    })\n                }\n            \n                return this;\n            }\n            return _scoreboardWeapons()\n    ");
    end, 
    updatePlayer = function(v12, v13, v14)
        -- upvalues: v4 (ref), v7 (ref), v6 (ref)
        local l_realtime_0 = globals.realtime;
        if not v14 and l_realtime_0 < v12.prev_update then
            return;
        else
            local v16 = v4:convert_to_js(v13);
            local v17 = not v7.team_only;
            local v18 = not v7.local_player;
            local l_scale_0 = v7.scale;
            local v20 = v6.enabled_cp:get();
            local v21 = v4.rgb_to_hex(v20);
            local v22 = v20.a / 255;
            v12.methods.updatePlayer(v16, v17, v18, v21, v22, l_scale_0);
            v12.prev_update = l_realtime_0 + 0.1;
            return;
        end;
    end, 
    exec = function(v23)
        return panorama.loadstring(v23, "CSGOHud")();
    end
};
local _ = false;
v4 = {
    _init = function(_)

    end, 
    rgb_to_hex = function(v26)
        return v26:to_hex():sub(1, 6);
    end, 
    contains = function(v27, v28)
        if v27 == nil or v28 == nil then
            return false;
        else
            for v29, v30 in pairs(v27) do
                if v30 == v28 then
                    return v29;
                end;
            end;
            return false;
        end;
    end, 
    convert_to_js = function(_, v32)
        -- upvalues: v3 (ref)
        local v33 = {};
        if v32 == nil then
            return {};
        else
            local _ = {};
            local _ = 1;
            for v36 = 1, #v32 do
                local v37 = {};
                local v38 = v32[v36];
                v37.weapons = {};
                for v39 = 1, #v38.weapons do
                    local v40 = v38.weapons[v39];
                    if v3.methods.weapon_priority[v40] ~= nil then
                        table.insert(v37.weapons, v40);
                    end;
                end;
                v37.active = v38.active;
                v37.index = v38.index;
                table.insert(v33, v37);
            end;
            return v33;
        end;
    end
};
v5 = {
    _array = {}, 
    _create = function(v41, v42)
        if v42 == nil then
            return false;
        elseif v41._array[v42] ~= nil then
            return false;
        else
            v41._array[v42] = {
                active = "no", 
                weapons = {}
            };
            return true;
        end;
    end, 
    add = function(v43, v44, v45)
        -- upvalues: v4 (ref)
        if v45 == nil then
            return v43._array[v44];
        else
            if not v43._array[v44] then
                v43:_create(v44);
            end;
            if not v4.contains(v43._array[v44].weapons, v45) then
                v43._array[v44].weapons[#v43._array[v44].weapons + 1] = v45;
            end;
            return v43._array[v44];
        end;
    end, 
    set = function(v46, v47, v48)
        if v48 == nil then
            return false;
        else
            if not v46._array[v47] then
                v46:_create(v47);
            end;
            v46._array[v47].weapons = v48;
            return v46._array[v47];
        end;
    end, 
    get = function(v49, v50)
        if not v49._array[v50] then
            v49:_create(v50);
        end;
        return v49._array[v50];
    end, 
    active = function(v51, v52, v53)
        if not v51._array[v52] then
            v51:_create(v52);
        end;
        v51:add(v52, v53);
        v51._array[v52].active = v53;
        return v51._array[v52];
    end, 
    remove = function(v54, v55, v56)
        -- upvalues: v4 (ref), l_remove_0 (ref)
        if v56 == nil then
            return v54._array[v55];
        else
            if not v54._array[v55] then
                v54:_create(v55);
            end;
            local v57 = v4.contains(v54._array[v55].weapons, v56);
            if v57 then
                l_remove_0(v54._array[v55].weapons, v57);
            end;
            return v54._array[v55];
        end;
    end, 
    reset = function(v58, v59, _)
        if not v58._array[v59] then
            v58:_create(v59);
        end;
        v58._array[v59] = {
            active = "no", 
            weapons = {}
        };
        return v58._array[v59];
    end
};
local v80 = {
    item_equip = function(v61)
        -- upvalues: v7 (ref), v5 (ref)
        if not v7.enabled then
            return;
        else
            local v62 = entity.get(v61.userid, true);
            if v62 == nil then
                return;
            else
                local v63 = v62:get_index();
                local l_item_0 = v61.item;
                if v61.defindex == 64 then
                    l_item_0 = "revolver";
                end;
                v5:active(v63, l_item_0);
                return;
            end;
        end;
    end, 
    item_remove = function(v65)
        -- upvalues: v7 (ref), v5 (ref)
        if not v7.enabled then
            return;
        else
            local v66 = entity.get(v65.userid, true);
            if v66 == nil then
                return;
            else
                local v67 = v66:get_index();
                local l_item_1 = v65.item;
                if v65.defindex == 64 then
                    l_item_1 = "revolver";
                end;
                v5:remove(v67, l_item_1);
                return;
            end;
        end;
    end, 
    player_death = function(v69)
        -- upvalues: v7 (ref), v5 (ref)
        if not v7.enabled then
            return;
        else
            local v70 = entity.get(v69.userid, true);
            if v70 == nil then
                return;
            else
                local v71 = v70:get_index();
                v5:reset(v71);
                return;
            end;
        end;
    end, 
    item_purchase = function(v72)
        -- upvalues: v7 (ref), v5 (ref)
        if not v7.enabled then
            return;
        else
            local v73 = entity.get(v72.userid, true);
            if v73 == nil then
                return;
            else
                local v74 = v73:get_index();
                local v75 = v72.weapon:gsub("weapon_", "");
                if v75 == "item_kevlar" then
                    v75 = "armor";
                elseif v75 == "item_assaultsuit" then
                    v75 = "armor_helmet";
                end;
                v5:add(v74, v75);
                return;
            end;
        end;
    end, 
    item_pickup = function(v76)
        -- upvalues: v7 (ref), v5 (ref)
        if not v7.enabled then
            return;
        else
            local v77 = entity.get(v76.userid, true);
            if v77 == nil then
                return;
            else
                local v78 = v77:get_index();
                local l_item_2 = v76.item;
                if v76.defindex == 64 then
                    l_item_2 = "revolver";
                end;
                v5:add(v78, l_item_2);
                return;
            end;
        end;
    end
};
local v96 = {
    get = function(v81)
        -- upvalues: v5 (ref)
        if v81 == nil then
            return;
        else
            local v82 = v81:get_index();
            if v81.m_iHealth < 1 then
                return v5:reset(v82);
            else
                local v83 = v81:get_player_weapon();
                if v83 == nil then
                    return v5:reset(v82);
                else
                    local v84 = v81:get_player_weapon(true);
                    local v85 = {};
                    for _, v87 in ipairs(v84) do
                        local v88 = v87:get_weapon_info();
                        local v89 = v88.weapon_name:gsub("weapon_", "");
                        if v88.is_revolver then
                            v89 = "revolver";
                        end;
                        table.insert(v85, v89);
                    end;
                    local v90 = v81:get_resource();
                    local l_m_bHasHelmet_0 = v90.m_bHasHelmet;
                    local v92 = v90.m_iArmor > 0;
                    local l_m_bHasDefuser_0 = v90.m_bHasDefuser;
                    if l_m_bHasHelmet_0 then
                        table.insert(v85, "armor_helmet");
                    end;
                    if v92 and not l_m_bHasHelmet_0 then
                        table.insert(v85, "armor");
                    end;
                    if l_m_bHasDefuser_0 then
                        table.insert(v85, "defuser");
                    end;
                    local v94 = v83:get_weapon_info();
                    local v95 = v94.weapon_name:gsub("weapon_", "");
                    if v94.is_revolver then
                        v95 = "revolver";
                    end;
                    return {
                        index = v82, 
                        weapons = v85, 
                        active = v95
                    };
                end;
            end;
        end;
    end
};
v3:_init();
v4:_init();
local v97 = false;
events.net_update_end:set(function(_)
    -- upvalues: v97 (ref), v7 (ref), v5 (ref), v3 (ref), v96 (ref)
    local l_is_in_game_0 = globals.is_in_game;
    if not v97 and (not v7.enabled or not l_is_in_game_0) then
        v97 = true;
        v5._array = {};
        v3.methods.updatePlayer({}, true);
        return;
    elseif not v7.enabled or not l_is_in_game_0 then
        return;
    else
        v97 = false;
        local v100 = entity.get_players(false, false);
        local v101 = v96.get(v100[globals.tickcount % #v100 + 1]);
        if v101 and v101.index ~= nil then
            v5:set(v101.index, v101.weapons);
            v5:active(v101.index, v101.active);
        end;
        local v102 = {};
        local v103 = 1;
        for v104 = 0, 64 do
            local v105 = v5:get(v104);
            v102[v103] = {
                index = v104, 
                weapons = v105.weapons, 
                active = v105.active
            };
            v103 = v103 + 1;
        end;
        v3:updatePlayer(v102);
        return;
    end;
end);
for v106, v107 in pairs(v80) do
    events[v106]:set(v107);
end;
events.shutdown:set(function()
    -- upvalues: v3 (ref)
    v3.methods.updatePlayer({}, true);
end);