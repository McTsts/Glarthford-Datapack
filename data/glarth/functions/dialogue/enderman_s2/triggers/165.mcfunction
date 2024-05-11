# 161 Ender Guard | PCF to Upper Floor [A]
function glarth:dialogue/enderman_s2/lines/trade1
clear @s minecraft:gray_dye 1
give @s minecraft:enchanted_golden_apple{display:{Lore:['{"translate":"lore.gapple.1","italic":false,"color":"gray"}','{"translate":"lore.gapple.2","italic":false,"color":"gray"}']},HideFlags:63}
tag @e[tag=enderman_s2,type=armor_stand] add a
execute at @e[tag=enderman_s2] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
schedule function glarth:dialogue/enderman_s2/triggers/165b 41t