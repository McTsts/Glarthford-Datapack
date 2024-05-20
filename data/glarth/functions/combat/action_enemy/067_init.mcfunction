execute if score enemiesAll tbcStats matches ..2 run scoreboard players set @s tbcAttack 67
execute if score enemiesAll tbcStats matches ..2 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.67","bold":true}]}]
execute if score enemiesAll tbcStats matches ..2 run function glarth:combat/attack_init
execute if score enemiesAll tbcStats matches 3.. run function glarth:combat/attack
