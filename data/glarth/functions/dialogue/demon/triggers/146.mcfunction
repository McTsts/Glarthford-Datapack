#146 Demon | Blaze Powder to Fire Essence
function glarth:dialogue/demon/lines/trade1
clear @s blaze_powder 1 
function glarth:items/util/give {item:"trades.demon.1"} 
tag @e[tag=demon,type=armor_stand] add a