#75 Pufferfish | Beetroot to Water Essence 
function glarth:dialogue/pufferfish/lines/trade1
clear @s minecraft:beetroot 1
give @s minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"translate\":\"item.essence_water\"}"},Unbreakable:1,HideFlags:63,Damage:46} 1
tag @e[tag=pufferfish,type=armor_stand] add a