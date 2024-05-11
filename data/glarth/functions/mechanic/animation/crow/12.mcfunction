execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -60 36 -178 run tp @s ^ ^ ^0.15 facing -60 36 -178
execute if score @s Animation matches 2 facing -68 46 -193 run tp @s ^ ^ ^0.15 facing -68 46 -193

execute positioned -60 36 -178 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -68 46 -193 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
kill @s[scores={Animation=3..}]