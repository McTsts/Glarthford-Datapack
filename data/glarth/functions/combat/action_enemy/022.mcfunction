execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run effect give @a blindness 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 run playsound bat6 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# recode bat empress / miner chief to new behaivor
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcAlly] attack_002 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcAlly] attack_003 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_022 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_001 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_002 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_023 1
# switch bat empress to enemy 2
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy1
execute if score @s tbcAttackStage matches 1 run tag @s add tbcEnemy2
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcMarkerEnemy2] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..5] ~ ~ ~
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcMarkerEnemy2] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..5] ~ ~ ~
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
# summon illusions
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:1,type:"bat_fake",summoned_command:"function glarth:combat/action_enemy/util/select"}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:3,type:"bat_fake",summoned_command:"function glarth:nothing"}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/generic/done/wait {delay:50}