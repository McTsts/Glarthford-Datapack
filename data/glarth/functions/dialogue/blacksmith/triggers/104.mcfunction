#104 Blacksmith | Diamond to Furnace
function glarth:dialogue/blacksmith/lines/trade7
clear @s diamond 1
give @s minecraft:furnace[can_place_on={predicates:[{blocks:"command_block"}],show_in_tooltip:0b},lore=['{"translate":"lore.block.1","color":"gray","italic":false,"bold":true}','{"translate":"lore.block.2","color":"gray","italic":false}'],hide_additional_tooltip={}] 1
tag @e[tag=blacksmith,type=armor_stand] add h