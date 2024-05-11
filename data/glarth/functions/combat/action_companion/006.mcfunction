execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 15.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 18.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20.. run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run scoreboard players set damage tbcStats 20
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_companion/util/aoe
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run scoreboard players add @e[tag=tbcEnemy,tag=!tbcUnselectable] tbcFire 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/done