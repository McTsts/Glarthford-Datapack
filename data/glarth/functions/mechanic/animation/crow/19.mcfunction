execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -73 51 -250 run tp @s ^ ^ ^0.15 facing -73 51 -250
execute if score @s Animation matches 2 facing -59 58 -253 run tp @s ^ ^ ^0.15 facing -59 58 -253
execute if score @s Animation matches 3 facing -36 69 -259 run tp @s ^ ^ ^0.15 facing -36 69 -259

execute positioned -73 51 -250 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -59 58 -253 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -36 69 -259 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]