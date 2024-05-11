execute if score @s tbcAttackStage matches 0 at @e[tag=tbcEnemy,tag=!tbcTurn,limit=1] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. run scoreboard players operation rec Temp = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. run scoreboard players operation rec Temp *= 25 Const
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. at @e[tag=tbcActualCrystal] positioned ~ ~0.75 ~ run function glarth:combat/action_enemy/helper/laser
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1.. if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1.. run scoreboard players set rec Temp 1000000
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1.. at @e[tag=tbcActualCrystal] positioned ~ ~0.75 ~ run function glarth:combat/action_enemy/helper/laser
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players add @e[tag=tbcEnemy,tag=!tbcTurn,limit=1,tag=!tbcEndCrystal] tbcHealth 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.heal_enemy","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcEnemy,tag=!tbcTurn,limit=1]","interpret":true},{"text":"1±.±","color":"red"}]}]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/done