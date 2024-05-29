scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] if score @s inBlock matches 0 run function glarth:combat/action/blocking_init
execute if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start