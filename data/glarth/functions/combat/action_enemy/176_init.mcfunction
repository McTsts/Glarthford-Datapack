scoreboard players set @s tbcAttack 176
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.176","bold":true}]}]
function glarth:combat/attack_init