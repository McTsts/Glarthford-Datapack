execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -18 37 -129 run tp @s ^ ^ ^0.15 facing -18 37 -129
execute if score @s Animation matches 2 facing -13 39 -135 run tp @s ^ ^ ^0.15 facing -13 39 -135
execute if score @s Animation matches 3 facing 5 46 -137 run tp @s ^ ^ ^0.15 facing 5 46 -137
execute if score @s Animation matches 4 facing 16 51 -124 run tp @s ^ ^ ^0.15 facing 16 51 -124

execute positioned -18 37 -129 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -13 39 -135 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned 5 46 -137 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
execute positioned 16 51 -124 if entity @s[distance=..0.2] run scoreboard players set @s Animation 5
kill @s[scores={Animation=5..}]