execute store result storage ntca:io in int 1 run scoreboard players get damage tbcStats
function ntcadec:call

execute if entity @e[scores={tbcSel=1},tag=tbcBlock] run scoreboard players set dodged tbcStats 2

execute if score dodged tbcStats matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.block_miss","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.dodged","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.success","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score dodged tbcStats matches 0 unless score damage tbcStats matches 1.. run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1}] tbcHealth -= damage tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1}] tbcFire += fire tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players set fire tbcStats 0
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players set @e[scores={tbcSel=1},tag=tbcNoHealth] tbcHealth 0