execute as @e[tag=millX] run data merge entity @s {NoGravity:1,Marker:1}
tp @e[tag=mill_log] 13 34.075 -234
tag @e[tag=millX] add mill
tag @e[tag=millX] remove millX
tag @e[tag=events,type=area_effect_cloud] remove evMillDestroyed

# Resurrect Miller
execute as @e[tag=miller,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect