#38 Priest | Mayor's Ring to Holy Sword
function glarth:dialogue/priest/lines/trade3
clear @s diamond_hoe[damage=42] 1
function glarth:items/util/give {item:"trades.priest.2"} 
tag @e[tag=priest,type=armor_stand] add c