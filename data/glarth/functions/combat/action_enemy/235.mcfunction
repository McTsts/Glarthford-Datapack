execute if score @s tbcAttackStage matches 0 at @e[tag=tbcTargetAS,limit=1] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] eyes rotated ~ 0 positioned ^1 ^ ^-0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. run scoreboard players operation rec Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. run scoreboard players operation rec Temp *= 25 Const
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. positioned ~ ~1.25 ~ run function glarth:combat/action_enemy/helper/laser3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1.. as @e[tag=tbcTempMarker] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] eyes rotated ~ 0 run tp @s ^-0.1 ^ ^
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1.. run scoreboard players set rec Temp 1000000
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1.. positioned ~ ~1.25 ~ run function glarth:combat/action_enemy/helper/laser3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 12 as @e[tag=tbcTarget] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 13 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/done