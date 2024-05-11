function glarth:combat/entity/extends/ally

scoreboard players set @s tbcHealth 20

execute if score difficulty tbcStats matches 0 run scoreboard players set @s tbcStrength 50
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcStrength 40
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcStrength 35
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcStrength 30
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcStrength 25
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcStrength 20
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcStrength 15

scoreboard players set @s tbcSpeed 4

execute if score difficulty tbcStats matches 0 run scoreboard players set @s tbcDodge 30
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcDodge 26
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcDodge 24
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcDodge 22
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcDodge 20
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcDodge 18
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcDodge 15