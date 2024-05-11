execute store result score @s admapX run data get entity @s Pos[0]
execute store result score @s admapY run data get entity @s Pos[2]
scoreboard players add @s admapX 121
scoreboard players add @s admapY 338
scoreboard players operation @s admapX /= 2 Const
scoreboard players operation @s admapY /= -2 Const
scoreboard players add @s admapY 128
execute if score @s admapX matches ..0 run scoreboard players set @s admapX 1
execute if score @s admapY matches ..0 run scoreboard players set @s admapY 1
execute if score @s admapX matches 128.. run scoreboard players set @s admapX 128
execute if score @s admapY matches 128.. run scoreboard players set @s admapY 128