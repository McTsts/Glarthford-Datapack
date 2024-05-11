tag @s add tbc
tag @s add inTBC
tag @s add tbcEnemy
data merge entity @s {Invisible:1b,NoGravity:1b,Silent:1b}

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcEscape 0
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcEscape 1
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcEscape 2
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcEscape 3
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcEscape 4

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcStrength 25
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcStrength 30
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcStrength 35
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcStrength 40
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcStrength 45

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcDodge 0
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcDodge 2
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcDodge 4
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcDodge 6
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcDodge 8

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 80
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 100
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 120
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 160
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 180

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcArmor 0
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcArmor 0
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcArmor 0
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcArmor 5
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcArmor 10

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcSpeed 10
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcSpeed 10

execute if score quest Stats matches 0..1 if score difficulty tbcStats matches 1..1 run function glarth:combat/entity/implements/nerf/4
execute if score quest Stats matches 0..1 if score difficulty tbcStats matches 1..2 run function glarth:combat/entity/implements/nerf/3
execute if score quest Stats matches 0..1 if score difficulty tbcStats matches 1..3 run function glarth:combat/entity/implements/nerf/2
execute if score quest Stats matches 0..1 if score difficulty tbcStats matches 1..4 run function glarth:combat/entity/implements/nerf/1

execute if score quest Stats matches 9 if score difficulty tbcStats matches 1..1 run function glarth:combat/entity/implements/nerf/3
execute if score quest Stats matches 9 if score difficulty tbcStats matches 1..2 run function glarth:combat/entity/implements/nerf/2
execute if score quest Stats matches 9 if score difficulty tbcStats matches 1..3 run function glarth:combat/entity/implements/nerf/1

execute if score quest Stats matches 2 if score difficulty tbcStats matches 1..1 run function glarth:combat/entity/implements/nerf/2
execute if score quest Stats matches 2 if score difficulty tbcStats matches 1..2 run function glarth:combat/entity/implements/nerf/1

execute if score quest Stats matches 3 if score difficulty tbcStats matches 1..1 run function glarth:combat/entity/implements/nerf/1
