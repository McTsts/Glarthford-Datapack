execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 40 at @s as @e[distance=..1.5] at @s run tp @s ~ ~2 ~-4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/ep_guard
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/ep_guard
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run tag @s add tbcLonely
execute if score @s tbcAttackStage matches 1 run tag @s add tbcUnselectable
execute if score @s tbcAttackStage matches 1 run tag @s add stage_053
execute if score @s tbcAttackStage matches 1 if score @s tbcSel matches 1.. at @s run tag @e[tag=tbcEnemy,tag=!tbcUnselectable] add rand_sel
execute if score @s tbcAttackStage matches 1 if score @s tbcSel matches 1.. at @s run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 1 if score @s tbcSel matches 1.. at @s run scoreboard players set @e[tag=rand_sel_result] tbcSel 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s tbcSel 0
execute if score @s tbcAttackStage matches 1 at @s unless entity @e[tag=tbcEnemy,distance=0.1..] run kill @e[tag=tbcSelector]
execute if score @s tbcAttackStage matches 1 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run scoreboard players set @s attack_061 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run scoreboard players set @s attack_215 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run scoreboard players set @s attack_189 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run scoreboard players set @s attack_060 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run scoreboard players set @s attack_128 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done