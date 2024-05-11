execute if score damage tbcStats matches ..-1 run scoreboard players operation damage tbcStats *= -1 Const
scoreboard players operation damageDis tbcStats = damage tbcStats
scoreboard players operation damageDis tbcStats /= 10 Const

execute store result storage ntca:io in int 10 run scoreboard players get damageDis tbcStats
function ntcadec:call

execute if score @s charType matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure2.a","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s charType matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure2.b","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s charType matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure2.c","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
scoreboard players operation @s tbcHealth -= damageDis tbcStats