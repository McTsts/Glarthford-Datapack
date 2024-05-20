execute unless entity @e[tag=tbcEnemy6] unless entity @e[tag=tbcEnemy7] run scoreboard players set @s tbcAttack 63
execute unless entity @e[tag=tbcEnemy6] unless entity @e[tag=tbcEnemy7] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.63","bold":true}]}]
execute unless entity @e[tag=tbcEnemy6] unless entity @e[tag=tbcEnemy7] run function glarth:combat/attack_init
execute if entity @e[tag=tbcEnemy6] run function glarth:combat/attack
execute unless entity @e[tag=tbcEnemy6] if entity @e[tag=tbcEnemy7] run function glarth:combat/attack

execute if score @s attack_063 matches 1000.. run scoreboard players remove @s attack_063 1000