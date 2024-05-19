#26 Soldier | Stone Sword to Shield
function glarth:dialogue/soldier/lines/trade1
clear @s stone_sword 1
function glarth:items/util/give {item:"trades.soldier.1"} 
tag @e[tag=soldier,type=armor_stand] add a