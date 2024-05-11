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
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^0.75 run tp @s ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 21..35 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 35 run function glarth:combat/action_enemy/util/next_stage

# SlideSwipe
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 run data merge entity @s {NoGravity:1}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] rotated ~ 0 positioned ^ ^ ^3.0 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set r Random 8
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players operation angle tbcAdjLoc = n Random
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players remove angle tbcAdjLoc 5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 if score angle tbcAdjLoc matches 0 run scoreboard players set angle tbcAdjLoc 4
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players operation angle tbcAdjLoc *= 10 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/helper/adjust_location
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS1] tbcSlideP 4500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS1] tbcSlideN 4500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS2] tbcSlideP 1500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS2] tbcSlideN 7500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS3] tbcSlideP 8500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS3] tbcSlideN 2500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players operation @s tbcSlideP = @e[tag=tbcTargetAS,limit=1] tbcSlideP
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 46 run scoreboard players operation @s tbcSlideN = @e[tag=tbcTargetAS,limit=1] tbcSlideN
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 47 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1..21 if entity @s[tag=!tbcAdjLocRev] rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^-0.1 ^ ^
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 0..21 if entity @s[tag=tbcAdjLocRev] rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^0.1 ^ ^
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 22 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 22 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 22 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1..21 if entity @s[tag=!tbcAdjLocRev] rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^0.1 ^ ^
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1..21 if entity @s[tag=tbcAdjLocRev] rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^-0.1 ^ ^
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 21 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4..6 as @e[tag=tbcPlayerAS] run function glarth:combat/action_enemy/helper/slide
execute if score @s tbcAttackStage matches 4..6 as @e[tag=tbcEnemy] run function glarth:combat/action_enemy/helper/slide

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 run scoreboard players set angle tbcAdjLoc 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 run function glarth:combat/action_enemy/helper/adjust_location
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 45 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 as @e[tag=tbcPlayerAS1,tag=!tbcTargetAS,type=armor_stand] at @s unless entity @e[tag=tbcMarkerPos1,distance=..0.3] facing entity @e[tag=tbcMarkerPos1] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcPlayerAS2,tag=!tbcTargetAS,type=armor_stand] at @s unless entity @e[tag=tbcMarkerPos2,distance=..0.3] facing entity @e[tag=tbcMarkerPos2] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcPlayerAS3,tag=!tbcTargetAS,type=armor_stand] at @s unless entity @e[tag=tbcMarkerPos3,distance=..0.3] facing entity @e[tag=tbcMarkerPos3] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcTargetMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTargetAS,type=armor_stand] at @s if entity @e[tag=tbcTargetMarker,distance=..0.2] as @e[scores={tbcID=1}] run function glarth:combat/action_enemy/util/next_stage

# Swipe
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 01 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/done