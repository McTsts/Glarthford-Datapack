execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -52 39 -254 run tp @s ^ ^ ^0.15 facing -52 39 -254
execute if score @s Animation matches 2 facing -59 47 -263 run tp @s ^ ^ ^0.15 facing -59 47 -263
execute if score @s Animation matches 3 facing -57 53 -278 run tp @s ^ ^ ^0.15 facing -57 53 -278

execute positioned -52 39 -254 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -59 47 -263 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -57 53 -278 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]