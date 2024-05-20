execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..5 run particle minecraft:entity_effect{color:[1,0,1,1]} ~ ~ ~ 0.5 0.5 0.5 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..10 run particle minecraft:entity_effect{color:[1,0,1,1]} ~ ~ ~ 0.5 0.5 0.5 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..15 run particle minecraft:entity_effect{color:[1,0,1,1]} ~ ~ ~ 0.5 0.5 0.5 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players set heal tbcStats 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation heal tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation @e[tag=tbcEnemy] tbcHealth += heal tbcStats
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation healX tbcStats = heal tbcStats
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation healX tbcStats %= 10 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players operation heal tbcStats /= 10 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 at @e[tag=tbcEnemy] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.aoe_heal_enemy","with":[{"score":{"name":"heal","objective":"tbcStats"},"color":"green"},".",{"score":{"name":"healX","objective":"tbcStats"}}]}]
execute if score @s tbcAttackStage matches 0 if score @s[tag=stage_012] tbcAttackTimer matches 10 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.empowered","with":[{"text":"1","color":"blue"}]}]
execute if score @s tbcAttackStage matches 0 if score @s[tag=stage_012] tbcAttackTimer matches 10 run scoreboard players add @s tbcStrength 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done
