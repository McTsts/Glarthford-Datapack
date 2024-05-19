#12 Witch | Fermented Spider Eye to Diamond Pickaxe
function glarth:dialogue/witch/lines/trade1
clear @s fermented_spider_eye 1 
function glarth:items/util/give {item:"trades.witch.1"} 
tag @e[tag=witch,type=armor_stand] add a