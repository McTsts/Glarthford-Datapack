kill @e[type=area_effect_cloud,tag=winterCorner]

execute as @e[type=area_effect_cloud,tag=winterSquareBorder] at @s run tp @s ~0.5 ~ ~0.5

scoreboard players set stage winter 2


execute as @e[type=area_effect_cloud,tag=winterSquareBorder] store result score @s winterX run data get entity @s Pos[0]
execute as @e[type=area_effect_cloud,tag=winterSquareBorder] store result score @s winterZ run data get entity @s Pos[2]
execute as @e[type=area_effect_cloud,tag=winterSquareBorder] if score @s winterZ = min winterZ run tag @s add winterSquareBorderEnd
execute as @e[type=area_effect_cloud,tag=winterSquareBorder] if score @s winterX = max winterX if score @s winterZ = max winterZ run tag @s add winterFloodStart
scoreboard players set mode winter 0
tp 0-0-0-0-d0ce @e[type=area_effect_cloud,tag=winterFloodStart,limit=1]