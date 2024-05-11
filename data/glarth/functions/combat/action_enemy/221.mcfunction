execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 1 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=9]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 2 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=2]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 3 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=3]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 4 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=4]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 5 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=6]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 6 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=5]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 7 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 8 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=186]
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.45 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..10 rotated ~ 0 run tp @s ^ ^ ^0.075
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 1 run scoreboard players operation damage tbcStats *= 3 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 2 run scoreboard players operation damage tbcStats *= 4 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 3 run scoreboard players operation damage tbcStats *= 5 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 4 run scoreboard players operation damage tbcStats *= 6 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 5 run scoreboard players operation damage tbcStats *= 7 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 6 run scoreboard players operation damage tbcStats *= 6 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 8 run scoreboard players operation damage tbcStats *= 4 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 6 run scoreboard players set fire tbcStats 5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 if score evilAttackData Temp matches 8 run scoreboard players set slowness tbcStats 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 17 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done