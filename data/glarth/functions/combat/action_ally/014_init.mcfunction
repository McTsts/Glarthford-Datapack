scoreboard players set @s tbcAttack 14
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.ally.14","bold":true}]}]
function glarth:combat/attack_init