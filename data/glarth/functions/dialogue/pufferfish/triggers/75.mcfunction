#75 Pufferfish | Beetroot to Water Essence 
function glarth:dialogue/pufferfish/lines/trade1
clear @s minecraft:beetroot 1
function glarth:items/util/give {item:"trades.pufferfish.1"} 
tag @e[tag=pufferfish,type=armor_stand] add a