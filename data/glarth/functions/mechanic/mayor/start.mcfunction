execute at @e[tag=mayor,type=armor_stand,tag=!b] run function glarth:dialogue/mayor/lines/board2
execute at @e[tag=mayor,type=armor_stand,tag=b] run function glarth:dialogue/mayor/lines/board3
tag @e[tag=mayor,type=armor_stand] add b
execute as @e[tag=mayor,type=minecraft:armor_stand] at @s run tp @s ~ ~0.1 ~ -30 ~
scoreboard players set mayorGame Stats 1

