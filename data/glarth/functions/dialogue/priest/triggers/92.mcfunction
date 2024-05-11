#92 Priest | Holy Grail to Holy Block
function glarth:dialogue/priest/lines/trade4
clear @s diamond_hoe{Damage:41} 1
give @s chiseled_quartz_block{CanPlaceOn:["command_block"],HideFlags:63,display:{Lore:['{"translate":"lore.block.1","color":"gray","italic":false,"bold":true}','{"translate":"lore.block.2","color":"gray","italic":false}'],Name:"{\"translate\":\"item.holy_block\",\"italic\":false}"}} 1
tag @e[tag=priest,type=armor_stand] add d