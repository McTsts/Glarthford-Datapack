#84 Dockmaster | String & Yellow Dye to Bow
function glarth:dialogue/dockmaster/lines/trade1
clear @s minecraft:yellow_dye 1
clear @s minecraft:string 1
function glarth:items/util/give {item:"trades.dockmaster.1"} 
tag @e[tag=dockmaster,type=armor_stand] add a