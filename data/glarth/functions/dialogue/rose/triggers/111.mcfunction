#111 Rose Lover | Carrot to Shears
function glarth:dialogue/rose/lines/trade1
clear @s minecraft:carrot 1
function glarth:items/util/give {item:"trades.rose_lover.1"} 
tag @e[tag=rose,type=armor_stand] add a