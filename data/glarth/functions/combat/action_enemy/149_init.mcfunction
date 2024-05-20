execute unless entity @s[tag=tbcSkipGolem] run scoreboard players set @s tbcAttack 149
execute unless entity @s[tag=tbcSkipGolem] run scoreboard players set @s attack_149 0
execute unless entity @s[tag=tbcSkipGolem] run tag @s add tbcAnotherTurn
execute unless entity @s[tag=tbcSkipGolem] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.149","bold":true}]}]
execute unless entity @s[tag=tbcSkipGolem] run function glarth:combat/attack_init
execute if entity @s[tag=tbcSkipGolem] run function glarth:combat/attack
tag @s remove tbcSkipGolem