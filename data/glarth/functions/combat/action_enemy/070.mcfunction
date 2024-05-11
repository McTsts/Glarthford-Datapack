execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run data merge entity @s[tag=tbcShulker] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.shulker","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:207}}]}
execute if score @s tbcAttackStage matches 1 run data merge entity @s[tag=tbcShulkerFake] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.ender_priest.shulker","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:207}}]}
execute if score @s tbcAttackStage matches 1 run data merge entity @s[tag=tbcShulkerGuardian] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"gold"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:421}}]}
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s tbcArmor 1000
execute if score @s tbcAttackStage matches 1 run tag @s add stage_009
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done