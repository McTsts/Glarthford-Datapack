particle minecraft:composter ~ ~ ~ 0 0 0 0 1
scoreboard players remove rec Temp 1
execute if entity @e[tag=tbcTempMarker,distance=..0.5] run scoreboard players set rec Temp 0
execute if entity @e[tag=tbcTempMarker,distance=..0.5] run tag @s add tbcReady
execute if score rec Temp matches 1.. facing entity @e[tag=tbcTempMarker,limit=1] feet positioned ^ ^ ^0.05 run function glarth:combat/action_enemy/helper/laser