execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy1] run scoreboard players set curID Temp 1
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy2] run scoreboard players set curID Temp 2
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy3] run scoreboard players set curID Temp 3
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy1
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy2
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy3
execute if score @s tbcAttackStage matches 1 run tag @s add tbcInvisibleDeath
execute if score @s tbcAttackStage matches 1 run tag @s add tbcManualDeath
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcBoss
execute if score @s tbcAttackStage matches 1 run function glarth:combat/kill_enemy
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/ep_tiny
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/ep_tiny
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/ep_tiny
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run scoreboard players operation epHealth Temp = @s tbcHealth
execute if score @s tbcAttackStage matches 1 run scoreboard players operation @e[tag=tbcEnderPriestTiny] tbcMaxHealth = @s tbcMaxHealth
execute if score @s tbcAttackStage matches 1 run scoreboard players operation @e[tag=tbcEnderPriestTiny] tbcHealth = @s tbcHealth
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 1 run scoreboard players set @e[tag=tbcEnemy1] tbcSel 1
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 2 run scoreboard players set @e[tag=tbcEnemy2] tbcSel 1
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 3 run scoreboard players set @e[tag=tbcEnemy3] tbcSel 1
execute if score @s tbcAttackStage matches 1 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 1 run kill @s
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/done
