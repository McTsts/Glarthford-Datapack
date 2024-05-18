#21 Blacksmith | Gold x5 to Chain Helmet
function glarth:dialogue/blacksmith/lines/trade1
clear @s gold_ingot 5
function glarth:items/util/give {item:"trades.blacksmith.1"} 
tag @e[tag=blacksmith,type=armor_stand] add a