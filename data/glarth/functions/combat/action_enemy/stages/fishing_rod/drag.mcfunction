scoreboard players add @s tbcAttackTimer 1
$execute if score @s tbcAttackTimer matches 1..$(end) as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[scores={tbcID=$(id)}] feet run tp @s ^ ^ ^$(speed)
$execute if score @s tbcAttackTimer matches $(end) run function glarth:combat/action_enemy/util/$(post)