execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 as @e[tag=charQA,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=393]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..25 run particle minecraft:falling_honey ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run particle minecraft:falling_honey ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run scoreboard players set bee tbcStats 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/aoe
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 run function glarth:combat/action_ally/util/next_stage



execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcSelMarker,distance=..0.1,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 as @e[tag=charQA,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_ally/util/done