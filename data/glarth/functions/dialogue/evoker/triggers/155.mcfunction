# 155 Evoker | Hat -> Banner
function glarth:dialogue/evoker/lines/trade5
clear @s minecraft:diamond_hoe[custom_data={custom:"tophat"}]
function glarth:items/util/give {item:"trades.evoker.2"} 
tag @e[tag=evoker] add d
item replace entity @e[tag=evoker] armor.head with minecraft:diamond_hoe[custom_model_data=504]