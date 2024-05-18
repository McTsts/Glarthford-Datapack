# 160 Ender Merchant | Shulker Shell to Crossbow [A]
function glarth:dialogue/ender_merchant/lines/trade1
clear @s shulker_shell 1
function glarth:items/util/give {item:"trades.ender_merchant.1"} 
tag @e[tag=ender_merchant,type=armor_stand] add a