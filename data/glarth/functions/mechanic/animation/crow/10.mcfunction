execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -30 34 -190 run tp @s ^ ^ ^0.15 facing -30 34 -190
execute if score @s Animation matches 2 facing -38 37 -210 run tp @s ^ ^ ^0.15 facing -38 37 -210
execute if score @s Animation matches 3 facing -24 42 -233 run tp @s ^ ^ ^0.15 facing -24 42 -233

execute positioned -30 34 -190 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -38 37 -210 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -24 42 -233 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]