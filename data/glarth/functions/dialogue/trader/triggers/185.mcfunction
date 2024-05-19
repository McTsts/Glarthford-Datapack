#143 Trader | Buy Golden Helmet for Two Iron
function glarth:dialogue/trader/lines/trade4
clear @s iron_ingot 2
function glarth:items/util/give {item:"trades.trader.4"} 
tag @e[tag=trader,type=armor_stand] add d
tag @s add permaTip25