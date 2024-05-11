execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run function glarth:dialogue/necromancer/lines/attack5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage


execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy1
execute if score @s tbcAttackStage matches 1 run tag @s add tbcEnemy4
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcMarkerEnemy4] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..10] ~ ~ ~
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcMarkerEnemy4] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..10] ~ ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/n_beast
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
