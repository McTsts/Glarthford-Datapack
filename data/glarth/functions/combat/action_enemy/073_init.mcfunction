execute unless entity @s[tag=tbcDontShield] run scoreboard players set @s tbcAttack 73
execute unless entity @s[tag=tbcDontShield] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.73","bold":true}]}]
execute unless entity @s[tag=tbcDontShield] run function glarth:combat/attack_init
execute if entity @s[tag=tbcDontShield] run function glarth:combat/attack