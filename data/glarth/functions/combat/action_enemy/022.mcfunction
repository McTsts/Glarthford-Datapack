execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run effect give @a blindness 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 run playsound bat6 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage


execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcAlly] attack_002 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcAlly] attack_003 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_022 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_001 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_002 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_023 1
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy1
execute if score @s tbcAttackStage matches 1 run tag @s add tbcEnemy2
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcMarkerEnemy2] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..5] ~ ~ ~
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcMarkerEnemy2] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..5] ~ ~ ~
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 1 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/bat_fake
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/bat_fake
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcEnemy1] tbcSel 1
execute if score @s tbcAttackStage matches 1 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done