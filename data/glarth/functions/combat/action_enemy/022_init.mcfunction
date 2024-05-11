scoreboard players set @s tbcAttack 22
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.22","bold":true}]}]
function glarth:combat/attack_init
scoreboard players set @e[tag=tbcMinerChief] tbcQueue 100