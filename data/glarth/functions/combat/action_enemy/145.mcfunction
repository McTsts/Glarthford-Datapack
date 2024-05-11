execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:block snow ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:block snow ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:block snow ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:block snow ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcStrSnowGolem,limit=1] remove death_012
execute if score @s tbcAttackStage matches 1 run data merge entity @e[tag=tbcStrSnowGolem,limit=1] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.snow","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:372}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.snow\",\"color\":\"white\"}"}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 at @e[tag=tbcStrSnowGolem,limit=1] run particle block snow ~ ~1 ~ 0.5 0.5 0.5 0.5 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run tag @e[tag=tbcStrSnowGolem,limit=1] remove tbcEnemy4
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run tag @e[tag=tbcStrSnowGolem,limit=1] add tbcInvisibleDeath
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[tag=tbcStrSnowGolem,limit=1] run function glarth:combat/kill_enemy
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[tag=tbcEnemy4] run function glarth:combat/entity/snow_golem
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done