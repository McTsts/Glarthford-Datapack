scoreboard players set @s tbcAttack 56
execute as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.56","bold":true}]}]
function glarth:combat/attack_init