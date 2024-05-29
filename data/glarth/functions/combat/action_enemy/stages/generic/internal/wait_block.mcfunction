scoreboard players add @s tbcAttackTimer 1
$execute if score @s tbcAttackTimer matches $(block) as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
$execute if score @s tbcAttackTimer matches $(delay) run function glarth:combat/action_enemy/util/$(post)