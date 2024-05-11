execute if score mode winter matches 1 run function glarth:mechanic/seasons/one
execute if score mode winter matches 0 if entity @e[type=area_effect_cloud,tag=winterBorder,distance=..0.5] run scoreboard players set mode winter 2
execute if score mode winter matches 1 if entity @e[type=area_effect_cloud,tag=winterBorder,distance=..0.5] run scoreboard players set mode winter 0
execute if score mode winter matches 2 run scoreboard players set mode winter 1
execute if score mode winter matches 1 run function glarth:mechanic/seasons/one
tp @s ~ ~ ~-1
execute at @s if entity @e[type=area_effect_cloud,tag=winterSquareBorderEnd,distance=..0.5] run function glarth:mechanic/seasons/flood_next
