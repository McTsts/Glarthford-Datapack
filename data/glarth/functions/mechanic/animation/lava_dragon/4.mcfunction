# Move
execute if score @s lavaDragonAnim matches 1 facing 320 30.5 -51 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 2 facing 319 31.5 -51 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=1}] facing 317 30.6 -51 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=2}] facing 317 30.6 -50 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=3}] facing 317 30.6 -52 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 6 facing 312 32 -48 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 7 facing 304.0 19 -47 run tp @s ^ ^ ^0.1 ~ ~

# Next
execute positioned 320 30.5 -51 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 2
execute positioned 319 31.5 -51 if entity @s[distance=..0.2] run tag @e[tag=lava_dragon] remove ldMouth
execute positioned 319 31.5 -51 if entity @s[distance=..0.2] run scoreboard players set @e[tag=lava_dragonQ3] lavaDragonAngle 100
execute positioned 319 31.5 -51 if entity @s[distance=..0.2] run tag @e[tag=lava_dragonQ3] remove ldAngle
execute positioned 319 31.5 -51 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 3
execute if entity @a[tag=tbcTarget,scores={playerid=1}] positioned 317 30.6 -51 if entity @s[distance=..0.2] unless score @s lavaDragonAnim matches 4.. run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=2}] positioned 317 30.6 -50 if entity @s[distance=..0.2] unless score @s lavaDragonAnim matches 4.. run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=3}] positioned 317 30.6 -52 if entity @s[distance=..0.2] unless score @s lavaDragonAnim matches 4.. run scoreboard players set @s lavaDragonAnim 4
execute positioned 312 32 -48 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 7
execute positioned 304.0 19 -47 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 8


execute as @s[scores={lavaDragonAnim=4}] run playsound minecraft:lava_dragon_breath2 hostile @a ~ ~ ~ 2 1.5
execute as @s[scores={lavaDragonAnim=4}] as @e[tag=tbcTurn] run function glarth:combat/action_enemy/util/next_stage
execute as @s[scores={lavaDragonAnim=4}] run scoreboard players set @s lavaDragonAnim 5

execute as @s[scores={lavaDragonAnim=8}] as @e[tag=tbcTurn] run function glarth:combat/action_enemy/util/next_stage
execute as @s[scores={lavaDragonAnim=8}] run scoreboard players set @s lavaDragonAnim 9