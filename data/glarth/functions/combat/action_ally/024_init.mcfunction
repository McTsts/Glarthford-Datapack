scoreboard players set @s tbcAttack 24
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.ally.24","bold":true}]}]
function glarth:combat/attack_init

execute if score tbcVa tbcStats matches 0 if entity @s[tag=tbcAllyAdri,tag=!tbc1] run function glarth:dialogue/adri/lines/tbc1