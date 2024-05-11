tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death1","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true}]}]
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.1 30
execute at @s run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 5
kill @s
