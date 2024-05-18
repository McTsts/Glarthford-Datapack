#28 Diver | Redstone to Iron Helmet
function glarth:dialogue/diver/lines/trade1
clear @s redstone 1 
function glarth:items/util/give {item:"trades.diver.1"} 
tag @e[tag=diver,type=armor_stand] add a