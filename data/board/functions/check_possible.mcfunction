### Added by Ts

kill @e[type=armor_stand,tag=boardDis]

## First Row
execute if score @e[tag=b_selected,limit=1] b_id matches 1 as @e[scores={b_id=4},limit=1] at @s if score @s b_statse matches 0 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 1 as @e[scores={b_id=5},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}

execute if score @e[tag=b_selected,limit=1] b_id matches 2 as @e[scores={b_id=5},limit=1] at @s if score @s b_statse matches 0 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 2 as @e[scores={b_id=4},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 2 as @e[scores={b_id=6},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}

execute if score @e[tag=b_selected,limit=1] b_id matches 3 as @e[scores={b_id=6},limit=1] at @s if score @s b_statse matches 0 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 3 as @e[scores={b_id=5},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}

## Second Row
execute if score @e[tag=b_selected,limit=1] b_id matches 4 as @e[scores={b_id=7},limit=1] at @s if score @s b_statse matches 0 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 4 as @e[scores={b_id=8},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}

execute if score @e[tag=b_selected,limit=1] b_id matches 5 as @e[scores={b_id=8},limit=1] at @s if score @s b_statse matches 0 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 5 as @e[scores={b_id=7},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 5 as @e[scores={b_id=9},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}

execute if score @e[tag=b_selected,limit=1] b_id matches 6 as @e[scores={b_id=9},limit=1] at @s if score @s b_statse matches 0 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}
execute if score @e[tag=b_selected,limit=1] b_id matches 6 as @e[scores={b_id=8},limit=1] at @s if score @s b_statse matches 2 run summon minecraft:armor_stand ~ ~ ~ {Team:gray,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:39}}],Glowing:1,Marker:1,NoGravity:1,Invisible:1,Tags:["boardDis"]}