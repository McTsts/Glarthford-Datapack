## Events
# Annoying Kid Moves
execute if score time Dis matches 1600.. if entity @e[type=area_effect_cloud,tag=events,tag=!evAkidMoves] run function glarth:events/event/moves/akid
execute if score time Dis matches ..1559 if entity @e[type=area_effect_cloud,tag=events,tag=evAkidMoves] run function glarth:events/event/moves/akid_undo
# Mayor Dies
execute if score time Dis matches 1600.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMayorDies] run function glarth:events/event/dies/mayor
execute if score time Dis matches ..1559 if entity @e[type=area_effect_cloud,tag=events,tag=evMayorDies] run function glarth:events/event/dies/mayor_undo

## Character Deaths
# Deaths
execute if score time Dis matches 1100.. run tag @e[tag=adventurer,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1400.. run tag @e[tag=hermit,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1500.. run tag @e[tag=diver,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1500.. run tag @e[tag=marhjo,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1700.. run tag @e[tag=thief,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1700.. run tag @e[tag=brewer,tag=char,type=armor_stand] add die2

execute if score time Dis matches 1800.. as @e[tag=baker,tag=char,type=armor_stand] run data merge block 14 26 -217 {Lock:"",CustomName:''}
execute if score time Dis matches 1800.. as @e[tag=baker,tag=char,type=armor_stand] run data merge block 17 30 -215 {Lock:"",CustomName:''}
execute if score time Dis matches 1800.. run tag @e[tag=baker,tag=char,type=armor_stand] add die2

execute if score time Dis matches 1800.. as @e[tag=guard,tag=char,type=armor_stand] run data merge block 21 26 -186 {Lock:"",CustomName:''}
execute if score time Dis matches 1800.. run tag @e[tag=guard,tag=char,type=armor_stand] add die2

execute if score time Dis matches 1800.. run tag @e[tag=mourner,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1900.. run tag @e[tag=dockmaster,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1900.. run tag @e[tag=mctsts,tag=char,type=armor_stand] add die2
execute if score time Dis matches 1900.. run tag @e[tag=fisher,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2000.. run tag @e[tag=ttextt,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2000.. run tag @e[tag=worker,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2000.. run tag @e[tag=archaeologist,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2100.. run tag @e[tag=mrk,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2100.. run tag @e[tag=cave_man,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2100.. run tag @e[tag=witch,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2100.. run tag @e[tag=graveyard,tag=char,type=armor_stand] add die2

execute if score time Dis matches 2100.. as @e[tag=lumberjack,tag=char,type=armor_stand] run data merge block 77 28 -257 {Lock:"",CustomName:''}
execute if score time Dis matches 2100.. run tag @e[tag=lumberjack,tag=char,type=armor_stand] add die2

execute if score time Dis matches 2200.. run tag @e[tag=merchant1,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2200.. run tag @e[tag=blacksmith,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2200.. run tag @e[tag=adri,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2200.. run tag @e[tag=uncle,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2200.. run tag @e[tag=evoker,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2200.. run tag @e[tag=bum,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2300.. run tag @e[tag=digger,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2300.. run tag @e[tag=merchant2,tag=char,type=armor_stand] add die2

execute if score time Dis matches 2300.. as @e[tag=butcher,tag=char,type=armor_stand] run data merge block -2 30 -214 {Lock:"",CustomName:''}
execute if score time Dis matches 2300.. run tag @e[tag=butcher,tag=char,type=armor_stand] add die2

execute if score time Dis matches 2300.. as @e[tag=farmer,tag=char,type=armor_stand] run setblock 6 25 -267 minecraft:redstone_torch
execute if score time Dis matches 2300.. run tag @e[tag=farmer,tag=char,type=armor_stand] add die2

execute if score time Dis matches 2300.. run tag @e[tag=assassin,tag=char,type=armor_stand] add die2
execute if score time Dis matches 2300.. run tag @e[tag=gibbs,tag=char,type=armor_stand] add die2
# Resurrection
execute if score time Dis matches ..1059 as @e[tag=adventurer,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1359 as @e[tag=hermit,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1459 as @e[tag=diver,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1459 as @e[tag=marhjo,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1659 as @e[tag=thief,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1659 as @e[tag=brewer,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..1759 as @e[tag=baker,tag=deadChar,type=armor_stand] run data merge block 14 26 -217 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"baker"}]}'} 
execute if score time Dis matches ..1759 as @e[tag=baker,tag=deadChar,type=armor_stand] run data merge block 17 30 -215 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"baker"}]}'} 
execute if score time Dis matches ..1759 as @e[tag=baker,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..1759 as @e[tag=guard,tag=deadChar,type=armor_stand] run data merge block 21 26 -186 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"guard"}]}'}
execute if score time Dis matches ..1759 as @e[tag=guard,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..1759 as @e[tag=mourner,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1859 as @e[tag=dockmaster,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1859 as @e[tag=mctsts,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1859 as @e[tag=fisher,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1959 as @e[tag=ttextt,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1959 as @e[tag=worker,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..1959 as @e[tag=archaeologist,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2059 as @e[tag=mrk,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2059 as @e[tag=cave_man,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2059 as @e[tag=witch,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2059 as @e[tag=graveyard,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..2059 as @e[tag=lumberjack,tag=deadChar,type=armor_stand] run data merge block 77 28 -257 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"lumberjack"}]}'}
execute if score time Dis matches ..2059 as @e[tag=lumberjack,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..2159 as @e[tag=merchant1,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2159 as @e[tag=blacksmith,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2159 as @e[tag=adri,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2159 as @e[tag=uncle,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2159 as @e[tag=evoker,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2159 as @e[tag=bum,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2259 as @e[tag=digger,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2259 as @e[tag=merchant2,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..2259 as @e[tag=butcher,tag=deadChar,type=armor_stand] run data merge block -2 30 -214 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"butcher"}]}'}
execute if score time Dis matches ..2259 as @e[tag=butcher,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..2259 as @e[tag=farmer,tag=deadChar,type=armor_stand] run setblock 6 25 -267 minecraft:air
execute if score time Dis matches ..2259 as @e[tag=farmer,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

execute if score time Dis matches ..2259 as @e[tag=assassin,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect
execute if score time Dis matches ..2259 as @e[tag=gibbs,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

## Ender Effects
# Ender Guards
execute if score time Dis matches 0900.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuardA] run function glarth:events/event/ender_guard/a
execute if score time Dis matches ..0859 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuardA] run function glarth:events/event/ender_guard/a_undo
execute if score time Dis matches 1100.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuard1] run function glarth:events/event/ender_guard/1
execute if score time Dis matches ..1059 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuard1] run function glarth:events/event/ender_guard/1_undo
execute if score time Dis matches 1300.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuardB] run function glarth:events/event/ender_guard/b
execute if score time Dis matches ..1259 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuardB] run function glarth:events/event/ender_guard/b_undo
execute if score time Dis matches 1500.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuard2] run function glarth:events/event/ender_guard/2
execute if score time Dis matches ..1459 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuard2] run function glarth:events/event/ender_guard/2_undo
execute if score time Dis matches 1700.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuard3] run function glarth:events/event/ender_guard/3
execute if score time Dis matches ..1659 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuard3] run function glarth:events/event/ender_guard/3_undo
execute if score time Dis matches 1900.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuard4] run function glarth:events/event/ender_guard/4
execute if score time Dis matches ..1859 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuard4] run function glarth:events/event/ender_guard/4_undo
execute if score time Dis matches 2100.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderGuard5] run function glarth:events/event/ender_guard/5
execute if score time Dis matches ..2059 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderGuard5] run function glarth:events/event/ender_guard/5_undo

# Ender Patches
execute if score time Dis matches 0800.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderPatch1] run function glarth:events/event/ender_patch/1
execute if score time Dis matches ..0759 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderPatch1] run function glarth:events/event/ender_patch/1_undo
execute if score time Dis matches 1000.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderPatch2] run function glarth:events/event/ender_patch/2
execute if score time Dis matches ..0959 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderPatch2] run function glarth:events/event/ender_patch/2_undo
execute if score time Dis matches 1200.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnderPatch3] run function glarth:events/event/ender_patch/3
execute if score time Dis matches ..1159 if entity @e[type=area_effect_cloud,tag=events,tag=evEnderPatch3] run function glarth:events/event/ender_patch/3_undo

# Ender Particle Ambience
execute if score time Dis matches 1800.. run particle portal 7 27 -196 100 5 100 0 2000
execute if score time Dis matches 1900.. run particle portal 7 27 -196 100 5 100 0 2000
execute if score time Dis matches 2000.. run particle portal 7 27 -196 100 5 100 0 2000
execute if score time Dis matches 2100.. run particle portal 7 27 -196 100 5 100 0 2000
execute if score time Dis matches 2200.. run particle portal 7 27 -196 100 5 100 0 2000
execute if score time Dis matches 2300.. run particle portal 7 27 -196 100 5 100 0 2000
