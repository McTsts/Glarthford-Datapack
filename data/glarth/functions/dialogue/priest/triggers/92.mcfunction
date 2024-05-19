#92 Priest | Holy Grail to Holy Block
function glarth:dialogue/priest/lines/trade4
clear @s diamond_hoe[damage=41] 1
function glarth:items/util/give {item:"trades.priest.3"} 
tag @e[tag=priest,type=armor_stand] add d