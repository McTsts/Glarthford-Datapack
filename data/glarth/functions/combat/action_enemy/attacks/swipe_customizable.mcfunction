# walk to center
$execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:$(walk_speed),next_range:$(next_range)}

# walk to target
$execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_target {speed:$(pre_attack_speed),next_range:$(attack_range)}

# execute attack
$execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/swipe/attack_customizable {speed:$(attack_speed),block_end:$(block_end),post_block:$(post_block),next_stage:$(attack_end),particle:"$(particle)",function:"$(function)"}

# walk to center
$execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/generic/to_center {speed:$(walk_speed),next_range:$(next_range)}

# walk to home
$execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/generic/to_home_done {speed:$(walk_speed),next_range:$(next_range)}