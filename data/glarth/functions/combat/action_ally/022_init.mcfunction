scoreboard players set @s tbcAttack 22
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.ally.22","bold":true}]}]
function glarth:combat/attack_init

execute if score tbcVa tbcStats matches 0 if entity @s[tag=tbcAllySuso,tag=!tbc1] run function glarth:dialogue/suso/lines/tbc1