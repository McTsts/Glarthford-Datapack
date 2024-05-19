#74 Stargazer | Rabbit Foot to Diamond Boots
function glarth:dialogue/miller/lines/trade5
function glarth:items/util/give {item:"trades.miller.1"} 
scoreboard players reset @e[tag=miller,type=armor_stand] action
tag @e[tag=miller,type=armor_stand] remove a
tag @e[tag=miller,type=armor_stand] remove b