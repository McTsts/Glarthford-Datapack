#Scores
execute unless entity @e[tag=area_main,type=area_effect_cloud] run summon minecraft:area_effect_cloud 7 999 -196 {Radius:0.0f,Duration:2147483647,Tags:["area_main"],CustomName:"\"Main\"",CustomNameVisible:0}
#Functions


execute unless entity @a run scoreboard players reset * registered
execute as @a[scores={edge=21..}] unless score @s registered matches 1 run scoreboard players set @s edgeJ 1
scoreboard players set @a[scores={edge=21..}] registered 1

scoreboard players add @a edge 1
execute as @a[scores={edgeJ=1..}] run function glarth:mechanic/join
execute as @a[scores={edge=1..20}] run function glarth:mechanic/join

execute if block 186 23 -112 air run function glarth:mechanic/lobby/setup

execute as @e[tag=seWall,type=squid] run function glarth:util/wall
execute as @e[tag=seSnow,type=squid] run function glarth:util/snow

execute if score TBC Stats matches 0 run function glarth:mechanic/main
execute if score TBC Stats matches 1 run function glarth:combat/main

function glarth:title/main
function glarth:sign/main

function glarth:mechanic/music/main

# Leave MSG
function glarth:mechanic/leave0/calc


# Actual Time
execute if score game Stats matches 1 run scoreboard players add actual Dis 1
execute if score game Stats matches 1 run scoreboard players operation aMinute Dis = actual Dis
execute if score game Stats matches 1 run scoreboard players operation aMinute Dis /= 20 Dis
execute if score game Stats matches 1 run scoreboard players operation aHour Dis = aMinute Dis
execute if score game Stats matches 1 run scoreboard players operation aMinute Dis %= 60 Dis
execute if score game Stats matches 1 run scoreboard players operation aHour Dis /= 60 Dis

#Game
scoreboard players set playing Stats 0
execute as @a[gamemode=adventure] run scoreboard players add playing Stats 1
execute if score game Stats matches 1 run tp @a[scores={deathT=1..100},gamemode=!spectator] @r[gamemode=adventure,distance=0.1..]
execute if score game Stats matches 1 run gamemode spectator @a[scores={deathT=1..100},gamemode=!spectator]

#End Via Death
execute if score game Stats matches 1 if score playing Stats matches 0 if entity @a[scores={deathT=..50}] run function glarth:mechanic/lose

#End Via No Players
execute if score game Stats matches 1 unless score playing Stats matches 0 run scoreboard players set wait Stats 0
execute if score game Stats matches 1 if score playing Stats matches 0 unless entity @a[scores={deathT=..50}] if entity @a[gamemode=spectator] run scoreboard players add wait Stats 1
execute if score game Stats matches 1 if score playing Stats matches 0 unless entity @a[scores={deathT=..50}] if score wait Stats matches 1 run tellraw @a {"translate":"rejoin","color":"red"}
execute if score game Stats matches 1 if score playing Stats matches 0 unless entity @a[scores={deathT=..50}] if score wait Stats matches 1 run tellraw @a ["",{"translate":"rejoin.extend","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger trigger set -1"}}]
execute if score game Stats matches 1 if score playing Stats matches 0 unless entity @a[scores={deathT=..50}] if score wait Stats matches 600.. run function glarth:mechanic/lose

#End Via Boss
execute as @e[tag=boss] run tag @a[gamemode=adventure] remove hasWon
execute as @e[tag=boss] run tag @a[gamemode=adventure] add inFight
execute as @e[tag=boss] run scoreboard players set timer boss 80
execute if entity @a[tag=inFight] unless entity @e[tag=boss] unless entity @a[tag=hasWon] run function glarth:mechanic/boss_death
execute if entity @a[tag=inFight] unless entity @e[tag=boss] if score timer boss matches 1.. run tag @a add hasWon
execute if entity @a[tag=inFight] unless entity @e[tag=boss] if score timer boss matches 1.. run effect give @a minecraft:resistance 10 120 true
execute if entity @a[tag=inFight] unless entity @e[tag=boss] if score timer boss matches 0.. run scoreboard players remove timer boss 1
execute if entity @a[tag=inFight] unless entity @e[tag=boss] if score timer boss matches 0 run scoreboard players set timer end 0
execute if entity @a[tag=inFight] unless entity @e[tag=boss] if score timer boss matches 0 run function glarth:mechanic/completed
execute if entity @a[tag=inFight] unless entity @e[tag=boss] if score timer boss matches 0 run function glarth:mechanic/end


# Commandblock Detect
execute if score commandBlocks Check matches 0 run title @a title ""
execute if score commandBlocks Check matches 0 run title @a subtitle {"translate":"enable_cmd_blocks","color":"red"}
execute if score commandBlocks Check matches 0 run title @a times 0 20 0
execute if score commandBlocks Check matches 0 run tp @a[gamemode=!spectator,x=95,y=19,z=-139,distance=5..] 95 19 -139
scoreboard players set commandBlocks Check 0

# Vanilla Detect
execute if score vanilla Check matches 0 run title @a title ""
execute if score vanilla Check matches 0 run title @a subtitle {"translate":"play_on_vanilla","color":"red"}
execute if score vanilla Check matches 0 run title @a times 0 20 0
execute if score vanilla Check matches 0 run tp @a[gamemode=!spectator,x=95,y=19,z=-139,distance=5..] 95 19 -139

# Version Detect
execute if score version Check matches 0 run title @a title ""
execute if score version Check matches 0 run title @a subtitle {"translate":"wrong_version","color":"red"}
execute if score version Check matches 0 run title @a times 0 20 0
execute if score version Check matches 0 run tp @a[gamemode=!spectator,x=95,y=19,z=-139,distance=5..] 95 19 -139


#execute as _tsts_ at @s store result score tsuc Temp run clone ~-14 ~-14 ~-14 ~14 ~14 ~14 ~-14 ~-14 ~-14 filtered repeating_command_block move
#execute if score tsuc Temp matches 1 run say a
#execute as Asometric at @s store result score tsuc Temp run clone ~-14 ~-14 ~-14 ~14 ~14 ~14 ~-14 ~-14 ~-14 filtered repeating_command_block move
#execute if score tsuc Temp matches 1 run say b

# Survival Fix
gamemode adventure @a[gamemode=survival]



