execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 run function glarth:dialogue/archaeologist/lines/tbc1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 170 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 170 run scoreboard players set @a MusicSet 53
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 170 run function glarth:combat/action_ally/util/done
