scoreboard players set @s tbcAttack 10
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.companion.10","bold":true}]}]
function glarth:combat/attack_init