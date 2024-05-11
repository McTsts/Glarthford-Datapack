summon minecraft:area_effect_cloud 0 0 0 {Radius:0.0f,Duration:2147483647,Tags:["tbcLobby"],CustomName:"\"Main\"",CustomNameVisible:0}

gamemode spectator @a[tag=lSpec]

scoreboard players reset @a playerid
scoreboard players set @a[gamemode=adventure] playerid 0
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 1
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 2
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 3
gamemode spectator @a[gamemode=adventure,scores={playerid=0}] 

scoreboard players add id edgeI 1
scoreboard players operation @a[gamemode=adventure] edgeI = id edgeI

function glarth:mechanic/setup/adjust_difficulty

scoreboard players operation difficulty Stats > 1 Const
scoreboard players set combat Stats 0
scoreboard players set lobbyTBC Stats 1
scoreboard players set tbc Random 1
execute as @p[scores={tbcSeed=1..}] unless score @s tbcSeed matches 3374 run scoreboard players operation tbc Random = @s tbcSeed
scoreboard players reset * tbcSeed

execute if score difficulty Stats matches 1 if score lobbyTBC Stats matches 1 run function glarth:mechanic/lobby/boss/eq_easy
execute if score difficulty Stats matches 2 if score lobbyTBC Stats matches 1 run function glarth:mechanic/lobby/boss/eq_medium
execute if score difficulty Stats matches 3 if score lobbyTBC Stats matches 1 run function glarth:mechanic/lobby/boss/eq_hard

execute if score bossRe Stats matches 7 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run give @a golden_hoe
execute if score bossRe Stats matches 8 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run give @a shears

execute if score bossRe Stats matches -1 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 074
execute if score bossRe Stats matches -1 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/special/dummy
execute if score bossRe Stats matches 0 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 072
execute if score bossRe Stats matches 0 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/bat_alt
execute if score bossRe Stats matches 1 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 074
execute if score bossRe Stats matches 1 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/roberto
execute if score bossRe Stats matches 2 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 012
execute if score bossRe Stats matches 2 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/raid_leader
execute if score bossRe Stats matches 3 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 062
execute if score bossRe Stats matches 3 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/skeleton_king
execute if score bossRe Stats matches 4 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 094
execute if score bossRe Stats matches 4 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/netheran
execute if score bossRe Stats matches 5 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 033
execute if score bossRe Stats matches 5 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/slime
execute if score bossRe Stats matches 6 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 013
execute if score bossRe Stats matches 6 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/piglin
execute if score bossRe Stats matches 7 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 022
execute if score bossRe Stats matches 7 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/grimsbane
execute if score bossRe Stats matches 8 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 083
execute if score bossRe Stats matches 8 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/necromancer
execute if score bossRe Stats matches 9 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 103
execute if score bossRe Stats matches 9 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/ender_priest
execute if score bossRe Stats matches 10 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run scoreboard players set arena tbcStats 111
execute if score bossRe Stats matches 10 as @e[tag=tbcLobby,limit=1,sort=nearest] at @s run function glarth:combat/start/boss/evil_ts

scoreboard players set type Stats 2