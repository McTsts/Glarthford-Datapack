scoreboard players set @s tbcAttack 83
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.83","bold":true}]}]
function glarth:combat/attack_init
scoreboard players set @s attack_083 0