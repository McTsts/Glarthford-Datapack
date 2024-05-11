#104 Blacksmith | Diamond to Furnace
function glarth:dialogue/blacksmith/lines/trade7
clear @s diamond 1
give @s furnace{CanPlaceOn:["command_block"],HideFlags:63,display:{Lore:['{"translate":"lore.block.1","color":"gray","italic":false,"bold":true}','{"translate":"lore.block.2","color":"gray","italic":false}']}} 1
tag @e[tag=blacksmith,type=armor_stand] add h