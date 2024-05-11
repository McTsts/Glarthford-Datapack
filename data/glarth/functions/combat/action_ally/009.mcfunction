execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:dialogue/miner_chief/lines/tbc13
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 240 run function glarth:dialogue/miner_chief/lines/tbc14
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 480 run function glarth:dialogue/miner_chief/lines/tbc15
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 480 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run scoreboard players set tbcUnlocked Stats 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run tag @e[tag=tbcEnemy] remove stage_003
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run scoreboard players set @e[tag=tbcEnemy] tbcDodge 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run scoreboard players set @e[tag=tbcEnemy] tbcTOU 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run scoreboard players set @s attack_009 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run scoreboard players set @s attack_002 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 550 run function glarth:combat/action_ally/util/done
