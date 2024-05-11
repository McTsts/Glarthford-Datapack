# Adjust for AS Pivot
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcAdjUndo"],Rotation:[90.0f,0.0f]}
scoreboard players set asAngle tbcAdjLoc -90
scoreboard players operation asAngle tbcAdjLoc += curAngle tbcAdjLoc
execute store result entity @e[type=area_effect_cloud,tag=tbcAdjUndo,limit=1] Rotation[1] float 1 run scoreboard players get asAngle tbcAdjLoc
execute as @e[type=area_effect_cloud,tag=tbcAdjUndo,limit=1] at @s run tp @s ^ ^ ^-0.1
execute as @e[type=area_effect_cloud,tag=tbcAdjUndo,limit=1] at @s run tp @s ~ ~1.5 ~