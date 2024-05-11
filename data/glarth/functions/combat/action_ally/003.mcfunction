execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_003 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_004 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:dialogue/miner_chief/lines/tbc7
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run function glarth:dialogue/miner_chief/lines/tbc8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run scoreboard players set tbcUnlocked Stats 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run function glarth:combat/action_ally/util/done
