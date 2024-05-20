scoreboard players operation @e[tag=tbcTurn] tbcHealth -= damage tbcStats

execute store result storage ntca:io in int 1 run scoreboard players get damage tbcStats
function ntcadec:call

tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure2.c","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]