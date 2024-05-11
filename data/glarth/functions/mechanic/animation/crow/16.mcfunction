execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing 34 40 -135 run tp @s ^ ^ ^0.15 facing 34 40 -135
execute if score @s Animation matches 2 facing 33 48 -151 run tp @s ^ ^ ^0.15 facing 33 48 -151

execute positioned 34 40 -135 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 33 48 -151 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
kill @s[scores={Animation=3..}]