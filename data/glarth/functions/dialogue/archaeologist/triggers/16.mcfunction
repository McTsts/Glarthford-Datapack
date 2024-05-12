#8 Bum | Beer to Diamond Hoe
function glarth:dialogue/archaeologist/lines/trade1
clear @s stone_shovel 1 
function glarth:items/util/give {item:"trades.archaeology.1"}
function glarth:items/util/give {item:"trades.archaeology.2"}
item replace entity @e[tag=archaeologist,type=armor_stand] armor.head with minecraft:diamond_hoe[damage=115]
tag @e[tag=archaeologist,type=armor_stand] add a