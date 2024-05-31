execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:0.2,next_range:2}

execute if score @s tbcAttackStage matches 0 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/stages/fishing_rod/hold

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/multi/to_center {speed:0.2,next_range:0.3}

# use rod mid swipe attack
execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2},tag=!tbcReady] run function glarth:combat/action_enemy/stages/fishing_rod/create {speed:25}

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2},tag=!tbcReady] run function glarth:combat/action_enemy/stages/fishing_rod/drag {id:2,end:12,speed:0.15,post:"ready"}

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/generic/multi/to_target {speed:0.15,next_range:3}

# swipe with custom moving, because the fishing rod location is a bit unpredictable
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/swipe/attack {speed:0.0,block_end:10,post_block:11,next_stage:15}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..10 at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.5] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet run tp @s ^ ^ ^0.1

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.2}

# start moving target to home outside stage system
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/generic/to_home {speed:0.2,next_range:0.2}
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/generic/side/target_to_home {speed:0.05,next_range:0.05}

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/generic/done/target_to_home {speed:0.2,next_range:0.2}