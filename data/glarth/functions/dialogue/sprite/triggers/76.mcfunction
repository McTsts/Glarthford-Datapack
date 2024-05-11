#76 Sprite | Feather x5 to Air Essence
function glarth:dialogue/sprite/lines/trade1
clear @s minecraft:feather 5
give @s minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"translate\":\"item.essence_air\"}"},Unbreakable:1,HideFlags:63,Damage:47} 1
tag @e[tag=sprite,type=armor_stand] add a