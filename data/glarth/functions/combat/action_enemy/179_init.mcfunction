scoreboard players set @s tbcAttack 179
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.179","bold":true}]}]
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
function glarth:combat/attack_init

execute if score @s attack_179 matches 1000.. run scoreboard players remove @s attack_179 1000