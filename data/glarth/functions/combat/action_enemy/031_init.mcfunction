execute if score enemies tbcStats matches ..2 run scoreboard players set @s tbcAttack 31
execute if score enemies tbcStats matches ..2 unless entity @s[tag=tbcSummoner] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.31","bold":true}]}]
execute if score enemies tbcStats matches ..2 if entity @s[tag=tbcSummoner] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.18","bold":true}]}]
execute if score enemies tbcStats matches ..2 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 3.. run function glarth:combat/attack
