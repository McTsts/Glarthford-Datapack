# start
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 1 run scoreboard players set heal Temp 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 2 run scoreboard players set heal Temp 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 3 run scoreboard players set heal Temp 6
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 4 run scoreboard players set heal Temp 8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 5 run scoreboard players set heal Temp 8
# generic
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 20 run playsound minecraft:entity.generic.drink master @a ~ ~ ~ 1 0.9
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 if score evilAttackData Temp matches 20 run particle minecraft:effect ~ ~ ~ 1 1 1 1 10
# heal
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players operation absorption Temp = @s tbcHealth
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players operation @s tbcHealth < 200 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players operation absorption Temp -= @s tbcHealth
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players add @s tbcHealth 80
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players operation @s tbcHealth < 200 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run scoreboard players operation @s tbcHealth += absorption Temp
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 3 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.heal_enemy_self","with":[{"text":"8.0","color":"red"}]}]
# speed
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 1 run scoreboard players set @s tbcSpeed 5
# fire resistance
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 2 run tag @s remove tbcWeakFire
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 2 run tag @s add tbcImFire
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 2 run scoreboard players set @s tbcFire 0
# milk
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set @s tbcFire 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set @s tbcStun 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set @s tbcBee 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set @s tbcBlindness 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set @s tbcFreeze -1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 if score evilAttackData Temp matches 4 run scoreboard players set @s tbcPoison 0
# end
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_enemy/util/done
