scoreboard players add @s tbcAttackTimer 1
scoreboard players operation rec Temp = @s tbcAttackTimer
$scoreboard players operation rec Temp *= $(speed) Const
execute at @s at @e[tag=charQE,limit=1,sort=nearest] positioned ^1.025 ^0.95 ^0.65 run function glarth:combat/action_enemy/helper/fishing_rod