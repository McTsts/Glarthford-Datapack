#132 Graveyard Guard | Iron Chestplate
function glarth:dialogue/graveyard/lines/trade2
give @s iron_chestplate
item replace entity @e[tag=graveyard,type=armor_stand] armor.head with minecraft:diamond_hoe{CustomModelData:41}
tag @e[tag=graveyard,type=armor_stand] add c