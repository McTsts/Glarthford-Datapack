#137 Ent King | Bone Meal to Phantom Membrane
function glarth:dialogue/ent_king/lines/trade3
clear @s bone_meal 1
function glarth:items/util/give {item:"trades.ent_king.2"} 
tag @e[tag=ent_king,type=armor_stand] add d