execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 run scoreboard players operation model Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 1 run scoreboard players operation model Temp %= 12 Const
execute if score @s tbcAttackStage matches 1 run scoreboard players operation model Temp /= 3 Const
execute if score @s tbcAttackStage matches 1 if score model Temp matches 0 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:30}}]}
execute if score @s tbcAttackStage matches 1 if score model Temp matches 1 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:413}}]}
execute if score @s tbcAttackStage matches 1 if score model Temp matches 2 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:414}}]}
execute if score @s tbcAttackStage matches 1 if score model Temp matches 3 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:413}}]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 61 run data merge entity @s {NoGravity:0,ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:30}}]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 61 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run data merge entity @s {NoGravity:1}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 run scoreboard players operation model Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 3 run scoreboard players operation model Temp %= 12 Const
execute if score @s tbcAttackStage matches 3 run scoreboard players operation model Temp /= 3 Const
execute if score @s tbcAttackStage matches 3 if score model Temp matches 0 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:30}}]}
execute if score @s tbcAttackStage matches 3 if score model Temp matches 1 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:413}}]}
execute if score @s tbcAttackStage matches 3 if score model Temp matches 2 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:414}}]}
execute if score @s tbcAttackStage matches 3 if score model Temp matches 3 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:413}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..30 run tp @s ~ ~0.1 ~0.1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 31..60 run tp @s ~ ~-0.1 ~-0.1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 61 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:30}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 02..25 as @e[tag=tbcPlayerAS] at @s run tp @s ~ ~0.2 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26..60 as @e[tag=tbcPlayerAS] at @s run tp @s ~ ~-0.13714285714285714285714285714286 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 02 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 50 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60 run scoreboard players set damage tbcStats 50
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60 run scoreboard players set damageType tbcStats 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60 as @a[tag=tbcAttackable] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 02 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 03 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 02
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 04 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 03
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 05 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 06 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 07
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 07 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 10
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 08 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 13
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 09 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 15
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 18
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 21
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 12 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 22
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 13 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 23
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 23
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 23
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 22
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 17 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 21
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 18 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 19
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 19 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 17
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 15
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 13
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 22 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 10
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 23 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 08
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 24 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 06
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 03
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 27 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 28 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -2
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 29 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -4
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -7
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 31 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -9
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 32 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -9
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 33 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -8
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 34 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -7
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 35 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 36 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -4
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 37 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -2
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 38 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 39 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 02
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 41 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 04
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 43 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 04
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 44 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 03
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 47 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 48 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -2
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 49 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 50 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 51 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 52 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 61 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 43 positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 43 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 43 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done