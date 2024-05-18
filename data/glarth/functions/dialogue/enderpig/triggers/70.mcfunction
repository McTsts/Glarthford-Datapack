#70 Scribbling Enderman | Paper & Ink to Book
function glarth:dialogue/enderpig/lines/trade1
clear @s minecraft:feather 1
clear @s minecraft:ink_sac 1
function glarth:items/util/give {item:"trades.scrib_enderman.1"} 
tag @e[tag=enderpig,type=armor_stand] add a