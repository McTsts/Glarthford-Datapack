execute unless entity @s[tag=tbcSkipGolem] run scoreboard players set @s tbcAttack 147
execute unless entity @s[tag=tbcSkipGolem] run scoreboard players set @s attack_147 0
execute unless entity @s[tag=tbcSkipGolem] run tag @s add tbcAnotherTurn
execute unless entity @s[tag=tbcSkipGolem] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.147","bold":true}]}]
execute unless entity @s[tag=tbcSkipGolem] run function glarth:combat/attack_init
execute if entity @s[tag=tbcSkipGolem] run function glarth:combat/attack
tag @s remove tbcSkipGolem