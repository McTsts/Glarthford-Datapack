#39 Grave Digger | Rose to Shovel
function glarth:dialogue/digger/lines/trade1
clear @s poppy 1 
function glarth:items/util/give {item:"trades.digger.1"} 
tag @e[tag=digger,type=armor_stand] add a