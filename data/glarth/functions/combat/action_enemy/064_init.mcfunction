#
scoreboard players reset max_id tbc_fireworkID
scoreboard players set @s tbcAttack 64
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.64","bold":true}]}]
function glarth:combat/attack_init