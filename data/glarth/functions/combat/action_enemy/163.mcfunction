# Ender Swipe & Endermite
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 65 run summon endermite ~ ~ ~ {NoAI:1,Tags:["tbcSil140"],Glowing:1,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 67 as @e[tag=tbcSil140] at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 67 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 67 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..20 as @e[tag=tbcSil140] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run data merge entity @e[tag=tbcSil140,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/next_stage

# Fast Ender Swipe
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 0..9 rotated ~ 0 run tp @s ^ ^ ^0.083
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 12 run function glarth:combat/action_enemy/util/next_stage

# Ender Slam
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 run data merge entity @s {NoGravity:0}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^4 ^4 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46.. unless block ~ ~-0.1 ~ air run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcShockwave"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 8 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 10 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 8 run scoreboard players set dir tbcWhip -3
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 8 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 10 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 8 run scoreboard players set dir tbcWhip 3
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~-90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.25 ~ ~
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcWhipHit,tag=tbcTargetAS] unless score @s tbcAttackTimerX matches 30.. run scoreboard players set @s tbcAttackTimerX 30
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimerX matches 32.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcPlayerAS,type=armor_stand] remove tbcWhipHit
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 run kill @e[tag=tbcShockwave,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# Double Ender Swipe
execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 run scoreboard players operation tbcPrev Temp = n Random
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 if score n Random = tbcPrev Temp run scoreboard players add n Random 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 if score n Random matches 5 run scoreboard players set n Random 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 66 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 16 run function glarth:combat/action_enemy/util/next_stage

# Elytra Swipe
execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^5 ^10 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 45 run data merge entity @s {Pose:{Head:[70f,0f,0f]}}
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 16 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 16 if entity @e[tag=tbcTempMarker,type=area_effect_cloud,distance=..0.15] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 17 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 0..15 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 20 run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 20 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^0.75 run tp @s ~ ~ ~
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 21..35 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 35 run function glarth:combat/action_enemy/util/next_stage

# Ender Swipe
execute if score @s tbcAttackStage matches 18 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 19 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 20 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/done