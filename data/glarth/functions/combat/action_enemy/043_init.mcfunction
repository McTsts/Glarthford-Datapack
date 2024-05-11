execute unless entity @e[tag=tbcFireBarrier,type=area_effect_cloud] run scoreboard players set @s tbcAttack 43
execute unless entity @e[tag=tbcFireBarrier,type=area_effect_cloud] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.43","bold":true}]}]
execute unless entity @e[tag=tbcFireBarrier,type=area_effect_cloud] run function glarth:combat/attack_init
execute if entity @e[tag=tbcFireBarrier,type=area_effect_cloud] run function glarth:combat/action_enemy/41_init
