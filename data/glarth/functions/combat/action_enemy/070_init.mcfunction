execute unless entity @s[tag=tbcDontShell] run scoreboard players set @s tbcAttack 70
execute unless entity @s[tag=tbcDontShell] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.70","bold":true}]}]
execute unless entity @s[tag=tbcDontShell] run function glarth:combat/attack_init
execute if entity @s[tag=tbcDontShell] run function glarth:combat/attack