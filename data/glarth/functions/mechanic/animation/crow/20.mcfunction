execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing 2 42 -191 run tp @s ^ ^ ^0.15 facing 2 42 -191
execute if score @s Animation matches 2 facing 11 47 -202 run tp @s ^ ^ ^0.15 facing 11 47 -202
execute if score @s Animation matches 3 facing 25 58 -206 run tp @s ^ ^ ^0.15 facing 25 58 -206

execute positioned 2 42 -191 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 11 47 -202 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned 25 58 -206 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]