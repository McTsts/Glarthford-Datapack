# Stop Credits
execute as @a at @s if entity @e[tag=creditsPov,distance=..0.01] run tp @s 167.5 24.0 -116.0 90 0
execute as @a at @s if entity @e[tag=creditsPov,distance=..0.01] run gamemode adventure @s
kill @e[tag=creditsText2]
kill @e[tag=creditsText3]
kill @e[tag=creditsText4]

function glarth:mechanic/q_lobby_to_game

scoreboard players set forceGary Stats 0
execute if score quest Stats matches 10 run scoreboard players set forceGary Stats 1
execute if score quest Stats matches 10 run scoreboard players set quest Stats 4

gamemode spectator @a[tag=lSpec]
scoreboard players set @a[gamemode=adventure] deathT 101

scoreboard players set combat Stats 0
scoreboard players set count Temp 0
execute as @a[gamemode=adventure] run scoreboard players add count Temp 1
execute if score count Temp matches 4.. run scoreboard players set combat Stats 1

tp @a[gamemode=adventure] 7 19 -196
setblock 7 19 -196 water[level=7]

# this fixes the fountain before anything else happens
clone 5 21 -204 1 18 -208 5 26 -198

# seasons
function glarth:mechanic/setup/seasons

scoreboard players set type Stats 1

schedule clear glarth:mechanic/lobby/music_sel/reset