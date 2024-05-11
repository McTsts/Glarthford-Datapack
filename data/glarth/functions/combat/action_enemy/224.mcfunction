execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 1 run scoreboard players set heal Temp 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 2 run scoreboard players set heal Temp 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 3 run scoreboard players set heal Temp 6
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 4 run scoreboard players set heal Temp 8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 5 run scoreboard players set heal Temp 8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 20 run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 0.9
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.heal_enemy_self","with":[[{"score":{"name":"heal","objective":"Temp"},"color":"red"},{"text":".±"}]]}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation absorption Temp = @s tbcHealth
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcHealth < 200 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation absorption Temp -= @s tbcHealth
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 5 run scoreboard players set heal Temp 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation heal Temp *= 10 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcHealth += heal Temp
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcHealth < 200 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcHealth += absorption Temp
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 1 run scoreboard players set @s tbcPoison 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 5 run scoreboard players add @s tbcHealth 40
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 5 run scoreboard players set @s tbcRegeneration 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
