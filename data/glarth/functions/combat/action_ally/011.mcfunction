execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..5 run particle minecraft:entity_effect ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..10 run particle minecraft:entity_effect ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..15 run particle minecraft:entity_effect ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players set heal tbcStats 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation heal tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation heal tbcStats /= 2 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation heal tbcStats /= 10 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if entity @s[tag=tbcSpouse] if score @s charType matches 2 run function glarth:dialogue/wife/lines/tbc
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation @e[tag=inTBC,tag=tbcAttackable] tbcHealth += heal tbcStats
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.aoe_heal","with":[{"score":{"name":"heal","objective":"tbcStats"},"color":"green"}]}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_ally/util/done
