tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death1","with":[{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true}]}]
tag @s remove tbcAttackable
execute if entity @s[tag=tbcTarget] run function glarth:combat/action_enemy/util/get_target
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.1 30
execute at @s run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 5
execute at @s run kill @e[tag=charQAall,distance=..2]
execute at @s if entity @e[tag=tbcBone,distance=..10] run tag @s add tempBone
execute at @s if entity @s[tag=tempBone] run kill @e[tag=tbcBone,distance=..10]
execute at @s if entity @s[tag=tempBone] as @e[tag=tbcTurn] run function glarth:combat/done
kill @s
