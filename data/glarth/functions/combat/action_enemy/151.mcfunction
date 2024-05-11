execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:block iron_block ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:block iron_block ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:block iron_block ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:block iron_block ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcIronGolem,limit=1] remove death_017
execute if score @s tbcAttackStage matches 1 run data merge entity @e[tag=tbcStrIronGolem,limit=1] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.iron","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":378}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.iron","color":"white"}'}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 at @e[tag=tbcStrIronGolem,limit=1] run particle block iron_block ~ ~1 ~ 0.5 0.5 0.5 0.5 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run tag @e[tag=tbcStrIronGolem,limit=1] remove tbcEnemy4
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run tag @e[tag=tbcStrIronGolem,limit=1] add tbcInvisibleDeath
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[tag=tbcStrIronGolem,limit=1] run function glarth:combat/kill_enemy
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[tag=tbcEnemy4] run function glarth:combat/entity/iron_golem
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:dialogue/iron_golem/lines/attack1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done