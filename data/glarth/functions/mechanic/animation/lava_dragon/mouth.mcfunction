scoreboard players add @s Animation 1
scoreboard players operation angleX Temp = @s Animation 
scoreboard players operation angleX Temp *= 10 Const

execute if score @s Animation matches 1..33 run scoreboard players set angle Temp 110
execute if score @s Animation matches 1..33 run scoreboard players operation angle Temp += angleX Temp
execute if score @s Animation matches 34..66 run scoreboard players set angle Temp 770
execute if score @s Animation matches 34..66 run scoreboard players operation angle Temp -= angleX Temp
execute if score @s Animation matches 66.. run scoreboard players set @s Animation 0

execute store result entity @e[tag=lava_dragonQ3,distance=..2,sort=random,limit=1,type=armor_stand] Pose.Head[0] float 0.1 run scoreboard players get angle Temp