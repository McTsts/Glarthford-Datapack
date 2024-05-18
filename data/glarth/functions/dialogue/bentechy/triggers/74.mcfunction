#74 Stargazer | Rabbit Foot to Diamond Boots
function glarth:dialogue/bentechy/lines/trade1
clear @s minecraft:rabbit_foot 1
function glarth:items/util/give {item:"trades.stargazer.1"} 
tag @e[tag=bentechy,type=armor_stand] add a