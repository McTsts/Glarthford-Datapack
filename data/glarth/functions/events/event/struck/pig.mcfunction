data modify storage glarth:main pig.Health set from entity @e[type=pig,limit=1] Health
data modify storage glarth:main pig.Saddle set from entity @e[type=pig,limit=1] Saddle
execute store result storage glarth:main pig.tbcCompID int 1 run scoreboard players get @e[type=pig,limit=1] tbcCompID

execute as @e[type=pig] at @s run function glarth:mechanic/action/pigman
execute at @e[tag=pigman2,type=armor_stand] unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt ~ ~ ~ 
tag @e[tag=events,type=area_effect_cloud] add evPigStruck