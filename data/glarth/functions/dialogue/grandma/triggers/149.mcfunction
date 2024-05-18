#149 Grandma | Energizing Potion to Knitting Needles [A]
function glarth:dialogue/grandma/lines/trade1
clear @s minecraft:potion[custom_data={custom:"energizing_potion"}] 1
function glarth:items/util/give {item:"trades.grandma.1"} 
tag @e[tag=grandma,type=armor_stand] add a