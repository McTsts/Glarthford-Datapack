execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy5,type=armor_stand] run scoreboard players set noEnemy Temp 5
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemy Temp 4
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemy Temp 3
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemy Temp 2
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy1,type=armor_stand] run scoreboard players set noEnemy Temp 1
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 run function glarth:combat/init_tbc/enemy5
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 11..20 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 21..30 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31..40 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 41..50 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 unless entity @e[tag=tbcEnemy5,type=armor_stand] run scoreboard players set noEnemy Temp 5
execute if score @s tbcAttackStage matches 3 unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemy Temp 4
execute if score @s tbcAttackStage matches 3 unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemy Temp 3
execute if score @s tbcAttackStage matches 3 unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemy Temp 2
execute if score @s tbcAttackStage matches 3 unless entity @e[tag=tbcEnemy1,type=armor_stand] run scoreboard players set noEnemy Temp 1
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 2 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 3 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 4 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 5 run function glarth:combat/init_tbc/enemy5
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 3 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 11..20 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 21..30 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 31..40 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 41..50 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 unless entity @e[tag=tbcEnemy5,type=armor_stand] run scoreboard players set noEnemy Temp 5
execute if score @s tbcAttackStage matches 5 unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemy Temp 4
execute if score @s tbcAttackStage matches 5 unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemy Temp 3
execute if score @s tbcAttackStage matches 5 unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemy Temp 2
execute if score @s tbcAttackStage matches 5 unless entity @e[tag=tbcEnemy1,type=armor_stand] run scoreboard players set noEnemy Temp 1
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 2 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 3 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 4 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 5 run function glarth:combat/init_tbc/enemy5
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 11..20 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 21..30 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 31..40 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 41..50 run particle minecraft:dragon_breath ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 unless entity @e[tag=tbcEnemy5,type=armor_stand] run scoreboard players set noEnemy Temp 5
execute if score @s tbcAttackStage matches 7 unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemy Temp 4
execute if score @s tbcAttackStage matches 7 unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemy Temp 3
execute if score @s tbcAttackStage matches 7 unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemy Temp 2
execute if score @s tbcAttackStage matches 7 unless entity @e[tag=tbcEnemy1,type=armor_stand] run scoreboard players set noEnemy Temp 1
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 2 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 3 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 4 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 5 run function glarth:combat/init_tbc/enemy5
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/entity/ep_crystal
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run tag @s add tbcUnselectable
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcEnemy,tag=!tbcUnselectable] add rand_sel
execute if score @s tbcAttackStage matches 8 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 8 run scoreboard players set @e[tag=rand_sel_result] tbcSel 1
execute if score @s tbcAttackStage matches 8 run scoreboard players set @s tbcSel 0
execute if score @s tbcAttackStage matches 8 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 8 run function glarth:mechanic/dim_end/forcefield_tbc
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done