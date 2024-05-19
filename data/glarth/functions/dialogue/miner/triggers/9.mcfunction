#9 Miner | Freshly Baked Bread to Stone Pickaxe
function glarth:dialogue/miner/lines/trade1
clear @s bread[custom_data={custom:"fresh_bread"}] 1 
function glarth:items/util/give {item:"trades.miner.1"} 
tag @e[tag=miner,type=armor_stand] add a