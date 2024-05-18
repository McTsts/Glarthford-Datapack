#132 Graveyard Guard | Iron Chestplate
function glarth:dialogue/graveyard/lines/trade2
function glarth:items/util/give {item:"trades.graveyard.1"} 
item replace entity @e[tag=graveyard,type=armor_stand] armor.head with minecraft:diamond_hoe[custom_model_data=41]
tag @e[tag=graveyard,type=armor_stand] add c