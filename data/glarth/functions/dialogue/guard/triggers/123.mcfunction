#123 Guard | Energizing Potion to Gate Key
function glarth:dialogue/guard/lines/trade1
clear @s minecraft:potion[custom_data={custom:"energizing_potion"}] 1
give @s minecraft:diamond_hoe[damage=280,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"item.ascension_key","italic":false}',hide_additional_tooltip={},custom_data={custom:"ascension_key"}]
tag @e[tag=guard,type=armor_stand] add a