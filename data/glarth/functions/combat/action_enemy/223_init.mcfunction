scoreboard players set @s tbcAttack 223
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.223","bold":true}]}]
function glarth:combat/attack_init

scoreboard players set @s attack_223 0