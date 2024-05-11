execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:block soul_sand ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:block soul_sand ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:block soul_sand ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:block soul_sand ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcStrWither,limit=1] remove stage_057
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcStrWither,limit=1] remove death_027
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcStrWither,limit=1] add stage_058
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcStrWither,limit=1] add death_028
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcStrWither,limit=1] tbcMaxHealth 150
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcStrWither,limit=1] tbcHealth 150
execute if score @s tbcAttackStage matches 1 run data merge entity @e[tag=tbcStrWither,limit=1] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.wither","color":"dark_gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:495}}],CustomNameVisible:0,CustomName:"{\"translate\":\"tbc.enemy.golem.wither\",\"color\":\"dark_gray\"}"}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done