scoreboard players set @s tbcAttack 71
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.71","bold":true}]}]
function glarth:combat/attack_init
tag @s remove tbcDontShell