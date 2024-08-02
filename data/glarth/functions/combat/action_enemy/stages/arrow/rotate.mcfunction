execute store result score rot Temp run data get entity @s Rotation[0]
scoreboard players remove rot Temp 90
execute if score rot Temp matches ..-180 run scoreboard players add rot Temp 360
execute store result entity @s Rotation[0] float 1 run scoreboard players get rot Temp