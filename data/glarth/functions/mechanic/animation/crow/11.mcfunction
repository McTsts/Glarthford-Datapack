execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -37 35 -151 run tp @s ^ ^ ^0.15 facing -37 35 -151
execute if score @s Animation matches 2 facing -47 41 -142 run tp @s ^ ^ ^0.15 facing -47 41 -142
execute if score @s Animation matches 3 facing -64 48 -139 run tp @s ^ ^ ^0.15 facing -64 48 -139

execute positioned -37 35 -151 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -47 41 -142 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -64 48 -139 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]