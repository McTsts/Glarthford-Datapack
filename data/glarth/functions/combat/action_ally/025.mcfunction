execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[scores={tbcSel=1},type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[scores={tbcSel=1},distance=..1.4,type=armor_stand] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 4 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/done