execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing 9 34 -239 run tp @s ^ ^ ^0.15 facing 9 34 -239
execute if score @s Animation matches 2 facing 3 39 -252 run tp @s ^ ^ ^0.15 facing 3 39 -252
execute if score @s Animation matches 3 facing -13 45 -259 run tp @s ^ ^ ^0.15 facing -13 45 -259

execute positioned 9 34 -239 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 3 39 -252 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -13 45 -259 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]