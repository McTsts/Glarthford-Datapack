function glarth:combat/entity/extends/enemy
tag @s add tbcBoss

execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcDodge 5
execute if score difficulty tbcStats matches 4 run scoreboard players add @s tbcDodge 7
execute if score difficulty tbcStats matches 5 run scoreboard players add @s tbcDodge 10

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcEscape 4
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcEscape 5
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcEscape 6
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcEscape 7
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcEscape 8

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcArmor 0
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcArmor 10
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcArmor 20
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcArmor 30
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcArmor 30

function glarth:combat/entity/implements/nerf/2