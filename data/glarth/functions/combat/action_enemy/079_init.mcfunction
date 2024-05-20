execute if score @s attack_079 matches 3.. run scoreboard players set @s tbcAttack 79
execute if score @s attack_079 matches 3.. run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.79","bold":true}]}]
execute if score @s attack_079 matches 3.. run function glarth:combat/attack_init
execute if score @s attack_079 matches ..2 run function glarth:combat/attack