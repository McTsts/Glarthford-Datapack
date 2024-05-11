#143 Trader | Buy Golden Helmet for Two Iron
function glarth:dialogue/trader/lines/trade4
clear @s iron_ingot 2
give @s minecraft:golden_helmet[custom_model_data=0] 1 
tag @e[tag=trader,type=armor_stand] add d
tag @s add permaTip25