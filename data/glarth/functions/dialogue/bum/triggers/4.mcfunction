#4 Bum | Key to Holy Grail
function glarth:dialogue/bum/lines/trade1
clear @s minecraft:diamond_hoe{Damage:40} 1
give @s minecraft:diamond_hoe{display:{Name:'{"italic":false,"translate":"item.grail"}'},Unbreakable:1,HideFlags:63,Damage:41} 1
tag @e[tag=bum,type=armor_stand] add a