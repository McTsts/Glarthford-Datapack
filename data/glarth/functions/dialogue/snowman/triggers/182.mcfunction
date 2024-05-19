#182 Snowman | GCarrot to Ice Sword
function glarth:dialogue/snowman/lines/trade1
clear @s minecraft:golden_carrot 1
function glarth:items/util/give {item:"trades.snowman.1"} 
tag @e[tag=snowman,type=armor_stand] add a
schedule function glarth:mechanic/animation/snowman/1 10t
schedule function glarth:mechanic/animation/snowman/3 20t