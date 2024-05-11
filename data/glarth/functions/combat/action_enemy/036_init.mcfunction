execute unless entity @e[tag=tbcEvokerFangs,type=area_effect_cloud] run scoreboard players set @s tbcAttack 36
execute unless entity @e[tag=tbcEvokerFangs,type=area_effect_cloud] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.36","bold":true}]}]
execute unless entity @e[tag=tbcEvokerFangs,type=area_effect_cloud] run function glarth:combat/attack_init
execute if entity @e[tag=tbcEvokerFangs,type=area_effect_cloud] run function glarth:combat/attack
