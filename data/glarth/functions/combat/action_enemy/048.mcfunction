execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run playsound minecraft:weather.rain hostile @a ~ ~ ~ 3 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:lava ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:lava ~ ~0.25 ~ 1 1 1 0.2 8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:lava ~ ~0.25 ~ 1 1 1 0.3 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:lava ~ ~0.25 ~ 1 1 1 0.4 32
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run playsound minecraft:entity.lava_rocket.launch hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1 at @e[tag=tbcTargetAS,type=armor_stand] run summon minecraft:armor_stand ~ ~4 ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMeteor"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..35 as @e[tag=tbcMeteor,type=armor_stand] at @s run tp @s ~ ~-0.1 ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..35 at @e[tag=tbcMeteor,type=armor_stand] run particle minecraft:flame ~ ~ ~ 0 0 0 0.02 4
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 at @e[tag=tbcMeteor,type=armor_stand] run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 20
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 at @e[tag=tbcMeteor,type=armor_stand] run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 20
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 at @e[tag=tbcMeteor,type=armor_stand] run particle minecraft:lava ~ ~ ~ 0 0 0 0.3 20
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 at @e[tag=tbcMeteor,type=armor_stand] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 22 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 run function glarth:combat/action_enemy/util/done

