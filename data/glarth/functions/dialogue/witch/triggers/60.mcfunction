#60 Witch | Chainmail Helmet & Pumpkin Pie to Enchanted Chainmail Helmet
function glarth:dialogue/witch/lines/trade4
clear @s pumpkin_pie 1 
clear @s chainmail_helmet 1 
function glarth:items/util/give {item:"trades.witch.3"} 
tag @e[tag=witch,type=armor_stand] add c
tag @e[tag=witch,type=armor_stand] add d