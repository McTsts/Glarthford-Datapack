execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -14 31 -177 run tp @s ^ ^ ^0.15 facing -14 31 -177
execute if score @s Animation matches 2 facing -19 36 -182 run tp @s ^ ^ ^0.15 facing -19 36 -182
execute if score @s Animation matches 3 facing -32 43 -186 run tp @s ^ ^ ^0.15 facing -32 43 -186

execute positioned -14 31 -177 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -19 36 -182 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -32 43 -186 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]