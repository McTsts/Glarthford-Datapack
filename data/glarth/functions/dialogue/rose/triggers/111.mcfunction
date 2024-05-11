#111 Rose Lover | Carrot to Shears
function glarth:dialogue/rose/lines/trade1
clear @s minecraft:carrot 1
give @s minecraft:shears[can_break={predicates:[{blocks:["red_tulip","orange_tulip","pink_tulip"]}],show_in_tooltip:0b},hide_additional_tooltip={}] 1
tag @e[tag=rose,type=armor_stand] add a