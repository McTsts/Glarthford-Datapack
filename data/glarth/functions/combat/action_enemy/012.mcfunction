# 0
execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# 1
execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

#2
execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=3}] at @s run tag @e[tag=tbcMarkerMiddleB,limit=1,sort=nearest] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=3}] run function glarth:combat/action_enemy/util/ready

#3
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 run tp @s ^0.1 ^ ^
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=3}] run function glarth:combat/action_enemy/util/ready

#4
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.05
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=3}] at @s facing entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=3}] at @s if entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

#5
execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run tp @s ^0.1 ^ ^
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=3}] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=3}] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/ready

#6
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.05
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=3}] at @s if score @s tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/ready

#7
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 7 as @e[scores={tbcID=2}] at @s facing entity @e[scores={tbcIDM=2}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 7 as @e[scores={tbcID=2}] at @s if entity @e[scores={tbcIDM=2},distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 7 as @e[scores={tbcID=3}] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 7 as @e[scores={tbcID=3}] at @s if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/ready

#8
execute if score @s tbcAttackStage matches 8 as @e[scores={tbcID=3}] at @s facing entity @e[scores={tbcIDM=3}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[scores={tbcID=3}] at @s if entity @e[scores={tbcIDM=3},distance=..0.2] run function glarth:combat/action_enemy/util/done