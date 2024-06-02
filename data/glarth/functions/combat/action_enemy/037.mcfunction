execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/to_center",args:{}}

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_target {speed:0.2,next_range:5}

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/037/2_explode

function glarth:combat/action_enemy/stages/037/animation