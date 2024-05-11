execute store result score #green b_getarray run data get storage minecraft:board_ai boardM.RAM[1]
scoreboard players add #green b_getarray 1
execute store result storage minecraft:board_ai boardM.RAM[1] int 1 run scoreboard players get #green b_getarray