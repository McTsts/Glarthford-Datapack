scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
$execute if score @s tbcAttackTimer matches 20 run tag @e[tag=rand_sel_result_$(num),limit=1] add tbcBoneSel
execute if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage