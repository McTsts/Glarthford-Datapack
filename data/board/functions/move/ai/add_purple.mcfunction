#
execute store result score #purple b_getarray run data get storage minecraft:board_ai boardM.RAM[2]
scoreboard players add #purple b_getarray 1
execute store result storage minecraft:board_ai boardM.RAM[2] int 1 run scoreboard players get #purple b_getarray