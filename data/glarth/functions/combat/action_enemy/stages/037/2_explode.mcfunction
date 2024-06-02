scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackTimer matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackTimer matches 0..10 rotated ~ 0 run tp @s ^ ^ ^0.15
execute if score @s tbcAttackTimer matches 16 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3
execute if score @s tbcAttackTimer matches 16 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats *= 5 Const
execute if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats /= 2 Const
execute if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackTimer matches 17 as @a[scores={tbcHealth=..0,playerid=1..},gamemode=adventure] run function glarth:combat/die_player
execute if score @s tbcAttackTimer matches 17 run function glarth:combat/die_enemy