scoreboard players add @s tbcAttackTimer 1
$execute if score @s tbcAttackTimer matches 11..20 run particle $(particle) ~ ~0.25 ~ 1 1 1 0.1 1
$execute if score @s tbcAttackTimer matches 21..30 run particle $(particle) ~ ~0.25 ~ 1 1 1 0.1 4
$execute if score @s tbcAttackTimer matches 31..40 run particle $(particle) ~ ~0.25 ~ 1 1 1 0.1 16
$execute if score @s tbcAttackTimer matches 41..50 run particle $(particle) ~ ~0.25 ~ 1 1 1 0.1 64
$execute if score @s tbcAttackTimer matches 50 at @s run playsound $(sound) hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage