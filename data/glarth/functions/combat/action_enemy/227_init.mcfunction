scoreboard players set @s tbcAttack 227
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.wind","bold":true}]}]
function glarth:combat/attack_init

scoreboard players set @s attack_227 0