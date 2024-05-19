#106 Pufferfish | Pufferfish Bucket to Sponge
function glarth:dialogue/pufferfish/lines/trade2
clear @s minecraft:pufferfish_bucket 1
function glarth:items/util/give {item:"trades.pufferfish.2"} 
tag @e[tag=pufferfish,type=armor_stand] add b