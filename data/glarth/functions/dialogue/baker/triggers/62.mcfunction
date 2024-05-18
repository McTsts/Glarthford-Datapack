#62 Baker | Take Bread
function glarth:dialogue/baker/lines/trade3
function glarth:items/util/give {item:"trades.baker.2"} 
scoreboard players reset @e[tag=baker,type=armor_stand] action
tag @e[tag=baker,type=armor_stand] remove breadX
tag @e[tag=baker,type=armor_stand] remove bread
tag @e[tag=baker,type=armor_stand] remove a
tag @e[tag=baker,type=armor_stand] remove b
tag @e[tag=baker,type=armor_stand] add c