# 161 Ender Guard | PCF to EnchGA
function glarth:dialogue/enderman_s2/lines/trade1
clear @s minecraft:gray_dye 1
function glarth:items/util/give {item:"trades.enderman_s2.1"} 
tag @e[tag=enderman_s2,type=armor_stand] add a
execute at @e[tag=enderman_s2] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
schedule function glarth:dialogue/enderman_s2/triggers/165b 41t