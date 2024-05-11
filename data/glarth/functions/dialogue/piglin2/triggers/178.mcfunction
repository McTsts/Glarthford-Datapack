#178 Piglin 2| Totem -> GT
function glarth:dialogue/piglin2/lines/trade5
clear @s totem_of_undying 1
give @s ghast_tear 1
item replace entity @e[type=armor_stand,tag=piglin2] armor.head with diamond_hoe{CustomModelData:487}
tag @e[type=armor_stand,tag=piglin2] add e