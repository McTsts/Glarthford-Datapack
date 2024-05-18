#104 Blacksmith | Diamond to Furnace
function glarth:dialogue/blacksmith/lines/trade7
clear @s diamond 1
function glarth:items/util/give {item:"trades.blacksmith.3"} 
tag @e[tag=blacksmith,type=armor_stand] add h