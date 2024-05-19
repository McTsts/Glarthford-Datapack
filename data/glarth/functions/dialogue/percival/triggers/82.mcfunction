#82 Percival | Diamond Sword + Essences to Magic Sword
function glarth:dialogue/percival/lines/trade3
clear @s diamond_sword 1
clear @a diamond_hoe[damage=46]
clear @a diamond_hoe[damage=47]
clear @a diamond_hoe[damage=48]
clear @a diamond_hoe[damage=79]
clear @a diamond_hoe[custom_model_data=232]
function glarth:items/util/give {item:"trades.percival.1"} 
execute if score combat Stats matches 0 run function glarth:mechanic/action/move_grimsbane
tag @e[tag=percival,type=armor_stand] add c