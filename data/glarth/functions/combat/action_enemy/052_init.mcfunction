scoreboard players set @s tbcAttack 52
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.52","bold":true}]}]
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
function glarth:combat/attack_init

scoreboard players set @s attack_052 1
scoreboard players set @s attack_053 2

function glarth:dialogue/netheran/lines/attack3