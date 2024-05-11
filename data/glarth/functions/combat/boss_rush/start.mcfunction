# set player ids
gamemode spectator @a[tag=lSpec]

scoreboard players reset @a playerid
scoreboard players set @a[gamemode=adventure] playerid 0
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 1
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 2
scoreboard players set @r[gamemode=adventure,scores={playerid=0}] playerid 3
gamemode spectator @a[gamemode=adventure,scores={playerid=0}] 

# set edge ids
scoreboard players add id edgeI 1
scoreboard players operation @a[gamemode=adventure] edgeI = id edgeI

# calculate difficulty
function glarth:mechanic/setup/adjust_difficulty
scoreboard players operation difficulty Stats > 1 Const

# set values
scoreboard players set combat Stats 0
scoreboard players set lobbyTBC Stats 2
scoreboard players set type Stats 2
scoreboard players set boss_rush Stats -1
scoreboard players set bossRushTime Stats 0

# set seed
scoreboard players set tbc Random 1
execute as @p[scores={tbcSeed=1..}] unless score @s tbcSeed matches 3374 run scoreboard players operation tbc Random = @s tbcSeed
scoreboard players reset * tbcSeed

# get equipment
function glarth:combat/boss_rush/equipment

# start first fight
function glarth:combat/boss_rush/next