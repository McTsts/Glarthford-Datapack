execute if score @s tbcAttackStage matches 0 as @s[tag=!tbcReady] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 as @s[tag=!tbcReady] if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 0 as @e[scores={tbcID=2},tag=!tbcReady] at @s as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with diamond_hoe{CustomModelData:42}
execute if score @s tbcAttackStage matches 0 as @e[scores={tbcID=2},tag=!tbcReady] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 1 as @s[tag=!tbcReady] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 as @s[tag=!tbcReady] if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2},tag=!tbcReady] run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2},tag=!tbcReady] run scoreboard players operation rec Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2},tag=!tbcReady] run scoreboard players operation rec Temp *= 25 Const
execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2},tag=!tbcReady] at @s at @e[tag=charQE,limit=1,sort=nearest] positioned ^1.025 ^0.95 ^0.65 run function glarth:combat/action_enemy/helper/fishing_rod

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2},tag=!tbcReady] run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2},tag=!tbcReady] if score @s tbcAttackTimer matches 1..12 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[scores={tbcID=2}] feet run tp @s ^ ^ ^0.15
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2},tag=!tbcReady] if score @s tbcAttackTimer matches 12 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..3] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..10 at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.5] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcTargetMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTargetAS,type=armor_stand] at @s if entity @e[tag=tbcTargetMarker,distance=..0.2] as @e[scores={tbcID=1}] run function glarth:combat/action_enemy/util/done