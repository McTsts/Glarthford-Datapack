#6 Priest | Holy Grail to Emerald
 function glarth:dialogue/priest/lines/trade1
 clear @s minecraft:diamond_hoe[damage=41] 1
 give @s minecraft:diamond_hoe[damage=239,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"item.amethyst","italic":false}',hide_additional_tooltip={},custom_data={custom:"amethyst"}]
 tag @e[tag=priest,type=armor_stand] add a