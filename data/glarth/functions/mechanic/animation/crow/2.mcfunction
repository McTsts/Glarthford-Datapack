execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing 17 36 -194 run tp @s ^ ^ ^0.15 facing 17 36 -194
execute if score @s Animation matches 2 facing 11 39 -190 run tp @s ^ ^ ^0.15 facing 11 39 -190
execute if score @s Animation matches 3 facing 0 45 -180 run tp @s ^ ^ ^0.15 facing 0 45 -180
execute if score @s Animation matches 4 facing -13 56 -172 run tp @s ^ ^ ^0.15 facing -13 56 -172

execute positioned 17 36 -194 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 11 39 -190 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned 0 45 -180 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
execute positioned -13 56 -172 if entity @s[distance=..0.2] run scoreboard players set @s Animation 5
kill @s[scores={Animation=5..}]