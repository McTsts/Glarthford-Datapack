execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcSpeed 4
tag @s add tbc
tag @s add inTBC
tag @s add tbcCompanion
data merge entity @s {Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b}