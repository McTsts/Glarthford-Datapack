execute if score enemies tbcStats matches ..4 run scoreboard players set @s tbcAttack 23
execute if score enemies tbcStats matches ..4 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.23","bold":true}]}]
execute if score enemies tbcStats matches ..4 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 5.. run function glarth:combat/attack
