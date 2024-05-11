execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 facing entity @e[tag=tbcMarkerPos1,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 as @a at @e[tag=tbcMarkerMiddle] run function glarth:mechanic/wind/wind
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20..100 as @a at @e[tag=tbcMarkerMiddle] run function glarth:mechanic/wind/storm
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 63 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 at @e[tag=tbcAttackable] run particle minecraft:cloud ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 at @e[tag=tbcAttackable] run summon minecraft:lightning_bolt
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 run scoreboard players operation damage tbcStats *= 3 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 run scoreboard players set queuex tbcStats -12
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 at @e[tag=tbcAttackable] run summon lightning_bolt ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/done
