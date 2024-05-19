#163 Vampire | Chicken to Fang [B]
function glarth:dialogue/vampire/lines/trade2
clear @s minecraft:chicken 1
execute at @e[tag=vampire,type=armor_stand] facing entity @p eyes positioned ^ ^ ^0.5 run function glarth:items/util/summon {item:"trades.vampire.2"} 
tag @e[tag=vampire,type=armor_stand] add c
item replace entity @e[tag=vampire,type=armor_stand] armor.head with minecraft:diamond_hoe[custom_model_data=502]