#76 Sprite | Feather x5 to Air Essence
function glarth:dialogue/sprite/lines/trade1
clear @s minecraft:feather 5
function glarth:items/util/give {item:"trades.sprite.1"} 
tag @e[tag=sprite,type=armor_stand] add a