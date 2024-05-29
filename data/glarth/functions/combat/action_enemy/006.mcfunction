#0
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.35,next_range:0.35}

#1
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_target {speed:0.2,next_range:2}

#2
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/swipe/attack_multi {speed:0.05,block_end:15,post_block:16,next_stage:22}

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:0.4,next_range:0.4}

#3
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/swipe/retreat {speed:0.1,block_init:5,next_stage:15}

execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_target {speed:0.2,next_range:2}

#4
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/generic/multi/to_center_continue_home {speed:0.35,continue_speed:0.15,next_range:0.4}

execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/swipe/attack_multi {speed:0.05,block_end:15,post_block:16,next_stage:22}

#5
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/generic/multi/to_home {speed:0.35,next_range:0.35}

execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:0.35,next_range:0.35}

#6
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/generic/multi/align

execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_homeid {id:2,speed:0.35,next_range:0.35}

#7
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/done