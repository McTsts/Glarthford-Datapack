execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center_timed {speed:0.2,time:20}

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/wait_align {align:5,delay:20}

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/fangs/spawn

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/fangs/spawn

execute if score @s tbcAttackStage matches 2..6 run function glarth:combat/action_enemy/helper/fangs

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/generic/wait {delay:20}

execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/stages/generic/done/to_home {speed:0.2,next_range:0.2}