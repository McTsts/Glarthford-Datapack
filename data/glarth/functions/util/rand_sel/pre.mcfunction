scoreboard players reset * rand_sel
scoreboard players set count rand_sel 0
execute as @e[tag=rand_sel] store result score @s rand_sel run scoreboard players add count rand_sel 1
scoreboard players operation r Random = count rand_sel