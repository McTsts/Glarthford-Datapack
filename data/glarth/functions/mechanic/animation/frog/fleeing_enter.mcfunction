execute store result score @s mXx run data get entity @s Pos[0] 100
execute store result score @s mYx run data get entity @s Pos[1] 100
execute store result score @s mZx run data get entity @s Pos[2] 100

execute store result score @s mX run data get entity @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.9] Pos[0] 100
execute store result score @s mY run data get entity @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.9] Pos[1] 100
execute store result score @s mZ run data get entity @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.9] Pos[2] 100

scoreboard players operation @s mX -= @s mXx
scoreboard players operation @s mY -= @s mYx
scoreboard players operation @s mZ -= @s mZx

scoreboard players add @s mY 150

execute store result entity @s Motion[0] double 0.0035 run scoreboard players get @s mX
execute store result entity @s Motion[1] double 0.0025 run scoreboard players get @s mY
execute store result entity @s Motion[2] double 0.0035 run scoreboard players get @s mZ

kill @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.9]

tag @s add frogEntered

data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:49}}]}
