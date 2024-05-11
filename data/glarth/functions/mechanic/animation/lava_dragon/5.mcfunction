# Move
execute if score @s lavaDragonAnim matches 1 facing 327 32 -55 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 2 facing 324 33 -52 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=1}] facing 318 28.2 -51 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=2}] facing 319 28.2 -48 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 3 if entity @a[tag=tbcTarget,scores={playerid=3}] facing 319 28.2 -54 run tp @s ^ ^ ^0.1 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s lavaDragonAnim matches 4 if entity @a[tag=tbcTarget,scores={playerid=1}] facing 312 29 -51 run tp @s ^ ^ ^0.1
execute if score @s lavaDragonAnim matches 4 if entity @a[tag=tbcTarget,scores={playerid=2}] facing 313 29 -48 run tp @s ^ ^ ^0.1
execute if score @s lavaDragonAnim matches 4 if entity @a[tag=tbcTarget,scores={playerid=3}] facing 313 29 -54 run tp @s ^ ^ ^0.1
execute if score @s lavaDragonAnim matches 5 facing 308 32 -45 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 6 facing 312 31 -42 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 7 facing 322 18 -42 run tp @s ^ ^ ^0.1 ~ ~

# Next
execute positioned 327 32 -55 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 2
execute positioned 324 33 -52 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 3
execute if entity @a[tag=tbcTarget,scores={playerid=1}] positioned 318 28.2 -51 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=2}] positioned 319 28.2 -48 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=3}] positioned 319 28.2 -54 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute if entity @a[tag=tbcTarget,scores={playerid=1}] positioned 312 29 -51 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute if entity @a[tag=tbcTarget,scores={playerid=2}] positioned 313 29 -48 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute if entity @a[tag=tbcTarget,scores={playerid=3}] positioned 313 29 -54 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute positioned 308 32 -45 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 6
execute positioned 312 31 -42 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 7
execute positioned 322 18 -42 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 8



execute as @s[scores={lavaDragonAnim=8}] as @e[tag=tbcTurn] run function glarth:combat/action_enemy/util/next_stage
execute as @s[scores={lavaDragonAnim=8}] run scoreboard players set @s lavaDragonAnim 9
