# Absorption Stuff(?)
execute if score @s tbcHealthX matches ..-1 if score @s tbcHealthOnly matches 1.. run scoreboard players set @s tbcAbsorptionX 0
# HB Fix
effect give @s minecraft:health_boost 1 3 true
# Instant Damaging
execute if score @s tbcHealth matches ..01 run attribute @s minecraft:generic.max_health base set 01
execute if score @s tbcHealth matches 02 run attribute @s minecraft:generic.max_health base set 02
execute if score @s tbcHealth matches 03 run attribute @s minecraft:generic.max_health base set 03
execute if score @s tbcHealth matches 04 run attribute @s minecraft:generic.max_health base set 04
execute if score @s tbcHealth matches 05 run attribute @s minecraft:generic.max_health base set 05
execute if score @s tbcHealth matches 06 run attribute @s minecraft:generic.max_health base set 06
execute if score @s tbcHealth matches 07 run attribute @s minecraft:generic.max_health base set 07
execute if score @s tbcHealth matches 08 run attribute @s minecraft:generic.max_health base set 08
execute if score @s tbcHealth matches 09 run attribute @s minecraft:generic.max_health base set 09
execute if score @s tbcHealth matches 10 run attribute @s minecraft:generic.max_health base set 10
execute if score @s tbcHealth matches 11 run attribute @s minecraft:generic.max_health base set 11
execute if score @s tbcHealth matches 12 run attribute @s minecraft:generic.max_health base set 12
execute if score @s tbcHealth matches 13 run attribute @s minecraft:generic.max_health base set 13
execute if score @s tbcHealth matches 14 run attribute @s minecraft:generic.max_health base set 14
execute if score @s tbcHealth matches 15 run attribute @s minecraft:generic.max_health base set 15
execute if score @s tbcHealth matches 16 run attribute @s minecraft:generic.max_health base set 16
execute if score @s tbcHealth matches 17 run attribute @s minecraft:generic.max_health base set 17
execute if score @s tbcHealth matches 18 run attribute @s minecraft:generic.max_health base set 18
execute if score @s tbcHealth matches 19 run attribute @s minecraft:generic.max_health base set 19
execute if score @s tbcHealth matches 20 run attribute @s minecraft:generic.max_health base set 20
# HB Fix 2
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health base set 20