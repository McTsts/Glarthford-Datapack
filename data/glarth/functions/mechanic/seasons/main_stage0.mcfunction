summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterSquareBorder"],Rotation:[180.0f,0.0f]}
tp @s ^ ^ ^1
execute at @s positioned ~ 0 ~ if entity @e[type=area_effect_cloud,tag=winterSquare,distance=..0.5] run tp @s ~ ~ ~ ~-90 ~
execute at @s positioned ~ 0 ~ if entity @e[type=area_effect_cloud,tag=winterSquareBorder,distance=..0.5] run function glarth:mechanic/seasons/shape