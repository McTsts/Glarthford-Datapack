execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_enemy/stages/recode/bat_empress/1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run playsound bat7 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30 run function glarth:dialogue/miner_chief/lines/tbc4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 110 run function glarth:dialogue/miner_chief/lines/tbc5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 300 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.3}

execute if score @s tbcAttackStage matches 2 run function glarth:dialogue/miner_chief/lines/tbc6
execute if score @s tbcAttackStage matches 2 run tellraw @a ""
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/generic/to_target {speed:0.2,next_range:2}

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/swipe/attack {speed:0.05,block_end:15,post_block:16,next_stage:22}

execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.2}

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/generic/to_home {speed:0.2,next_range:0.2}

execute if score @s tbcAttackStage matches 7 run playsound bat8 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/done