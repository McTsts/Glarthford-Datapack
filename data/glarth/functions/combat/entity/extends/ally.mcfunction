scoreboard players set @s tbcSpeed 8
tag @s add tbcAttackable
tag @s add tbc
tag @s add inTBC
data merge entity @s {Invisible:1b,NoGravity:1b,Silent:1b}
scoreboard players set @s tbcArmor 0
execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcHealth 100
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 80
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 60
execute if score difficulty tbcStats matches 1..4 run scoreboard players set @s tbcStrength 30
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcStrength 20
execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcDodge 33
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcDodge 27
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcDodge 20

scoreboard players set @s charType 1