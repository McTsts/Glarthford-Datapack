#190 Carrot | Trade
function glarth:dialogue/carrot/lines/trade3
clear @s minecraft:skeleton_skull 1
clear @s minecraft:bow 1
clear @s minecraft:arrow 3
give @s carrot 8
item replace entity @e[tag=carrot] armor.head with minecraft:diamond_hoe{CustomModelData:520}
tag @e[tag=carrot,type=armor_stand] add c