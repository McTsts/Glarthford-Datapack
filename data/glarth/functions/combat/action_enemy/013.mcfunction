#0
execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

#1
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/helper/hold_bow
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run scoreboard players operation n Random += n Random
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run scoreboard players remove n Random 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcAttackStage += n Random

#2
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 2 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 2 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

#4
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 4 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

#6
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

#8
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 5..25 run tp @s ^0.15 ^ ^
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/ready
execute if score @s tbcAttackStage matches 2..8 run function glarth:combat/action_enemy/helper/arrow

execute if score @s tbcAttackStage matches 8 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

#9
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 9 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 9 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/ready

#10
execute if score @s tbcAttackStage matches 10 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 10 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.05
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 10 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/ready

#11
execute if score @s tbcAttackStage matches 11 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 11 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

#12
execute if score @s tbcAttackStage matches 12 as @e[scores={tbcID=2}] at @s facing entity @e[scores={tbcIDM=2}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 12 as @e[scores={tbcID=2}] at @s if entity @e[scores={tbcIDM=2},distance=..0.2] run function glarth:combat/action_enemy/util/done