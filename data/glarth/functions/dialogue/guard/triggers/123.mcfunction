#123 Guard | Energizing Potion to Gate Key
function glarth:dialogue/guard/lines/trade1
clear @s minecraft:potion{custom:"energizing_potion"} 1
give @s minecraft:diamond_hoe{Damage:280,Unbreakable:1,display:{Name:"{\"translate\":\"item.ascension_key\",\"italic\":false}"},custom:"ascension_key",HideFlags:63}
tag @e[tag=guard,type=armor_stand] add a