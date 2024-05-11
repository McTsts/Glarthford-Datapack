tag @e[tag=lobby_hit] remove hurt
tag @e[tag=lobby_hit,nbt={HurtTime:9s}] add hurt
execute as @e[tag=hurt] at @s if entity @s[tag=previous] as @p[distance=..6,gamemode=adventure] as @s[scores={dmg=0..}] run function glarth:mechanic/lobby/previous
execute as @e[tag=hurt] at @s if entity @s[tag=next] as @p[distance=..6,gamemode=adventure] as @s[scores={dmg=0..}] run function glarth:mechanic/lobby/next
execute as @e[tag=hurt] at @s if entity @s[tag=lobbyPCClick] as @p[distance=..6,gamemode=adventure] as @s[scores={dmg=0..}] run tag @s add lobbyPCclicked
execute as @e[tag=hurt] at @s if entity @s[tag=credits] as @p[distance=..6,gamemode=adventure] as @s[scores={dmg=0..}] run tag @s add credits
execute as @e[tag=hurt] at @s if entity @s[tag=credits] as @p[distance=..6,gamemode=adventure] as @s[scores={dmg=0..}] run scoreboard players set @s credits 0
execute as @e[tag=hurt] at @s if entity @p[distance=..6,gamemode=adventure] as @s[scores={dmg=0..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 2

execute as @a[scores={trade=1..}] at @s as @e[type=villager,limit=1,sort=nearest] if entity @s[tag=next] as @p[scores={trade=1..}] run function glarth:mechanic/lobby/next
execute as @a[scores={trade=1..}] at @s as @e[type=villager,limit=1,sort=nearest] if entity @s[tag=previous] as @p[scores={trade=1..}] run function glarth:mechanic/lobby/previous
execute as @a[scores={trade=1..}] at @s as @e[type=villager,limit=1,sort=nearest] if entity @s[tag=lobbyPCClick] as @p[scores={trade=1..}] run tag @s add lobbyPCclicked
execute as @a[scores={trade=1..}] at @s as @e[type=villager,limit=1,sort=nearest] if entity @s[tag=credits] as @p[scores={trade=1..}] run tag @s add credits
execute as @a[scores={trade=1..}] at @s as @e[type=villager,limit=1,sort=nearest] if entity @s[tag=credits] as @p[scores={trade=1..}] run scoreboard players set @s credits 0
execute positioned 185 23 -112 as @a[scores={trade=1..},distance=..10] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 2
scoreboard players set @a[scores={trade=1..}] trade 0

execute as @e[tag=hurt] run scoreboard players reset @a[scores={dmg=0..}] dmg

scoreboard players enable @a tbcSeed

execute if score game Stats matches 0 as @a[x=192,y=18,z=-112,distance=..5,gamemode=adventure,tag=lSpec] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:0b} run effect give @s levitation 1 4 true
execute if score game Stats matches 0 as @a[x=192,y=18,z=-112,distance=..5,gamemode=adventure,tag=lSpec] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:0b} run effect give @s slow_falling 2 0 true
execute if score game Stats matches 0 as @r[x=192,y=18,z=-112,distance=..5,gamemode=adventure,tag=!lSpec] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:0b} if score x questU matches 1 run function glarth:mechanic/start
execute if score game Stats matches 0 as @r[x=192,y=18,z=-112,distance=..5,gamemode=adventure,tag=!lSpec] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:0b} if score x questU matches 0 run playsound minecraft:error master @s ~ ~ ~ 1 1 1
execute if score game Stats matches 0 as @r[x=192,y=18,z=-112,distance=..5,gamemode=adventure,tag=!lSpec] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:0b} if score x questU matches 0 unless score quest Stats matches 0 run tp @s 184 23 -112 -90 20
execute if score game Stats matches 0 as @r[x=192,y=18,z=-112,distance=..5,gamemode=adventure,tag=!lSpec] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:0b} if score x questU matches 0 if score quest Stats matches 0 run tp @s 166.0 24.0 -117.5 180 0
execute if score game Stats matches 0 as @r[x=192,y=16,z=-112,distance=..3,gamemode=adventure] at @s if block ~ 14 ~ red_terracotta if data entity @s {OnGround:1b} run tp @s ~ ~3 ~


