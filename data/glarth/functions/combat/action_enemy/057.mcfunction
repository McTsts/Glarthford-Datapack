execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.c"}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/done
