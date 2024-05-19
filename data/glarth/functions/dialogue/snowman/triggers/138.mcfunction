#138 Snowman | Carrot to Ice Sword
function glarth:dialogue/snowman/lines/trade1
clear @s minecraft:carrot 1
function glarth:items/util/give {item:"trades.snowman.1"} 
tag @e[tag=snowman,type=armor_stand] add a
schedule function glarth:mechanic/animation/snowman/1 10t
schedule function glarth:mechanic/animation/snowman/2 20t