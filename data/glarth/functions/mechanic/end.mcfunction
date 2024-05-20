execute if score quest Stats matches 1.. run tag @a add playedOnce
scoreboard players set game Stats 0
scoreboard objectives setdisplay sidebar
spawnpoint @a 174 24 -112
execute unless score timer end matches 0 run tp @a[gamemode=!creative] 174 24 -112 -90 0
execute if score timer end matches 0 run tp @a[gamemode=!creative] 7 19 -196
gamemode adventure @a[gamemode=spectator]
tag @a remove inFight
xp set @a 0 points
xp set @a 0 levels
weather clear
forceload add -154 -842 -103 -449
execute as @e[type=!player,tag=!area_main,tag=!end_scene,tag=!door] run function glarth:mechanic/kill
schedule function glarth:mechanic/dim_end/unforceload 60s
clear @a[gamemode=adventure]
clear @a[gamemode=spectator]
#data remove block 84 26 -122 RecordItem.tag
recipe take @a *
fill 10 26 -253 23 26 -243 air replace wheat
fill 10 26 -253 23 26 -243 air replace carrots
fill 10 26 -253 23 26 -243 air replace beetroots
forceload remove -194 -194 -191 -188
effect clear @a 
effect give @a saturation infinite 120 true
effect give @a resistance infinite 120 true
function glarth:combat/end

execute as @a unless data entity @s {SleepTimer:0s} run tag @s add sleepP 
kill @a[tag=sleepP]

scoreboard players reset * progress
scoreboard players set progress Dis 0
stopsound @a master time

fill 3 27 -328 3 27 -331 air
forceload remove -50 -645 -47 -641

forceload remove -190 -231 -194 -233

scoreboard players reset * trigger
scoreboard players reset * kill

gamerule showDeathMessages false
gamerule doTileDrops false
kill @e[type=wolf]

schedule function glarth:mechanic/clear_delay 10

schedule clear glarth:combat/loot_attempt


#Progress
scoreboard players set progress Dis 25
function glarth:mechanic/progress/progress

# unforceload baloon
forceload remove 8 24


# lobby map 

advancement revoke @a everything
advancement grant @a only glarth:empty/root
advancement grant @a only glarth:empty/end