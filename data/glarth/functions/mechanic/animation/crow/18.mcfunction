execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing 66 37 -252 run tp @s ^ ^ ^0.15 facing 66 37 -252
execute if score @s Animation matches 2 facing 53 42 -256 run tp @s ^ ^ ^0.15 facing 53 42 -256
execute if score @s Animation matches 3 facing 38 51 -264 run tp @s ^ ^ ^0.15 facing 38 51 -264

execute positioned 66 37 -252 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 53 42 -256 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned 38 51 -264 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]