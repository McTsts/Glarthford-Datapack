#75 Pufferfish | Beetroot to Water Essence 
function glarth:dialogue/pufferfish/lines/trade1
clear @s minecraft:beetroot 1
give @s minecraft:diamond_hoe[custom_name='{"italic":false,"translate":"item.essence_water"}',unbreakable={show_in_tooltip:0b},damage=46,hide_additional_tooltip={}] 1
tag @e[tag=pufferfish,type=armor_stand] add a