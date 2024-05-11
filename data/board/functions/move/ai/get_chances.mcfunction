##BLUE,GREEN,PURPLE,ORANGE
execute store result score blue b_getarray run data get storage board_ai boardM.RAM[0]
execute store result score green b_getarray run data get storage board_ai boardM.RAM[1]
execute store result score purple b_getarray run data get storage board_ai boardM.RAM[2]
execute store result score orange b_getarray run data get storage board_ai boardM.RAM[3]

execute if score purple b_getarray matches 1.. run function board:move/ai/summon_purple
execute if score blue b_getarray matches 1.. run function board:move/ai/summon_blue
execute if score green b_getarray matches 1.. run function board:move/ai/summon_green
execute if score orange b_getarray matches 1.. run function board:move/ai/summon_orange
tag @e[tag=RAM,limit=1,sort=random,type=minecraft:area_effect_cloud] add select
kill @e[tag=RAM,tag=!select,type=minecraft:area_effect_cloud]
execute if entity @e[tag=select,tag=green,type=minecraft:area_effect_cloud] run tag @e[tag=new,tag=b_learn,type=minecraft:armor_stand] add green
execute if entity @e[tag=select,tag=blue,type=minecraft:area_effect_cloud] run tag @e[tag=new,tag=b_learn,type=minecraft:armor_stand] add blue
execute if entity @e[tag=select,tag=purple,type=minecraft:area_effect_cloud] run tag @e[tag=new,tag=b_learn,type=minecraft:armor_stand] add purple
execute if entity @e[tag=select,tag=orange,type=minecraft:area_effect_cloud] run tag @e[tag=new,tag=b_learn,type=minecraft:armor_stand] add orange

tag @e[tag=b_learn] remove new