# Damage
scoreboard players set extraMulti tbcStats 10
scoreboard players set extraWeak tbcStats 1
execute as @e[scores={tbcSel=1},tag=!tbcBlock] if score dodged tbcStats matches 2 run scoreboard players set dodged tbcStats 0
execute as @e[scores={tbcSel=1}] if score @s tbcArmor matches 100.. run scoreboard players set damage tbcStats 0
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. as @e[scores={tbcSel=1},tag=!tbcBlock] run function glarth:combat/action/util/deal_damage
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. as @e[scores={tbcSel=1},tag=tbcBlock] run function glarth:combat/action/util/handle_block


# Message
execute store result storage ntca:io in int 1 run scoreboard players get damage Temp
function ntcadec:call

execute if score dodged tbcStats matches 5 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.block_miss2","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 4 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 3 as @e[scores={tbcSel=1}] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.4 0.4 0.4 0.05 100
execute if score dodged tbcStats matches 3 as @e[scores={tbcSel=1}] at @s run tp @s ~ ~70 ~
execute if score dodged tbcStats matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.dodged_tp","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.block_miss","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.dodged","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.success","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score dodged tbcStats matches 0 unless score damage tbcStats matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]