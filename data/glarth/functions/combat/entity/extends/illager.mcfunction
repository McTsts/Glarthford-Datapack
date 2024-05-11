function glarth:combat/entity/extends/enemy

scoreboard players set @s attack_092 2
scoreboard players set @s attack_093 2

execute if score difficulty tbcStats matches 0 run scoreboard players set @s tbcDodge 0
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcDodge 7
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcDodge 9
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcDodge 11
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcDodge 13
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcDodge 15
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcDodge 18

execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcSpeed 12
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcSpeed 14
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcSpeed 16
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcSpeed 18

tag @s add tbcIllager