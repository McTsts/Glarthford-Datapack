tp @s ~-1 ~ ~
execute store result score @s winterX run data get entity @s Pos[0]
execute if score @s winterX < min winterX run function glarth:mechanic/seasons/end
execute store result entity @s Pos[2] double 1 run scoreboard players get max winterZ
scoreboard players set mode winter 0