execute store result score rotation Temp run data get entity @e[tag=charQEBee,limit=1,sort=nearest,type=armor_stand] Pose.Head[1]
scoreboard players add rotation Temp 4
execute if score rotation Temp matches 180.. run scoreboard players remove rotation Temp 360
execute store result entity @e[tag=charQEBee,limit=1,sort=nearest,type=armor_stand] Pose.Head[1] float 1 run scoreboard players get rotation Temp