execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_015 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_016 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 120 run function glarth:dialogue/illusioner_s/lines/tbc1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 320 run function glarth:dialogue/illusioner_s/lines/tbc2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 520 run function glarth:dialogue/illusioner_s/lines/tbc3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 740 run function glarth:dialogue/illusioner_s/lines/tbc4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 740 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 790 run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 790 run function glarth:combat/action_ally/util/done
