scoreboard players set @s tbcAttack 26
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.ally.26","bold":true}]}]
function glarth:combat/attack_init

execute if score tbcVa tbcStats matches 0 if entity @s[tag=tbcAllyAdri,tag=!tbc2] run function glarth:dialogue/adri/lines/tbc2