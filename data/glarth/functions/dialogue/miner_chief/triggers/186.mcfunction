#186 Miner Chief | Give TNT
function glarth:dialogue/miner_chief/lines/trade3
clear @s minecraft:gold_ingot 10
function glarth:items/util/give {item:"trades.miner_chief.1"} 
tag @e[tag=miner_chief,type=armor_stand] add c