scoreboard players set @s tbcAttack 116
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.116","bold":true}]}]
function glarth:combat/attack_init
scoreboard players add @s tbcCharge 1