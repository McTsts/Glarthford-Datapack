execute store result storage ntca:io in int 1 run scoreboard players get damage tbcStats
function ntcadec:call

execute if score dodged tbcStats matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.dodged","with":[{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 0 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.aoe","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score dodged tbcStats matches 0 run scoreboard players operation @e[tag=tbcEnemy] tbcHealth -= damage tbcStats
execute if score dodged tbcStats matches 0 run scoreboard players operation @e[tag=tbcEnemy] tbcBee += bee tbcStats