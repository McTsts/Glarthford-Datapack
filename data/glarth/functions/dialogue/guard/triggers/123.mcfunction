#123 Guard | Energizing Potion to Gate Key
function glarth:dialogue/guard/lines/trade1
clear @s minecraft:potion[custom_data={custom:"energizing_potion"}] 1
function glarth:items/util/give {item:"trades.guard.1"} 
tag @e[tag=guard,type=armor_stand] add a