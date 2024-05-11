execute unless entity @s[tag=tbcDontBars] run scoreboard players set @s tbcAttack 174
execute unless entity @s[tag=tbcDontBars] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.174","bold":true}]}]
execute unless entity @s[tag=tbcDontBars] run function glarth:combat/attack_init
execute if entity @s[tag=tbcDontBars] run function glarth:combat/attack