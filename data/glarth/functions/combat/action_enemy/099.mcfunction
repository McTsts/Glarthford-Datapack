execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcIllusionerFake] add rand_sel
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tag @e[tag=rand_sel_result,limit=1] add tbcIFTemp
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..5 run particle minecraft:smoke ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..5 at @e[tag=tbcIFTemp] run particle minecraft:smoke ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..10 run particle minecraft:smoke ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..10 at @e[tag=tbcIFTemp] run particle minecraft:smoke ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..15 run particle minecraft:smoke ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..15 at @e[tag=tbcIFTemp] run particle minecraft:smoke ~ ~ ~ 1 0 1 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players add @e[tag=tbcEnemy] tbcHealth 40
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 at @e[tag=tbcEnemy] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 at @e[tag=tbcIFTemp] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 as @e[tag=tbcIFTemp] run function glarth:combat/kill_enemy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.heal_enemy","with":[{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":"4.±","color":"red"}]}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done
