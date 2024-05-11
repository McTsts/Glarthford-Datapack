execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.7
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @e[tag=tbcTarget,limit=1] tbcBlindness 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
