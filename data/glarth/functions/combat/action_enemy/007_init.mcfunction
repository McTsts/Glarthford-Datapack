execute if score enemies tbcStats matches 2.. run function glarth:combat/action_enemy/util/extra
execute if score enemies tbcStats matches 2.. run scoreboard players set @s tbcAttack 7
execute if score enemies tbcStats matches 2.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score enemies tbcStats matches 2.. run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.7","bold":true}]}]
execute if score enemies tbcStats matches 2.. run function glarth:combat/attack_init
execute if score enemies tbcStats matches ..1 run function glarth:combat/attack