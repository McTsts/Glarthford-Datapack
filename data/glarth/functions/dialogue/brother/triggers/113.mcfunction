#113 Boy | Pink Tulip to Sugar
function glarth:dialogue/brother/lines/trade1
clear @s minecraft:pink_tulip 1
function glarth:items/util/give {item:"trades.brother.2"} 
tag @e[tag=brother,type=armor_stand] add a