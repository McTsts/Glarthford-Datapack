# Elytra Swipe
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^5 ^10 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run data merge entity @s {Pose:{Head:[70.0f,0.0f,0.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcTempMarker,type=area_effect_cloud,distance=..0.15] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 0..15 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^0.75 run tp @s ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 21..35 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 35 run function glarth:combat/action_enemy/util/next_stage

# Ender Swipe
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/next_stage

# Ender Fireball
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 6 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=361]
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6..7 run function glarth:combat/action_enemy/helper/fireball_ender2

# Ender Swipe
execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 46.. if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/done