execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -43 44 -140 run tp @s ^ ^ ^0.15 facing -43 44 -140
execute if score @s Animation matches 2 facing -28 45 -135 run tp @s ^ ^ ^0.15 facing -28 45 -135
execute if score @s Animation matches 3 facing -18 50 -122 run tp @s ^ ^ ^0.15 facing -18 50 -122

execute positioned -43 44 -140 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -28 45 -135 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -18 50 -122 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]