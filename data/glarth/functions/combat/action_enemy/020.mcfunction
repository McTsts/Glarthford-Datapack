execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_020 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_021 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run playsound bat7 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30 run function glarth:dialogue/miner_chief/lines/tbc4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 110 run function glarth:dialogue/miner_chief/lines/tbc5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 300 run function glarth:combat/action_enemy/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:dialogue/miner_chief/lines/tbc6
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run tellraw @a ""
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run playsound bat8 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done