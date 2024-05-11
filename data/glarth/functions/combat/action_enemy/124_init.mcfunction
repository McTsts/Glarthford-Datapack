scoreboard players set @s tbcAttack 124
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute at @s as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=3]
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.124","bold":true}]}]
function glarth:combat/attack_init