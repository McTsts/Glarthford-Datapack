execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing 21 31 -175 run tp @s ^ ^ ^0.15 facing 21 31 -175
execute if score @s Animation matches 2 facing 14 37 -173 run tp @s ^ ^ ^0.15 facing 14 37 -173
execute if score @s Animation matches 3 facing -2 45 -164 run tp @s ^ ^ ^0.15 facing -2 45 -164

execute positioned 21 31 -175 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 14 37 -173 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -2 45 -164 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]