execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:43}
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ^-1 ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 0..13 rotated ~ 0 run tp @s ^ ^ ^0.07
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17 run replaceitem entity @s armor.head diamond_hoe{Damage:39}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/action_enemy/util/done