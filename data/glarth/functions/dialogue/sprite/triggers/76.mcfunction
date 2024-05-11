#76 Sprite | Feather x5 to Air Essence
function glarth:dialogue/sprite/lines/trade1
clear @s minecraft:feather 5
give @s minecraft:diamond_hoe[custom_name='{"italic":false,"translate":"item.essence_air"}',unbreakable={show_in_tooltip:0b},damage=47,hide_additional_tooltip={}] 1
tag @e[tag=sprite,type=armor_stand] add a