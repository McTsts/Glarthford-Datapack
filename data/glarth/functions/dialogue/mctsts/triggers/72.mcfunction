#72 McTsts | Repeater to Diamond Chestplate
function glarth:dialogue/mctsts/lines/trade1
clear @s minecraft:repeater 1
function glarth:items/util/give {item:"trades.mctsts.1"} 
tag @e[tag=mctsts,type=armor_stand] add a