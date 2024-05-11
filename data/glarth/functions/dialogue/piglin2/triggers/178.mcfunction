#178 Piglin 2| Totem -> GT
function glarth:dialogue/piglin2/lines/trade5
clear @s totem_of_undying 1
give @s ghast_tear 1
item replace entity @e[type=armor_stand,tag=piglin2] armor.head with minecraft:diamond_hoe[custom_model_data=487]
tag @e[type=armor_stand,tag=piglin2] add e