# 0 - Select Side Markers
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB,limit=1,sort=nearest] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# 1 - Move to Side Markers
execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

# 2 - Prepare Arrow
execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/helper/hold_bow
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/helper/hold_bow
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation n Random += n Random
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players remove n Random 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcAttackStage += n Random

# 3 - Main Arrow #1
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 3 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/next_stage

# 5 - Extra Arrow #1
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 5 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/next_stage

# 7 - Main Arrow #2
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 7 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 7 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/next_stage

# 9 - Extra Arrow #2
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 9 as @e[scores={tbcID=2}] at @s run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 9 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/util/next_stage

# 11 - Main Arrow #3
execute if score @s tbcAttackStage matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 11 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 11 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/util/next_stage

# 13 - After Arrow Pause
execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 3..13 run function glarth:combat/action_enemy/helper/arrow_cross

# 14 - Return
execute if score @s tbcAttackStage matches 14 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 14 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 14 as @e[scores={tbcID=2}] at @s facing entity @e[scores={tbcIDM=2}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 14 as @e[scores={tbcID=2}] at @s if entity @e[scores={tbcIDM=2},distance=..0.2] run function glarth:combat/action_enemy/util/done

# 15 - Done
execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/util/done