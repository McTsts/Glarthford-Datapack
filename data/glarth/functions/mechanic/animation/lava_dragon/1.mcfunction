# Move
execute if score @s lavaDragonAnim matches 1 facing 15 32 -211 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 2 facing 10 35 -204 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 3 facing 10 37 -198 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 4 facing 16 37 -195 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 5 facing 28 40 -196 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 6 facing 33 42 -189 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 7 facing 34 45 -182 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 8 facing 29 49 -173 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 9 facing 13 54 -167 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 10 facing -6 56 -160 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 11 facing -19 56 -149 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 12 facing -31 50 -153 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 13 facing -28 41 -161 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 14 facing -31 37 -172 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 15 facing -37 38 -180 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 16 facing -51 43 -190 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 17 facing -58 47 -200 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 18 facing -65 51 -206 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 19 facing -78 59 -208 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 20 facing -85 67 -203 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 21 facing -95 69 -193 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 22 facing -106 60 -193 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 23 facing -118 57 -195 run tp @s ^ ^ ^0.1 ~ ~

# Effect
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run particle minecraft:flame 15 33 -211 1 1 1 0.1 100
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run particle minecraft:lava 15 33 -211 1 1 1 1 30
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run playsound minecraft:entity.generic.explode hostile @a 15 33 -211 2 0.75
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run playsound minecraft:entity.generic.explode hostile @a 15 33 -211 2 2
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run playsound minecraft:lava_dragon_roar1 hostile @a 15 33 -211 2 1
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run fill 14 33 -212 16 33 -212 minecraft:air
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run fill 16 32 -211 14 32 -211 minecraft:oak_planks
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run summon minecraft:falling_block 14 33 -211 {Time:0,Motion:[0.0d,1.0d,0.2d],BlockState:{Name:"minecraft:oak_slab",Properties:{type:"bottom",waterlogged:"false"}},Tags:["falling_block_kill"]}
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run summon minecraft:falling_block 15 33 -211 {Time:0,Motion:[0.5d,0.8d,0.3d],BlockState:{Name:"minecraft:jungle_stairs",Properties:{facing:"north",half:"bottom",shape:"straight",waterlogged:"false"}},Tags:["falling_block_kill"]}
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run summon minecraft:falling_block 16 33 -211 {Time:0,Motion:[0.0d,0.8d,0.5d],BlockState:{Name:"minecraft:jungle_stairs",Properties:{facing:"north",half:"bottom",shape:"straight",waterlogged:"false"}},Tags:["falling_block_kill"]}
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run summon minecraft:falling_block 14 32 -211 {Time:0,Motion:[0.4d,0.8d,0.7d],BlockState:{Name:"minecraft:oak_planks"},Tags:["falling_block_kill"]}
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run summon minecraft:falling_block 15 32 -211 {Time:0,Motion:[0.4d,0.7d,0.35d],BlockState:{Name:"minecraft:oak_planks"},Tags:["falling_block_kill"]}
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run summon minecraft:falling_block 16 32 -211 {Time:0,Motion:[0.4d,0.8d,0.6d],BlockState:{Name:"minecraft:oak_planks"},Tags:["falling_block_kill"]}
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run 
execute positioned 15 32 -211 if entity @s[distance=..0.2] if score @s lavaDragonAnim matches 1 run 

# Next
execute positioned 15 32 -211 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 2
execute positioned 10 35 -204 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 3
execute positioned 10 37 -198 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute positioned 16 37 -195 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute positioned 28 40 -196 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 6
execute positioned 33 42 -189 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 7
execute positioned 34 45 -182 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 8
execute positioned 29 49 -173 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 9
execute positioned 13 54 -167 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 10
execute positioned -6 56 -160 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 11
execute positioned -19 56 -149 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 12
execute positioned -31 50 -153 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 13
execute positioned -28 41 -161 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 14
execute positioned -31 37 -172 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 15
execute positioned -37 38 -180 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 16
execute positioned -51 43 -190 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 17
execute positioned -58 47 -200 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 18
execute positioned -65 51 -206 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 19
execute positioned -78 59 -208 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 20
execute positioned -85 67 -203 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 21
execute positioned -95 69 -193 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 22
execute positioned -106 60 -193 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 23
execute positioned -118 57 -195 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 24

execute as @s[scores={lavaDragonAnim=24}] run kill @e[tag=lava_dragonP,type=armor_stand,distance=..15]
