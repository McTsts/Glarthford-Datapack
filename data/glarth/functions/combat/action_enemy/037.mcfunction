execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 run scoreboard players add creeperTimer Temp 1
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 run scoreboard players add creeperTimer Temp 2
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..5] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 run scoreboard players add creeperTimer Temp 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 0..10 rotated ~ 0 run tp @s ^ ^ ^0.15
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats *= 5 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats /= 2 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17 as @a[scores={tbcHealth=..0,playerid=1..},gamemode=adventure] run function glarth:combat/die_player
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17 run function glarth:combat/die_enemy

execute if score creeperTimer Temp matches 1..4 run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":147}}]}
execute if score creeperTimer Temp matches 1..4 run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":47}}]}
execute if score creeperTimer Temp matches 5..8 run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":46}}]}
execute if score creeperTimer Temp matches 5..8 run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":46}}]}
execute if score creeperTimer Temp matches 8.. run scoreboard players remove creeperTimer Temp 8