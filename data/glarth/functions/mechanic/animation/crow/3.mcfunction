execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 facing -44 38 -145 run tp @s ^ ^ ^0.15 facing -44 38 -145
execute if score @s Animation matches 2 facing -46 43 -155 run tp @s ^ ^ ^0.15 facing -46 43 -155
execute if score @s Animation matches 3 facing -57 47 -167 run tp @s ^ ^ ^0.15 facing -57 47 -167

execute positioned -44 38 -145 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned -46 43 -155 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned -57 47 -167 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
kill @s[scores={Animation=4..}]