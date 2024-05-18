#194 Scribbling Enderman | Paper & Glow Ink to Book
function glarth:dialogue/enderpig/lines/trade1
clear @s minecraft:feather 1
clear @s minecraft:glow_ink_sac 1
function glarth:items/util/give {item:"trades.scrib_enderman.1"} 
tag @e[tag=enderpig,type=armor_stand] add a