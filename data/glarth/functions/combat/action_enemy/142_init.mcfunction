execute if score enemiesAll tbcStats matches ..4 run scoreboard players set @s tbcAttack 142
execute if score enemiesAll tbcStats matches ..4 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.142","bold":true}]}]
execute if score enemiesAll tbcStats matches ..4 run function glarth:combat/attack_init
execute if score enemiesAll tbcStats matches 5.. run function glarth:combat/attack
