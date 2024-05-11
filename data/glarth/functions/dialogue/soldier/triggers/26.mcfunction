#26 Soldier | Stone Sword to Shield
function glarth:dialogue/soldier/lines/trade1
clear @s stone_sword 1
execute if score difficulty Stats matches 0 run give @s minecraft:shield[lore=['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.autoblock","color":"dark_green","italic":false,"with":["1±±%"]}]']]
execute if score difficulty Stats matches 1 run give @s minecraft:shield[lore=['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.autoblock","color":"dark_green","italic":false,"with":["5±%"]}]']]
execute if score difficulty Stats matches 2 run give @s minecraft:shield[lore=['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.autoblock","color":"dark_green","italic":false,"with":["33%"]}]']]
execute if score difficulty Stats matches 3 run give @s minecraft:shield[lore=['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.autoblock","color":"dark_green","italic":false,"with":["25%"]}]']]
tag @e[tag=soldier,type=armor_stand] add a