execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_005 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_007 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 60 run function glarth:dialogue/bowm/lines/tbc1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 210 run function glarth:dialogue/bowm/lines/tbc2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 450 run function glarth:dialogue/bowm/lines/tbc3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 450 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 480 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 480 run function glarth:combat/action_ally/util/done
