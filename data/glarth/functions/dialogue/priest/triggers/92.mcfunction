#92 Priest | Holy Grail to Holy Block
function glarth:dialogue/priest/lines/trade4
clear @s diamond_hoe[damage=41] 1
give @s minecraft:chiseled_quartz_block[can_place_on={predicates:[{blocks:"command_block"}],show_in_tooltip:0b},lore=['{"translate":"lore.block.1","color":"gray","italic":false,"bold":true}','{"translate":"lore.block.2","color":"gray","italic":false}'],custom_name='{"translate":"item.holy_block","italic":false}',hide_additional_tooltip={}] 1
tag @e[tag=priest,type=armor_stand] add d