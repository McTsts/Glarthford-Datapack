execute if score enemies tbcStats matches 1 run scoreboard players set @s tbcAttack 182
execute if score enemies tbcStats matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.182","bold":true}]}]
execute if score enemies tbcStats matches 1 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 2.. run function glarth:combat/attack
