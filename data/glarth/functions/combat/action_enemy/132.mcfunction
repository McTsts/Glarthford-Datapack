execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 at @s run particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.1 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 at @s run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players add @s tbcCharge 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
