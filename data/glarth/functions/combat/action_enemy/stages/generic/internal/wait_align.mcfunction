scoreboard players add @s tbcAttackTimer 1
$execute if score @s tbcAttackTimer matches $(align) facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
$execute if score @s tbcAttackTimer matches $(delay) run function glarth:combat/action_enemy/util/$(post)