#31 Merchant #1 | Dialogue
function glarth:dialogue/merchant1/lines/trade4
clear @s diamond_shovel 1 
clear @s gold_ingot 2 
function glarth:items/util/give {item:"trades.merchant1.2"} 
tag @e[tag=merchant1,type=armor_stand] add d