scoreboard players set @s tbcAttack 109
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.109","bold":true}]}]
function glarth:combat/attack_init

execute if score @s attack_109 matches 1000.. run scoreboard players remove @s attack_109 1000