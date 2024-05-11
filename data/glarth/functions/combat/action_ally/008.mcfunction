execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:dialogue/miner_chief/lines/tbc11
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 160 run function glarth:dialogue/miner_chief/lines/tbc12
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 160 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run scoreboard players set tbcUnlocked Stats 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run scoreboard players set @s attack_008 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run scoreboard players set @s attack_009 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run function glarth:combat/action_ally/util/done
