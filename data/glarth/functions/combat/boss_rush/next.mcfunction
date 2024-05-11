# prepare
summon minecraft:area_effect_cloud 0 0 0 {Radius:0.0f,Duration:2147483647,Tags:["tbcLobby"],CustomName:"\"Main\"",CustomNameVisible:0}
scoreboard players add boss_rush Stats 1

# spawn
execute if score boss_rush Stats matches 00 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 072
execute if score boss_rush Stats matches 00 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/bat_alt

execute if score boss_rush Stats matches 01 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 001
execute if score boss_rush Stats matches 01 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/evoker

execute if score boss_rush Stats matches 02 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 074
execute if score boss_rush Stats matches 02 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/roberto

execute if score boss_rush Stats matches 03 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 051
execute if score boss_rush Stats matches 03 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/bannerman_pillager

execute if score boss_rush Stats matches 04 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 023
execute if score boss_rush Stats matches 04 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/bannerman_vindicator

execute if score boss_rush Stats matches 05 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 034
execute if score boss_rush Stats matches 05 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/bannerman_illusioner

execute if score boss_rush Stats matches 06 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 012
execute if score boss_rush Stats matches 06 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/raid_leader

execute if score boss_rush Stats matches 07 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 062
execute if score boss_rush Stats matches 07 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/skeleton_king

execute if score boss_rush Stats matches 08 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 003
execute if score boss_rush Stats matches 08 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/summoner

execute if score boss_rush Stats matches 09 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 094
execute if score boss_rush Stats matches 09 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/netheran

execute if score boss_rush Stats matches 10 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 033
execute if score boss_rush Stats matches 10 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/slime

execute if score boss_rush Stats matches 11 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 091
execute if score boss_rush Stats matches 11 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/ghast

execute if score boss_rush Stats matches 12 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 013
execute if score boss_rush Stats matches 12 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/piglin

execute if score boss_rush Stats matches 13 as @a[gamemode=adventure] run item replace entity @s weapon.offhand with golden_hoe
execute if score boss_rush Stats matches 13 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 022
execute if score boss_rush Stats matches 13 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/grimsbane

execute if score boss_rush Stats matches 14 run clear @a[gamemode=adventure] golden_hoe
execute if score boss_rush Stats matches 14 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 083
execute if score boss_rush Stats matches 14 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/necromancer

execute if score boss_rush Stats matches 15 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 104
execute if score boss_rush Stats matches 15 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/ender_knight

execute if score boss_rush Stats matches 16 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 102
execute if score boss_rush Stats matches 16 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/ender_priest_1

execute if score boss_rush Stats matches 17 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 105
execute if score boss_rush Stats matches 17 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/end_crystal_guardian1

execute if score boss_rush Stats matches 18 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 105
execute if score boss_rush Stats matches 18 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/default/end_crystal_guardian2

execute if score boss_rush Stats matches 19 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 103
execute if score boss_rush Stats matches 19 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/ender_priest_2

execute if score boss_rush Stats matches 20 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 111
execute if score boss_rush Stats matches 20 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/evil_ts
