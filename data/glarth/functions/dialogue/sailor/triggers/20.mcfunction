#20 Sailor | Amethyst to Bucket
function glarth:dialogue/sailor/lines/trade1
clear @s minecraft:diamond_hoe[damage=239] 1 
function glarth:items/util/give {item:"trades.sailor.1"} 
tag @e[tag=sailor,type=armor_stand] add a