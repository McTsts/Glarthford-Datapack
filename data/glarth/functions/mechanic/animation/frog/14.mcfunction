execute if score @s Animation matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":49}}]}
execute if score @s Animation matches 10 run data merge entity @s {Motion:[0.0d,0.5d,0.0d],NoGravity:0,Marker:0}
execute if score @s Animation matches 15 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":48}}]}
execute if score @s Animation matches 140.. run scoreboard players set @s Animation 0