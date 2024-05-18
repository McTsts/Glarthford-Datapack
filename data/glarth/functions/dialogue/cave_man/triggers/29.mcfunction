#29 Cave Man | Cod to Iron Sword
function glarth:dialogue/cave_man/lines/trade2
clear @s cod 1 
function glarth:items/util/give {item:"trades.caveman.2"} 
tag @e[tag=cave_man,type=armor_stand] add a