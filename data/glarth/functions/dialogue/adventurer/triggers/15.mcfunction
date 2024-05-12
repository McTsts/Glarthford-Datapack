#15 Adventurer | Diamond to Ender Pearl
function glarth:dialogue/adventurer/lines/trade1
clear @s diamond 1 
function glarth:items/util/give {item:"trades.adventurer.1"}
tag @e[tag=adventurer,type=armor_stand] add a