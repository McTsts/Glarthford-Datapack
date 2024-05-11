#60 Witch | Chainmail Helmet & Pumpkin Pie to Enchanted Chainmail Helmet
function glarth:dialogue/witch/lines/trade4
clear @s pumpkin_pie 1 
clear @s chainmail_helmet 1 
give @a chainmail_helmet{custom:"slime_helmet",Enchantments:[{id:"minecraft:respiration",lvl:1}],display:{Name:"{\"italic\":false,\"translate\":\"item.slime_helmet\"}"},Unbreakable:1,HideFlags:62,CustomModelData:1} 1 
tag @e[tag=witch,type=armor_stand] add c
tag @e[tag=witch,type=armor_stand] add d