execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] unless entity @s[tag=tbcEnderPriest] unless entity @s[tag=tbcVishnoldFake] run function glarth:dialogue/slime/lines/attack2
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^0.3 ^0.075
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..5 at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^-0.6 ^0.075
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 9 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 9 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done