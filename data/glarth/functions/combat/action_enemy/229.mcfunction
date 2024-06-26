execute if score @s tbcAttackStage matches 0 run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=528]
execute if score @s tbcAttackStage matches 0 run playsound minecraft:entity.cow.ambient neutral @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..7 rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 8 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 8 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 run playsound minecraft:entity.cow.ambient neutral @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.3] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=527]
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.3] run function glarth:combat/action_enemy/util/done