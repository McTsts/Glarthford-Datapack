scoreboard players set @s tbcAttack 53
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.53","bold":true}]}]
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
function glarth:combat/attack_init

scoreboard players set @s attack_052 2
scoreboard players set @s attack_053 1

function glarth:dialogue/netheran/lines/attack2