execute if score enemiesAll tbcStats matches ..2 run scoreboard players set @s tbcAttack 131
execute if score enemiesAll tbcStats matches ..2 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.131","bold":true}]}]
execute if score enemiesAll tbcStats matches ..2 run scoreboard players set @e[tag=tbcEnemy] attack_131 0
execute if score enemiesAll tbcStats matches ..2 run function glarth:combat/attack_init
execute if score enemiesAll tbcStats matches 3.. run function glarth:combat/attack
