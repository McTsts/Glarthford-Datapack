# Arrow
execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/helper/hold_bow
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 2 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 2 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

# Swipe
execute if score @s tbcAttackStage matches 4 unless entity @s[tag=tbcPiglin] as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with diamond_hoe{CustomModelData:4}
execute if score @s tbcAttackStage matches 4 if entity @s[tag=tbcPiglin] as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with diamond_hoe{CustomModelData:508}
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^0.35 rotated as @s run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/helper/hold_bow
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# Arrow 2
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage


execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 2..3 run function glarth:combat/action_enemy/helper/arrow
execute if score @s tbcAttackStage matches 8..9 run function glarth:combat/action_enemy/helper/arrow

execute if score @s tbcAttackStage matches 11 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 11 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done
