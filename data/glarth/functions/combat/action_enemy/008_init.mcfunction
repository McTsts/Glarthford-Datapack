scoreboard players set @s tbcAttack 8
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.8","bold":true}]}]
function glarth:combat/attack_init

execute if entity @s[tag=tbcSkeletonKing] run function glarth:dialogue/skeleton_king/lines/attack3