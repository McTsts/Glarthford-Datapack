execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:dialogue/miner_chief/lines/tbc9
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 180 run function glarth:dialogue/miner_chief/lines/tbc10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 180 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 350 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 350 run scoreboard players set tbcUnlocked Stats 5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 350 run scoreboard players set @s attack_008 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 350 run scoreboard players set @s attack_004 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 355 run function glarth:combat/action_ally/util/done
scoreboard players operation @a[tag=inTBC] tbcStamina > 7 Const