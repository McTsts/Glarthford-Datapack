# main arrow attack handler
function glarth:combat/action_enemy/attacks/arrow_partial {speed:0.2,min:1,max:3,helper:"arrow"}

# summon 1-3 normal arrows
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/arrow/spawn

# 7-10 skip default attack end
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/skip {skip:3}

# 11 arrow to swipe transition
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/stages/arrow/retreat {speed:0.15,rot_speed:2,next_stage:25}

execute if score @s tbcAttackStage matches 10..11 run function glarth:combat/action_enemy/helper/arrow

execute if score @s tbcAttackStage matches 11 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:0.2,next_range:0.2}

#12 spawn arrow, move to center
execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 12..14 run function glarth:combat/action_enemy/helper/arrow_inactive

execute if score @s tbcAttackStage matches 12..13 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/to_target {speed:0.15,next_range:2}

#14 swipe attack
execute if score @s tbcAttackStage matches 14 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/swipe/attack {speed:0.05,block_end:15,post_block:16,next_stage:16}

#15 start blocking for arrow, wait for arrow helper to finish
execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/stages/generic/instant_block

execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/helper/arrow

#16
execute if score @s tbcAttackStage matches 16 run function glarth:combat/action_enemy/stages/generic/multi/to_home {speed:0.2,next_range:0.2}

execute if score @s tbcAttackStage matches 16 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_center_continue_home {speed:0.2,continue_speed:0.1,next_range:0.2}

#17
execute if score @s tbcAttackStage matches 17 run function glarth:combat/action_enemy/stages/generic/multi/align

execute if score @s tbcAttackStage matches 17 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/done/to_homeid {id:2,speed:0.2,next_range:0.2}