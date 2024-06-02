execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/select_x

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/speed {speed:"default",function:"stages/generic/to_x",args:{}}

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/speed {speed:"default_pre",function:"stages/generic/to_target",args:{}}

execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/speed {speed:"default_attack",function:"stages/swipe/attack",args:{}}

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/speed {speed:"default",function:"stages/generic/to_notx",args:{}}

execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/speed {speed:"default",function:"stages/generic/done/to_home",args:{}}