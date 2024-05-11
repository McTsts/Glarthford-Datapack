execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.royal_knight","color":"gold"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:238}}]}
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s tbcArmor 1000
execute if score @s tbcAttackStage matches 1 run tag @s add stage_011
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done