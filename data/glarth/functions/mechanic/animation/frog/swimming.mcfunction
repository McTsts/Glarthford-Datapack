scoreboard players add @s frogAnimation 1

execute if score @s frogAnimation matches 2 run function glarth:mechanic/animation/frog/swimming_forward

execute at @s if block ~ 26 ~ water run tp @s ~ 26.3 ~
execute at @s if block ~ 26 ~ seagrass run tp @s ~ 26.3 ~
execute at @s if block ~ 26 ~ #all[waterlogged=true] run tp @s ~ 26.3 ~
execute at @s unless block ~ 26 ~ water unless block ~ 26 ~ #all[waterlogged=true] unless block ~ 26 ~ seagrass run tp @s ~ 25.3 ~

execute if score @s frogAnimation matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":119}}]}
execute if score @s frogAnimation matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":118}}]}
execute if score @s frogAnimation matches 10 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":119}}]}
execute if score @s frogAnimation matches 12 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":120}}]}
execute if score @s frogAnimation matches 25.. run scoreboard players set @s frogAnimation 0

execute as @e[type=cod,distance=..1,sort=nearest,limit=1,tag=frogSwimmingFish] at @s run data modify entity @e[tag=frogSwimming,distance=..1,sort=nearest,limit=1,type=armor_stand] Rotation set from entity @s Rotation
execute as @e[type=cod,distance=..1,sort=nearest,limit=1,tag=frogSwimmingFish] at @s if block ~ ~2 ~ water run data merge entity @s {Motion:[0.0d,0.5d,0.0d],NoGravity:0,Marker:0}