scoreboard players set @s tbcAttack 241
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.241","bold":true}]}]
function glarth:combat/attack_init

execute if score @s attack_241 matches 1000.. run scoreboard players remove @s attack_241 1000