# 128 Bow Merchant | Thirty Gold to Crossbow
function glarth:dialogue/bowm/lines/trade1
clear @s minecraft:gold_ingot 30
give @s minecraft:crossbow[custom_data={bow:"crossbow"}] 1
tag @e[tag=bowm,type=armor_stand] add a