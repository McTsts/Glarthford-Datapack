# Move
execute if score @s lavaDragonAnim matches 1 facing 513 35 14 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 2 facing 518 35 11 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=1}] facing 518 31.2 15 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=2}] facing 522 31.2 14 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=3}] facing 514 31.2 14 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 4 if entity @a[tag=tbcTarget,scores={playerid=1}] facing 518 32 21 run tp @s ^ ^ ^0.1
execute if score @s lavaDragonAnim matches 4 if entity @a[tag=tbcTarget,scores={playerid=2}] facing 522 32 20 run tp @s ^ ^ ^0.1
execute if score @s lavaDragonAnim matches 4 if entity @a[tag=tbcTarget,scores={playerid=3}] facing 514 32 20 run tp @s ^ ^ ^0.1
execute if score @s lavaDragonAnim matches 5 facing 518 35 23 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 6 facing 524 38 13 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 7 facing 524 20 13 run tp @s ^ ^ ^0.1 ~ ~

# Next
execute positioned 513 35 14 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 2
execute positioned 518 35 11 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 3
execute if entity @a[tag=tbcTarget,scores={playerid=1}] positioned 518 31.2 15 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=2}] positioned 522 31.2 14 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=3}] positioned 514 31.2 14 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=1}] positioned 518 32 21 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute if entity @a[tag=tbcTarget,scores={playerid=2}] positioned 522 32 20 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute if entity @a[tag=tbcTarget,scores={playerid=3}] positioned 514 32 20 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute positioned 518 35 23 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 6
execute positioned 524 38 13 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 7
execute positioned 524 20 13 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 8



execute as @s[scores={lavaDragonAnim=8}] as @e[tag=tbcTurn] run function glarth:combat/action_enemy/util/next_stage
execute as @s[scores={lavaDragonAnim=8}] run scoreboard players set @s lavaDragonAnim 9
