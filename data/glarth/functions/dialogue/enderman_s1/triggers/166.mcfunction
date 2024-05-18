# 161 Ender Guard | Shulker Shell to ToU
function glarth:dialogue/enderman_s1/lines/trade1
clear @s minecraft:shulker_shell 1
function glarth:items/util/give {item:"trades.enderman_s1.1"} 
tag @e[tag=enderman_s1,type=armor_stand] add a
execute at @e[tag=enderman_s1] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
schedule function glarth:dialogue/enderman_s1/triggers/166b 41t