execute unless entity @e[tag=tbcWitherBarrier,type=area_effect_cloud] run scoreboard players set @s tbcAttack 212
execute unless entity @e[tag=tbcWitherBarrier,type=area_effect_cloud] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.212","bold":true}]}]
execute unless entity @e[tag=tbcWitherBarrier,type=area_effect_cloud] run function glarth:combat/attack_init
execute if entity @e[tag=tbcWitherBarrier,type=area_effect_cloud] run function glarth:combat/attack
