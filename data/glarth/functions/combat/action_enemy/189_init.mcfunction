execute unless entity @e[tag=tbcEnemy2] unless entity @e[tag=tbcEnemy3] run scoreboard players set @s tbcAttack 189
execute unless entity @e[tag=tbcEnemy2] unless entity @e[tag=tbcEnemy3] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.189","bold":true}]}]
execute unless entity @e[tag=tbcEnemy2] unless entity @e[tag=tbcEnemy3] run function glarth:combat/attack_init
execute if entity @e[tag=tbcEnemy2] run function glarth:combat/attack
execute unless entity @e[tag=tbcEnemy2] if entity @e[tag=tbcEnemy3] run function glarth:combat/attack
