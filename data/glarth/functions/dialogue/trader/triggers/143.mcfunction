#143 Trader | Buy Chainmail Helmet for Five Iron
function glarth:dialogue/trader/lines/trade1
clear @s iron_ingot 5 
function glarth:items/util/give {item:"trades.trader.1"} 
tag @e[tag=trader,type=armor_stand] add a
tag @s add permaTip25