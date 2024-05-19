#56 Thief | Potion of Time
function glarth:dialogue/thief/lines/trade1
scoreboard players set thiefItem Temp 1
function glarth:items/util/give {item:"trades.thief.1"} 
tag @e[tag=thief,type=armor_stand] add a