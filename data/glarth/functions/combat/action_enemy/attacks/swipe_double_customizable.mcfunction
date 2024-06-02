#0
$execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:$(walk_speed),next_range:$(next_range)}

#1
$execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_target {speed:$(pre_attack_speed),next_range:$(attack_range)}

#2
$execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/swipe/attack_multi_customizable {speed:$(attack_speed),block_end:$(block_end),post_block:$(post_block),next_stage:$(attack_end),particle:"$(particle)",function:"$(function)"}

$execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:$(walk_speed),next_range:$(next_range)}

#3
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/swipe/retreat {speed:0.1,block_init:5,next_stage:15}

$execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_target {speed:$(pre_attack_speed),next_range:$(attack_range)}

#4
$execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/generic/multi/to_center_continue_home {speed:$(walk_speed),continue_speed:$(continue_speed),next_range:$(next_range)}

$execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/swipe/attack_multi_customizable {speed:$(attack_speed),block_end:$(block_end),post_block:$(post_block),next_stage:$(attack_end),particle:"$(particle)",function:"$(function)"}

#5
$execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/generic/multi/to_home {speed:$(walk_speed),next_range:$(next_range)}

$execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:$(walk_speed),next_range:$(next_range)}

#6
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/generic/multi/align

$execute if score @s tbcAttackStage matches 6 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/to_homeid {id:2,speed:$(walk_speed),next_range:$(next_range)}

#7
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/done