scoreboard players set @s tbcAttack 237
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.237","bold":true}]}]
function glarth:combat/attack_init
execute if score tbcVa tbcStats matches 0 if entity @e[tag=tbcEvilTs,tag=!4c] run function glarth:dialogue/evil_ts/lines/tbc4c
