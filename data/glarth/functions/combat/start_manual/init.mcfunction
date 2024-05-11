summon minecraft:area_effect_cloud 0 0 0 {Radius:0.0f,Duration:2147483647,Tags:["tbcLobby"],CustomName:"\"Main\"",CustomNameVisible:0}
function glarth:mechanic/setup/adjust_difficulty
execute if score difficulty Stats matches 1 run function glarth:mechanic/lobby/boss/eq_easy
execute if score difficulty Stats matches 2 run function glarth:mechanic/lobby/boss/eq_medium
execute if score difficulty Stats matches 3 run function glarth:mechanic/lobby/boss/eq_hard

scoreboard players reset @a playerid
scoreboard players set @a[gamemode=adventure] playerid 0
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 1
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 2
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 3
gamemode spectator @a[gamemode=adventure,scores={playerid=0}] 

function glarth:mechanic/setup/adjust_difficulty

scoreboard players operation difficulty Stats > 1 Const
scoreboard players set combat Stats 0
scoreboard players set lobbyTBC Stats 1
scoreboard players set tbc Random 0
execute as @p[scores={tbcSeed=1..}] run scoreboard players operation tbc Random = @s tbcSeed
scoreboard players reset * tbcSeed