execute if entity @s[tag=!crowProx] unless score @s crow matches 1.. run scoreboard players set @s crow 20
execute if entity @s[tag=crowProx] unless score @s Animation matches 1.. run function glarth:mechanic/animation/crow/fly
execute if score @s Animation matches 1 if entity @s[tag=crow_scarecrow] run scoreboard players set @s Animation 4
execute if score @s Animation matches 1 facing 5 27 -248 run tp @s ^ ^ ^0.15 facing 5 27 -248
execute if score @s Animation matches 2 facing 9 29 -248 run tp @s ^ ^ ^0.15 facing 9 29 -248
execute if score @s Animation matches 3 facing 15 31 -249 run tp @s ^ ^ ^0.15 facing 15 31 -249
execute if score @s Animation matches 4 facing 19 35 -253 run tp @s ^ ^ ^0.15 facing 19 35 -253
execute if score @s Animation matches 5 facing 25 41 -262 run tp @s ^ ^ ^0.15 facing 25 41 -262
execute if score @s Animation matches 6 facing 30 41 -283 run tp @s ^ ^ ^0.15 facing 30 41 -283

execute positioned 5 27 -248 if entity @s[distance=..0.2] run scoreboard players set @s Animation 2
execute positioned 9 29 -248 if entity @s[distance=..0.2] run scoreboard players set @s Animation 3
execute positioned 15 31 -249 if entity @s[distance=..0.2] run scoreboard players set @s Animation 4
execute positioned 19 35 -253 if entity @s[distance=..0.2] run scoreboard players set @s Animation 5
execute positioned 25 41 -262 if entity @s[distance=..0.2] run scoreboard players set @s Animation 6
execute positioned 30 41 -283 if entity @s[distance=..0.2] run scoreboard players set @s Animation 7
kill @s[scores={Animation=7..}]