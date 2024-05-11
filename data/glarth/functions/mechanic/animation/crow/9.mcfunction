execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -36 32 -154 run tp @s ^ ^ ^0.15 facing -36 32 -154
execute if score @s Animation matches 2 facing -22 39 -156 run tp @s ^ ^ ^0.15 facing -22 39 -156
execute if score @s Animation matches 3 facing -13 43 -141 run tp @s ^ ^ ^0.15 facing -13 43 -141
execute if score @s Animation matches 4 facing 10 53 -143 run tp @s ^ ^ ^0.15 facing 10 53 -143

execute positioned -36 32 -154 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -22 39 -156 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -13 43 -141 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
execute positioned 10 53 -143 if entity @s[distance=..0.2] run scoreboard players set @s Animation 5
kill @s[scores={Animation=5..}]