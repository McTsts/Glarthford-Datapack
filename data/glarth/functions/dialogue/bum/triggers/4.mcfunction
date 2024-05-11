#4 Bum | Key to Holy Grail
function glarth:dialogue/bum/lines/trade1
clear @s minecraft:diamond_hoe[damage=40] 1
give @s minecraft:diamond_hoe[custom_name='{"italic":false,"translate":"item.grail"}',unbreakable={show_in_tooltip:0b},damage=41,hide_additional_tooltip={}] 1
tag @e[tag=bum,type=armor_stand] add a