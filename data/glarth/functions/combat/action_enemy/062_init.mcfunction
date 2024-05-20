execute if score enemies tbcStats matches ..3 run scoreboard players set @s tbcAttack 62
execute if score enemies tbcStats matches ..3 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.62","bold":true}]}]
execute if score enemies tbcStats matches ..3 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 4.. run function glarth:combat/attack

execute if entity @s[tag=tbcSkeletonKing] run function glarth:dialogue/skeleton_king/lines/attack1