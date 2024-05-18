#112 Boy | Red Tulip to Sugar
function glarth:dialogue/brother/lines/trade1
clear @s minecraft:red_tulip 1
function glarth:items/util/give {item:"trades.brother.1"} 
tag @e[tag=brother,type=armor_stand] add a