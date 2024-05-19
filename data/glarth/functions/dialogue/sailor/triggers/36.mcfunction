#36 Sailor | Fishing Rod to Iron Leggings
function glarth:dialogue/sailor/lines/trade2
clear @s fishing_rod 1 
function glarth:items/util/give {item:"trades.sailor.2"} 
tag @e[tag=sailor,type=armor_stand] add b