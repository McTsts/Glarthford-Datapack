execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB] add rand_sel
execute if score @s tbcAttackStage matches 0 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 0 run tag @e[tag=rand_sel_result,limit=1] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 0 unless entity @s[tag=tbcEnderPriest] unless entity @s[tag=tbcVishnoldFake] run function glarth:dialogue/slime/lines/attack3
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..3.3] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.3] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 facing entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/get_target
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 facing entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 8 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..3.3] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.3] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 10 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.6 ~ ~
execute if score @s tbcAttackStage matches 11 if entity @e[tag=tbcSelMarker,distance=..0.3] run function glarth:combat/action_enemy/util/done

execute unless entity @s[tag=tbcEnderPriest] run particle item{item:"slime_ball"} ~ ~ ~ 0.3 0.3 0.3 0.1 3
execute if entity @s[tag=tbcEnderPriest] run particle portal ~ ~ ~ 0.3 0.3 0.3 0.1 3
execute if entity @s[tag=tbcEnderPriest] run particle dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.1 1