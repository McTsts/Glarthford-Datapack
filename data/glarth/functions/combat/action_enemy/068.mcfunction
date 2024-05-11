execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1.. at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10.. at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20.. at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30.. at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 40.. at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.7
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @e[tag=tbcTarget,limit=1] tbcPoison 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
