#6 Priest | Holy Grail to Emerald
function glarth:dialogue/priest/lines/trade1
clear @s minecraft:diamond_hoe[damage=41] 1
function glarth:items/util/give {item:"trades.priest.1"} 
tag @e[tag=priest,type=armor_stand] add a