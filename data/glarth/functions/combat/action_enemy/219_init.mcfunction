scoreboard players set @s tbcAttack 219
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.219","bold":true}]}]
function glarth:combat/attack_init

execute if score @s attack_219 matches 1000.. run scoreboard players remove @s attack_219 1000