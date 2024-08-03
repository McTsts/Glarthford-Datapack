scoreboard players add @s tbcAttackTimer 1
$execute if score @s tbcAttackTimer matches $(init) as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
$execute if score @s tbcAttackTimer matches $(throw) as @e[tag=tbcTNT,limit=1,sort=random] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
$execute if score @s tbcAttackTimer matches $(throw) run function glarth:combat/action_enemy/util/next_stage