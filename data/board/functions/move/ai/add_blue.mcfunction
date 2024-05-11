#
execute store result score #blue b_getarray run data get storage minecraft:board_ai boardM.RAM[0]
scoreboard players add #blue b_getarray 1
execute store result storage minecraft:board_ai boardM.RAM[0] int 1 run scoreboard players get #blue b_getarray