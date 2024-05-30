execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run playsound bat5 voice @a ~ ~ ~ 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.3}

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/generic/to_target {speed:0.2,next_range:2}

# use default swipe attack pattern, but recode bat empress to use 022 next if blocked successfully
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/swipe/attack {speed:0.05,block_end:15,post_block:16,next_stage:22}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run scoreboard players set @s attack_021 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run scoreboard players set @s attack_022 1

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.2}

execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/generic/done/to_home {speed:0.2,next_range:0.2}