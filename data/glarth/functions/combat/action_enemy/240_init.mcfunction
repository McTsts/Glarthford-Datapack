scoreboard players set @s tbcAttack 240
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.240","bold":true}]}]
function glarth:combat/attack_init

scoreboard players operation @s attack_240 /= 2 Const