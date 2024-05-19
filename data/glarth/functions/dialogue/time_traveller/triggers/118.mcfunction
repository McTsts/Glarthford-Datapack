#118 Time Traveller | Emerald to Energizing Potion
function glarth:dialogue/time_traveller/lines/trade1
clear @s minecraft:emerald 1
function glarth:items/util/give {item:"trades.time_traveller.1"} 
tag @e[tag=time_traveller,type=armor_stand] add a