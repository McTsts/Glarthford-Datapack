scoreboard players set @s tbcAttack 211
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.211","bold":true}]}]
function glarth:combat/attack_init

execute if score @s attack_211 matches 1000.. run scoreboard players remove @s attack_211 1000