execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run effect give @a blindness 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 run playsound bat6 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# recode bat empress / miner chief to new behaivor
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/recode/bat_empress/3
# switch bat empress to enemy 2
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/switch_from_to {from:1,to:2}
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
# summon illusions
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:1,type:"bat_fake",summoned_command:"function glarth:combat/action_enemy/util/select"}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:3,type:"bat_fake",summoned_command:"function glarth:nothing"}
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/generic/done/wait {delay:50}