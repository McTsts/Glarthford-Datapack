scoreboard players add @s tbcAttackTimer 1
$execute if score @s tbcAttackTimer matches 5..$(next_stage) run tp @s ^$(speed) ^ ^ ~$(rot_speed) ~
$execute if score @s tbcAttackTimer matches $(next_stage) run function glarth:combat/action_enemy/util/ready