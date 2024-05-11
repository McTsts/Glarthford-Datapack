execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 40 at @s as @e[distance=..1.5] at @s run tp @s ~7 ~2 ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy6
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy7
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy6,type=armor_stand] run function glarth:combat/entity/skeleton_guard
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy7,type=armor_stand] run function glarth:combat/entity/skeleton_guard
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy6,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy7,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run tag @s add tbcLonely
execute if score @s tbcAttackStage matches 1 run tag @s add tbcUnselectable
execute if score @s tbcAttackStage matches 1 run tag @s add stage_008
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_063 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_062 1
execute if score @s tbcAttackStage matches 1 if score @s tbcSel matches 1.. at @s run tag @e[tag=tbcEnemy,tag=!tbcUnselectable] add rand_sel
execute if score @s tbcAttackStage matches 1 if score @s tbcSel matches 1.. at @s run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 1 if score @s tbcSel matches 1.. at @s run scoreboard players set @e[tag=rand_sel_result] tbcSel 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s tbcSel 0
execute if score @s tbcAttackStage matches 1 at @s unless entity @e[tag=tbcEnemy,distance=0.1..] run kill @e[tag=tbcSelector]
execute if score @s tbcAttackStage matches 1 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done