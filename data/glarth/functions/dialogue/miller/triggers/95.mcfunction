#74 Stargazer | Rabbit Foot to Diamond Boots
function glarth:dialogue/miller/lines/trade5
give @s scute{custom:"flour",display:{Name:"{\"italic\":false,\"translate\":\"item.flour\"}"}} 1
scoreboard players reset @e[tag=miller,type=armor_stand] action
tag @e[tag=miller,type=armor_stand] remove a
tag @e[tag=miller,type=armor_stand] remove b