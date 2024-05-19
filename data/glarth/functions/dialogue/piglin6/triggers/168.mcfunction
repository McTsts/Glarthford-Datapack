#168 Piglin #6 | Hoglin Meat to Golden Chestplate [A]
function glarth:dialogue/piglin6/lines/trade1
clear @s gold_nugget[custom_data={custom:"hoglin_meat"}] 1 
function glarth:items/util/give {item:"trades.piglin6.1"}  
function glarth:items/util/give {item:"trades.piglin6.2"}  
function glarth:items/util/give {item:"trades.piglin6.3"}  
tag @e[tag=piglin6,type=armor_stand] add a
tag @e[tag=events] add piglin6_a