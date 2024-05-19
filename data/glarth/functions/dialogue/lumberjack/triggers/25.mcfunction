#25 Lumberjack | Water to Shovel 
function glarth:dialogue/lumberjack/lines/trade4
clear @s potion[potion_contents={potion:"minecraft:water"}] 1 
function glarth:items/util/give {item:"trades.lumberjack.2"} 
tag @e[tag=lumberjack,type=armor_stand] add b