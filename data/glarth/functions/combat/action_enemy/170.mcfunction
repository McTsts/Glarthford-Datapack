# Ender Slam
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run data merge entity @s {NoGravity:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^4 ^4 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 46.. unless block ~ ~-0.1 ~ air run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcShockwave"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 2 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 4 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 2 run scoreboard players set dir tbcWhip -3
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 2 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 4 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 2 run scoreboard players set dir tbcWhip 3
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~-90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.25 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcWhipHit,tag=tbcTargetAS] unless score @s tbcAttackTimerX matches 30.. run scoreboard players set @s tbcAttackTimerX 30
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 32.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcPlayerAS,type=armor_stand] remove tbcWhipHit
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 run kill @e[tag=tbcShockwave,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

# Ender Swipe
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/next_stage

# Ender Slam +
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena2
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 run scoreboard players operation model Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 9 run scoreboard players operation model Temp %= 12 Const
execute if score @s tbcAttackStage matches 9 run scoreboard players operation model Temp /= 3 Const
execute if score @s tbcAttackStage matches 9 if score model Temp matches 0 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":30}}]}
execute if score @s tbcAttackStage matches 9 if score model Temp matches 1 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":413}}]}
execute if score @s tbcAttackStage matches 9 if score model Temp matches 2 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":414}}]}
execute if score @s tbcAttackStage matches 9 if score model Temp matches 3 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":413}}]}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1..60 run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 61 run data merge entity @s {NoGravity:0,ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":30}}]}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 61 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run data merge entity @s {NoGravity:1}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 run scoreboard players operation model Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 11 run scoreboard players operation model Temp %= 12 Const
execute if score @s tbcAttackStage matches 11 run scoreboard players operation model Temp /= 3 Const
execute if score @s tbcAttackStage matches 11 if score model Temp matches 0 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":30}}]}
execute if score @s tbcAttackStage matches 11 if score model Temp matches 1 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":413}}]}
execute if score @s tbcAttackStage matches 11 if score model Temp matches 2 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":414}}]}
execute if score @s tbcAttackStage matches 11 if score model Temp matches 3 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":413}}]}
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 1..30 run tp @s ~ ~0.1 ~0.1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 31..60 run tp @s ~ ~-0.1 ~-0.1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 61 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":30}}]}
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 02..25 as @e[tag=tbcPlayerAS] at @s run tp @s ~ ~0.2 ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 26..60 as @e[tag=tbcPlayerAS] at @s run tp @s ~ ~-0.13714285714285714285714285714286 ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 02 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 50 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 60 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 60 run scoreboard players set damageType tbcStats 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 60 run scoreboard players set damage tbcStats 50
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 60 as @a[tag=tbcAttackable] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 02 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 03 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 02
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 04 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 03
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 05 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 05
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 06 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 07
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 07 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 10
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 08 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 13
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 09 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 15
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 18
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 21
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 12 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 22
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 13 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 23
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 23
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 15 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 23
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 22
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 17 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 21
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 18 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 19
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 19 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 17
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 20 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 15
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 21 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 13
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 22 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 10
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 23 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 08
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 24 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 06
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 25 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 03
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 26 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 27 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 28 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -2
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 29 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -4
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 30 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -7
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 31 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -9
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 32 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -9
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 33 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -8
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 34 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -7
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 35 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -5
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 36 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -4
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 37 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -2
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 38 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 39 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 40 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 02
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 41 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 04
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 42 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 05
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 43 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 04
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 44 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 03
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 46 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 47 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 48 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -2
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 49 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ -1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 50 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 51 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 01
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 52 as @e[tag=endArena] at @s run tp @s ~ ~ ~ ~ 00
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 61 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 41 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 43 positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 43 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 43 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage


# Ender Swipe
execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 16 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/done