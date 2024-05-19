#145 Trader | Buy Diamond Sword for Three Redstone
function glarth:dialogue/trader/lines/trade3
clear @s redstone 3 
function glarth:items/util/give {item:"trades.trader.3"} 
tag @e[tag=trader,type=armor_stand] add c
tag @s add permaTip25