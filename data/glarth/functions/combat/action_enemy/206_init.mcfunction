execute unless entity @s[tag=tbcSkipGolem] run scoreboard players set @s tbcAttack 206
execute unless entity @s[tag=tbcSkipGolem] run scoreboard players set @e[tag=tbcBoss] attack_206 0
execute unless entity @s[tag=tbcSkipGolem] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.206","bold":true}]}]
execute unless entity @s[tag=tbcSkipGolem] run function glarth:combat/attack_init
execute if entity @s[tag=tbcSkipGolem] run function glarth:combat/attack
tag @s remove tbcSkipGolem