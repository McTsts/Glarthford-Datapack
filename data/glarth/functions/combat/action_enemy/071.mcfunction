execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run data merge entity @s[tag=tbcShulker] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.shulker","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":205}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run data merge entity @s[tag=tbcShulkerFake] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.ender_priest.shulker","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":205}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run data merge entity @s[tag=tbcShulkerGuardian] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":419}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^ ^1.8 rotated ~180 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run data merge entity @s[tag=tbcShulker] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.shulker","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":206}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run data merge entity @s[tag=tbcShulkerFake] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.ender_priest.shulker","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":206}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run data merge entity @s[tag=tbcShulkerGuardian] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":420}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run scoreboard players set @s tbcAttackStage 10

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 run data merge entity @s[tag=tbcShulker] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.shulker","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":205}}]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 run data merge entity @s[tag=tbcShulkerFake] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.ender_priest.shulker","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":205}}]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 run data merge entity @s[tag=tbcShulkerGuardian] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":419}}]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 65 run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 11 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 11 run scoreboard players operation @s tbcAttackStage += n Random

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 11..82 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 24 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 28 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 28 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 28 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 50 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 60 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 64 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 90 run scoreboard players set @s tbcAttackStage 1

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11..118 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 24 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 28 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 28 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 28 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 50 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 60 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 64 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 86 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 96 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 100 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 100 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 100 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 126 run scoreboard players set @s tbcAttackStage 1

execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 11..154 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 24 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 28 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 28 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 28 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 50 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 60 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 64 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 86 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 96 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 100 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 100 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 100 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 122 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 132 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 136 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 136 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 136 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 162 run scoreboard players set @s tbcAttackStage 1