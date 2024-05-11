execute if score rotation winter matches 1 run summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterBorder"],Rotation:[180.0f,0.0f]}
execute if score rotation winter matches 3 run summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterBorder"],Rotation:[180.0f,0.0f]}
tp @s ^ ^ ^1
execute at @s positioned ~ 0 ~ if entity @e[type=area_effect_cloud,tag=winterBorder,distance=..0.5] run function glarth:mechanic/seasons/flood
execute at @s positioned ~ 0 ~ if entity @e[type=area_effect_cloud,tag=winterLeft,distance=..0.5] run function glarth:mechanic/seasons/main_stage1_a
execute at @s positioned ~ 0 ~ if entity @e[type=area_effect_cloud,tag=winterRight,distance=..0.5] run function glarth:mechanic/seasons/main_stage1_b
