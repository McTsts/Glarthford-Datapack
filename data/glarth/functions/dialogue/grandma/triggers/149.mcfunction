#149 Grandma | Energizing Potion to Knitting Needles [A]
function glarth:dialogue/grandma/lines/trade1
clear @s minecraft:potion{custom:"energizing_potion"} 1
give @s diamond_hoe{CustomModelData:255,display:{Name:'{"translate":"item.needle","italic":false}',Lore:['{"translate":"lore.needle.1","italic":false,"color":"gray"}']},HideFlags:63,custom:"ascension_key"}
tag @e[tag=grandma,type=armor_stand] add a