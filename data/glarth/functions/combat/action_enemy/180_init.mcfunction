execute if score enemies tbcStats matches ..2 run scoreboard players set @s tbcAttack 180
execute if score enemies tbcStats matches ..2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.180","bold":true}]}]
execute if score enemies tbcStats matches ..2 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 3.. run function glarth:combat/attack
