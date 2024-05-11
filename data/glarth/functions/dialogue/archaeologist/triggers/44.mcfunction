#44 Archaeologist | Diamond Pickaxe to Seal
function glarth:dialogue/archaeologist/lines/trade2
clear @s diamond_pickaxe 1 
item replace entity @e[tag=archaeologist,type=armor_stand] armor.head with minecraft:diamond_hoe[damage=114]
tag @e[tag=archaeologist,type=armor_stand] add cave_wall
tag @e[tag=archaeologist,type=armor_stand] add b