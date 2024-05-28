scoreboard players add @s tbcAttackTimer 1
$tp @s ^$(speed) ^ ^
$execute if score @s tbcAttackTimer matches $(block_init) as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
$execute if score @s tbcAttackTimer matches $(next_stage) run function glarth:combat/action_enemy/util/ready