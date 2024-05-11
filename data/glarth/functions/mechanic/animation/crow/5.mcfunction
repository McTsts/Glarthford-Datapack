execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -46 33 -137 run tp @s ^ ^ ^0.15 facing -46 33 -137
execute if score @s Animation matches 2 facing -38 37 -140 run tp @s ^ ^ ^0.15 facing -38 37 -140
execute if score @s Animation matches 3 facing -29 41 -133 run tp @s ^ ^ ^0.15 facing -29 41 -133
execute if score @s Animation matches 4 facing -24 47 -123 run tp @s ^ ^ ^0.15 facing -24 47 -123

execute positioned -46 33 -137 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -38 37 -140 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -29 41 -133 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
execute positioned -24 47 -123 if entity @s[distance=..0.2] run scoreboard players set @s Animation 5
kill @s[scores={Animation=5..}]