#78 Ent King | Branch to Forest Essence
function glarth:dialogue/ent_king/lines/trade1
clear @s minecraft:wooden_axe 1
function glarth:items/util/give {item:"trades.ent_king.1"} 
tag @e[tag=ent_king,type=armor_stand] add a