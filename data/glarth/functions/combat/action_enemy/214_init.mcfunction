execute unless entity @s[tag=stage_065] run scoreboard players set @s tbcAttack 214
execute unless entity @s[tag=stage_065] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.214","bold":true}]}]
execute unless entity @s[tag=stage_065] run function glarth:combat/attack_init
execute unless entity @s[tag=stage_065] run scoreboard players remove @s attack_214 1
execute if entity @s[tag=stage_065] run function glarth:combat/attack