scoreboard players set @s tbcAttack 19
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.19","bold":true}]}]
function glarth:combat/attack_init

execute if entity @s[tag=tbcRoberto] run function glarth:dialogue/roberto/lines/attack2