function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/piglin

# Attacks
scoreboard players set @s attack_014 1
scoreboard players set @s attack_210 1

# Wither
scoreboard players set @s attack_202 8

scoreboard players operation @s tbcDodge /= 2 Const
tag @s add death_031
tag @s add stage_061
tag @s add tbcPiglin

execute if score difficulty tbcStats matches 0 run scoreboard players set @s tbcHealth 200
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 300
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 350
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 400
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 450
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 550
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 600

execute if score difficulty tbcStats matches 0 run scoreboard players set @s tbcSpeed 4
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcSpeed 10
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcSpeed 12

