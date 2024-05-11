#168 Piglin #6 | Hoglin Meat to Golden Chestplate [A]
function glarth:dialogue/piglin6/lines/trade1
clear @s gold_nugget{custom:"hoglin_meat"} 1 
give @s golden_leggings 1 
give @s golden_boots 1 
give @s golden_helmet{CustomModelData:0} 1 
tag @e[tag=piglin6,type=armor_stand] add a
tag @e[tag=events] add piglin6_a