# Blink
execute as @e[tag=lobbyCombat,type=minecraft:armor_stand,x=163,y=24,z=-93,distance=..7] run function glarth:mechanic/char/animated


tp @e[tag=sleepP] 174 24 -112
tag @a[x=174,y=24,z=-112,distance=..5] remove sleepP

effect give @a minecraft:saturation 3 0 true
effect give @a[scores={lobbyHealth=..19}] minecraft:instant_health 1 0 true

function glarth:mechanic/lobby/pc/main
function glarth:mechanic/lobby/selection/main
function glarth:mechanic/lobby/music_sel/loop

execute as @a[gamemode=adventure] at @s unless entity @e[type=pig,distance=..1] if block ~ ~ ~ #minecraft:stained_glass run tp @s ~ ~1 ~
execute as @a[gamemode=adventure] at @s unless entity @e[type=pig,distance=..1] unless block ~ ~ ~ #glarth:not_solid run tp @s ~ ~1 ~
execute as @a[gamemode=adventure] at @s unless entity @e[type=pig,distance=..1] unless block ~ ~ ~ #glarth:not_solid run tp @s ~ ~1 ~
execute as @a[gamemode=adventure] at @s unless entity @e[type=pig,distance=..1] unless block ~ ~ ~ #glarth:not_solid run tp @s ~ ~1 ~

# Bossbars
bossbar set minecraft:1 players
bossbar set minecraft:2 players
execute unless entity @a[gamemode=spectator] run bossbar set minecraft:3 players


title @a[tag=lSpec,scores={MusicTimeR=60..},gamemode=!spectator] actionbar {"translate":"lobby.spectating","color":"gold","italic":true}
title @a[tag=!lSpec,scores={MusicTimeR=60..},gamemode=!spectator] actionbar {"translate":"Please enable the Resource Pack!","color":"red"}


# players 
scoreboard players set lPlayers Temp 0
execute as @a[gamemode=adventure,tag=!lSpec] run scoreboard players add lPlayers Temp 1
execute if score lPlayers Temp matches 1..3 run fill 190 22 -114 194 22 -110 minecraft:air replace minecraft:red_concrete
execute unless score lPlayers Temp matches 1..3 run fill 190 22 -114 194 22 -110 minecraft:red_concrete replace minecraft:air
execute unless score lPlayers Temp matches 1..3 run fill 190 22 -114 194 22 -110 minecraft:red_concrete replace minecraft:water
execute if score lPlayers Temp matches 4.. run setblock 192 23 -112 oak_sign[rotation=4]{Text1:'{"translate":"lobby.cs1.1","bold":true}',Text2:'{"translate":"lobby.cs1.2"}',Text3:'{"translate":"lobby.cs1.3"}',Text4:'{"translate":"lobby.cs1.4"}'}
execute if score lPlayers Temp matches 0 run setblock 192 23 -112 oak_sign[rotation=4]{Text1:'{"translate":"lobby.cs2.1","bold":true}',Text2:'{"translate":"lobby.cs2.2"}',Text3:'{"translate":"lobby.cs2.3"}',Text4:'{"translate":"lobby.cs2.4"}'}
execute unless score lPlayers Temp matches 1..3 run fill 193 23 -111 191 23 -113 minecraft:structure_void replace air
execute unless score lPlayers Temp matches 1..3 run fill 190 23 -114 194 23 -110 minecraft:lantern[hanging=false] replace air


# Credits
execute if score timer credits matches 0.. run function glarth:mechanic/credits/main

# Weakness
execute as @a[gamemode=adventure] at @s run effect give @a[gamemode=adventure,distance=0.01..6] minecraft:weakness 2 10 true