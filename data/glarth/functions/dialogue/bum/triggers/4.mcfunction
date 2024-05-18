#4 Bum | Key to Holy Grail
function glarth:dialogue/bum/lines/trade1
clear @s minecraft:diamond_hoe[damage=40] 1
function glarth:items/util/give {item:"trades.bum.1"} 
tag @e[tag=bum,type=armor_stand] add a