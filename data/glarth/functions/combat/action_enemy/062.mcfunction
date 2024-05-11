execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy5,type=armor_stand] run scoreboard players set noEnemy Temp 5
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemy Temp 4
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemy Temp 3
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemy Temp 2
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 run function glarth:combat/init_tbc/enemy5
execute if score @s tbcAttackStage matches 1 run scoreboard players set r Random 4
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] if score n Random matches 1..2 run function glarth:combat/entity/skeleton
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] if score n Random matches 3..4 run function glarth:combat/entity/skeleton_knight
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] if score n Random matches 1..2 run function glarth:combat/entity/skeleton_knight
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] if score n Random matches 3 run function glarth:combat/entity/wither_skeleton
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] if score n Random matches 4 run function glarth:combat/entity/stray
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] if score n Random matches 1 run function glarth:combat/entity/skeleton
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] if score n Random matches 2 run function glarth:combat/entity/skeleton_knight
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] if score n Random matches 3 run function glarth:combat/entity/wither_skeleton
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] if score n Random matches 4 run function glarth:combat/entity/stray
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] if score n Random matches 1 run function glarth:combat/entity/skeleton
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] if score n Random matches 2 run function glarth:combat/entity/skeleton_knight
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] if score n Random matches 3 run function glarth:combat/entity/wither_skeleton
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] if score n Random matches 4 run function glarth:combat/entity/stray
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 run tag @e[tag=tbcEnemy2,type=armor_stand] add stage_10
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 run tag @e[tag=tbcEnemy3,type=armor_stand] add stage_10
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 run tag @e[tag=tbcEnemy4,type=armor_stand] add stage_10
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 run tag @e[tag=tbcEnemy5,type=armor_stand] add stage_10
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done