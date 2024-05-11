execute store result score flag Temp run data get entity @s Rotation[0]
execute if score flag Temp matches 260.. run scoreboard players set flag Temp 260
execute if score flag Temp matches ..220 run scoreboard players set flag Temp 220
scoreboard players set r Random 30
function glarth:util/randomish
execute if score n Random matches 1..2 run scoreboard players set flagDir Temp 1
execute if score n Random matches 3..4 run scoreboard players set flagDir Temp -1
execute if score n Random matches 5 run scoreboard players set flagDir Temp 0
execute if score n Random matches 6..30 run scoreboard players operation flag Temp += flagDir Temp
execute if score n Random matches 6..30 run scoreboard players operation flag Temp += flagDir Temp
execute if score n Random matches 6..30 run scoreboard players operation @s Animation -= flagDir Temp
execute if score n Random matches 6..30 run scoreboard players operation @s Animation -= flagDir Temp
execute store result entity @s Rotation[0] float 1 run scoreboard players get flag Temp

scoreboard players set r Random 2
function glarth:util/randomish
execute if score @s Animation matches 10 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":130}}]}
execute if score @s Animation matches 20 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":131}}]}
execute if score @s Animation matches 30 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":132}}]}
execute if score @s Animation matches 40 if score n Random matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":131}}]}
execute if score @s Animation matches 50 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":132}}]}
execute if score @s Animation matches 60 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":133}}]}
execute if score @s Animation matches 70 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":134}}]}
execute if score @s Animation matches 80 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":135}}]}
execute if score @s Animation matches 90 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":136}}]}
execute if score @s Animation matches 100 if score n Random matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":135}}]}
execute if score @s Animation matches 110 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":136}}]}
execute if score @s Animation matches 120 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":137}}]}
execute if score @s Animation matches 130 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":138}}]}
execute if score @s Animation matches 140 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":139}}]}
execute if score @s Animation matches 150 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":140}}]}

execute if score @s Animation matches 150.. run scoreboard players set @s Animation 130
execute if score @s Animation matches ..0 run scoreboard players set @s Animation 20

