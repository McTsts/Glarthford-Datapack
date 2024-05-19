#144 Trader | Buy Fermented Spider Eye for One Emerald
function glarth:dialogue/trader/lines/trade2
clear @s emerald 1
function glarth:items/util/give {item:"trades.trader.2"} 
tag @e[tag=trader,type=armor_stand] add b
tag @s add permaTip25