scoreboard players set @s tbcAttack 88
execute as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.88","bold":true}]}]
function glarth:combat/attack_init