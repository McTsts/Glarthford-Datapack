#77 Ent | Sapling to Branch
function glarth:dialogue/ent/lines/trade1
clear @s minecraft:spruce_sapling 1
function glarth:items/util/give {item:"trades.ent.1"} 
tag @e[tag=ent,type=armor_stand] add a