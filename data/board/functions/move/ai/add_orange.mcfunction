#
execute store result score #orange b_getarray run data get storage minecraft:board_ai boardM.RAM[3]
scoreboard players add #orange b_getarray 1
execute store result storage minecraft:board_ai boardM.RAM[3] int 1 run scoreboard players get #orange b_getarray