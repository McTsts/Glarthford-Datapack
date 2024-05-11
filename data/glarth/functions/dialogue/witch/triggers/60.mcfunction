#60 Witch | Chainmail Helmet & Pumpkin Pie to Enchanted Chainmail Helmet
function glarth:dialogue/witch/lines/trade4
clear @s pumpkin_pie 1 
clear @s chainmail_helmet 1 
give @a minecraft:chainmail_helmet[enchantments={"minecraft:respiration":1},custom_name='{"italic":false,"translate":"item.slime_helmet"}',unbreakable={show_in_tooltip:0b},custom_model_data=1,hide_additional_tooltip={},custom_data={custom:"slime_helmet"}] 1 
tag @e[tag=witch,type=armor_stand] add c
tag @e[tag=witch,type=armor_stand] add d