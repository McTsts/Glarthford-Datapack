execute if score @s tbcAttackStage matches 0 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^1.5 run summon endermite ~ ~ ~ {NoAI:1,Tags:["tbcSil140"],Glowing:1,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcSil140] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,limit=1] eyes rotated ~180 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 0..20 as @e[tag=tbcSil140] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 21 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 21 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run data merge entity @e[tag=tbcSil140,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^-1.5 run summon endermite ~ ~ ~ {NoAI:1,Tags:["tbcSil140"],Glowing:1,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcSil140] at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,limit=1]
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..20 as @e[tag=tbcSil140] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run data merge entity @e[tag=tbcSil140,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/done