#78 Ent King | Branch to Forest Essence
function glarth:dialogue/ent_king/lines/trade1
clear @s minecraft:wooden_axe 1
give @s minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"translate\":\"item.essence_forest\"}"},Unbreakable:1,HideFlags:63,Damage:79} 1
tag @e[tag=ent_king,type=armor_stand] add a