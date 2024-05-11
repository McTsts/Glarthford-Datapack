execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -40 31 -139 run tp @s ^ ^ ^0.15 facing -40 31 -139
execute if score @s Animation matches 2 facing -45 38 -148 run tp @s ^ ^ ^0.15 facing -45 38 -148
execute if score @s Animation matches 3 facing -47 42 -162 run tp @s ^ ^ ^0.15 facing -47 42 -162
execute if score @s Animation matches 4 facing -57 48 -177 run tp @s ^ ^ ^0.15 facing -57 48 -177

execute positioned -40 31 -139 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -45 38 -148 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -47 42 -162 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
execute positioned -57 48 -177 if entity @s[distance=..0.2] run scoreboard players set @s Animation 5
kill @s[scores={Animation=5..}]