execute if score @s Animation matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:51}}]}
execute if score @s Animation matches 10 run data merge entity @s {Motion:[0.0,0.5,0.0],NoGravity:0,Marker:0}
execute if score @s Animation matches 15 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:50}}]}
execute if score @s Animation matches 130.. run scoreboard players set @s Animation 0