#145 Trader | Buy Diamond Sword for Three Redstone
function glarth:dialogue/trader/lines/trade3
clear @s redstone 3 
give @s diamond_sword 1
tag @e[tag=trader,type=armor_stand] add c
tag @s add permaTip25