#23 Witch | Cauldron to Strong Potion of Healing x3
function glarth:dialogue/witch/lines/trade2
clear @s cauldron 1
function glarth:items/util/give {item:"trades.witch.2"} 
tag @e[tag=witch,type=armor_stand] add b