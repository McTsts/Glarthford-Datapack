#149 Grandma | Energizing Potion to Knitting Needles [A]
function glarth:dialogue/grandma/lines/trade1
clear @s minecraft:potion[custom_data={custom:"energizing_potion"}] 1
give @s minecraft:diamond_hoe[custom_model_data=255,custom_name='{"translate":"item.needle","italic":false}',lore=['{"translate":"lore.needle.1","italic":false,"color":"gray"}'],hide_additional_tooltip={},custom_data={custom:"ascension_key"}]
tag @e[tag=grandma,type=armor_stand] add a