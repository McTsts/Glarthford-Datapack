#78 Ent King | Branch to Forest Essence
function glarth:dialogue/ent_king/lines/trade1
clear @s minecraft:wooden_axe 1
give @s minecraft:diamond_hoe[custom_name='{"italic":false,"translate":"item.essence_forest"}',unbreakable={show_in_tooltip:0b},damage=79,hide_additional_tooltip={}] 1
tag @e[tag=ent_king,type=armor_stand] add a