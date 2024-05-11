#74 Stargazer | Rabbit Foot to Diamond Boots
function glarth:dialogue/miller/lines/trade5
give @s minecraft:turtle_scute[custom_name='{"italic":false,"translate":"item.flour"}',custom_data={custom:"flour"}] 1
scoreboard players reset @e[tag=miller,type=armor_stand] action
tag @e[tag=miller,type=armor_stand] remove a
tag @e[tag=miller,type=armor_stand] remove b