execute at @e[tag=pigman2] run summon pig ~ ~ ~
kill @e[tag=pigman2]
tag @e[tag=events,type=area_effect_cloud] remove evPigStruck

data modify entity @e[type=pig,limit=1] Health set from storage glarth:main pig.Health
data modify entity @e[type=pig,limit=1] Saddle set from storage glarth:main pig.Saddle
execute if data storage glarth:main pig.tbcCompID store result score @e[type=pig,limit=1] tbcCompID run data get storage glarth:main pig.tbcCompID
scoreboard players operation @e[type=pig,limit=1] netherID = id edgeI