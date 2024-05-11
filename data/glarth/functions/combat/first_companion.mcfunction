data modify storage glarth:main temp set value []
execute if entity @s[scores={playerid=1}] run data modify storage glarth:main temp append from storage glarth:main combat.comp[0][0]
execute if entity @s[scores={playerid=2}] run data modify storage glarth:main temp append from storage glarth:main combat.comp[1][0]
execute if entity @s[scores={playerid=3}] run data modify storage glarth:main temp append from storage glarth:main combat.comp[2][0]

execute if data storage glarth:main temp[{id:"wolf"}] at @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud] run summon wolf ~ ~ ~ {NoAI:1b,Sitting:1b,DisabledSlots:4144959,Tags:["tbcCompanionN","tbc"]}
execute if data storage glarth:main temp[{id:"horse"}] at @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud] run summon horse ~ ~ ~ {NoAI:1b,Sitting:1b,DisabledSlots:4144959,Tags:["tbcCompanionN","tbc"]}
execute if data storage glarth:main temp[{id:"strider"}] at @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud] run summon strider ~ ~ ~ {NoAI:1b,Sitting:1b,DisabledSlots:4144959,Tags:["tbcCompanionN","tbc"]}
execute if data storage glarth:main temp[{id:"pig"}] at @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud] run summon pig ~ ~ ~ {NoAI:1b,Sitting:1b,DisabledSlots:4144959,Tags:["tbcCompanionN","tbc"]}
execute if data storage glarth:main temp[{id:"polar_bear"}] at @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud] run summon polar_bear ~ ~ ~ {NoAI:1b,Sitting:1b,DisabledSlots:4144959,Tags:["tbcCompanionN","tbc"]}
execute if data storage glarth:main temp[{id:"cat"}] at @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud] run summon cat ~ ~ ~ {CatType:3,NoAI:1b,Sitting:1b,DisabledSlots:4144959,Tags:["tbcCompanionN","tbc"]}
execute if entity @s[scores={playerid=1}] run tag @e[tag=tbcCompanionN] add tbcCompanion1
execute if entity @s[scores={playerid=2}] run tag @e[tag=tbcCompanionN] add tbcCompanion2
execute if entity @s[scores={playerid=3}] run tag @e[tag=tbcCompanionN] add tbcCompanion3
execute if data storage glarth:main temp[{id:"wolf"}] as @e[tag=tbcCompanionN] run function glarth:combat/entity/wolf
execute if data storage glarth:main temp[{id:"horse"}] as @e[tag=tbcCompanionN] run function glarth:combat/entity/horse
execute if data storage glarth:main temp[{id:"strider"}] as @e[tag=tbcCompanionN] run function glarth:combat/entity/strider
execute if data storage glarth:main temp[{id:"pig"}] as @e[tag=tbcCompanionN] run function glarth:combat/entity/pig
execute if data storage glarth:main temp[{id:"polar_bear"}] as @e[tag=tbcCompanionN] run function glarth:combat/entity/bear
execute if data storage glarth:main temp[{id:"cat"}] as @e[tag=tbcCompanionN] run function glarth:combat/entity/cat