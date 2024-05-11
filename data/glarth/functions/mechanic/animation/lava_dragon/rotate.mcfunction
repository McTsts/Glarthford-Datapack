execute if entity @s[tag=ldAngle] store result score angle Temp run data get entity @s Pose.Head[0] 10
execute if entity @s[tag=!ldAngle] run scoreboard players operation angle Temp = @s lavaDragonAngle
execute store result score angleX Temp run data get entity @s Rotation[1] 10
execute if score angleX Temp matches ..0 run scoreboard players add angleX Temp 3600
scoreboard players operation angle Temp += angleX Temp
execute store result entity @s Pose.Head[0] float 0.1 run scoreboard players get angle Temp
