#23 Witch | Cauldron to Strong Potion of Healing x3
function glarth:dialogue/witch/lines/trade2
clear @s cauldron 1
give @s potion{Potion:"minecraft:strong_healing"} 3
tag @e[tag=witch,type=armor_stand] add b