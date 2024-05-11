execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 1 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=15]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 2 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=17]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 3 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=19]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 4 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=21]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 5 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=23]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 6 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=388]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 7 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=140]
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 facing entity @e[tag=tbcMarkerPos1,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 1 run particle minecraft:enchanted_hit ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 2 run particle minecraft:snowflake ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 3 run particle minecraft:flame ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 4 run particle minecraft:cloud ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 5 run particle minecraft:squid_ink ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 6 run particle minecraft:witch ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..20 if score evilAttackData Temp matches 7 run particle minecraft:smoke ~ ~0.6 ~ 1 1 1 0.5 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 1 run particle minecraft:enchanted_hit ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 2 run particle minecraft:snowflake ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run particle minecraft:flame ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run particle minecraft:cloud ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 5 run particle minecraft:squid_ink ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 6 run particle minecraft:witch ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 7 run particle minecraft:smoke ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation damage tbcStats *= 4 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 1 run scoreboard players add damage tbcStats 30
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 2 run scoreboard players set slowness tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players set fire tbcStats 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set queuex tbcStats -12
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 5 run scoreboard players set blindness tbcStats 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 6 run scoreboard players set poison tbcStats 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 7 run scoreboard players set wither tbcStats 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 at @e[tag=tbcAttackable] if score evilAttackData Temp matches 4 run summon lightning_bolt ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/done
