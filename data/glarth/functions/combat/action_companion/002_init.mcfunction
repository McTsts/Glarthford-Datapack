scoreboard players set @s tbcAttack 2
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.companion.2","bold":true}]}]
function glarth:combat/attack_init