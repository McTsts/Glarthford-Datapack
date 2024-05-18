#8 Bum | Beer to Diamond Hoe
execute if score realms Stats matches 0 run function glarth:dialogue/bum/lines/trade2
execute if score realms Stats matches 1 run function glarth:dialogue/bum/lines/trade2_realms
clear @s potion[custom_data={custom:"beer"}] 1 
function glarth:items/util/give {item:"trades.bum.2"} 
tag @e[tag=bum,type=armor_stand] add b