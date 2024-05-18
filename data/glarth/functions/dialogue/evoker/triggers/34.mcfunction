#34 Evoker | Gold Block to Totem
function glarth:dialogue/evoker/lines/trade2
clear @s gold_block 1
function glarth:items/util/give {item:"trades.evoker.1"} 
execute unless score quest Stats matches 8 run tag @e[tag=evoker,type=armor_stand] add b