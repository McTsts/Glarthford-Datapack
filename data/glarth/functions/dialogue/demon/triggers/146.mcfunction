#146 Demon | Blaze Powder to Fire Essence
function glarth:dialogue/demon/lines/trade1
clear @s blaze_powder 1 
give @s minecraft:diamond_hoe[custom_model_data=232,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"item.essence_fire","italic":false}',hide_additional_tooltip={}] 1
tag @e[tag=demon,type=armor_stand] add a