#11 Tribe Druid | Skeleton Skull to Fermented Spider Eye
function glarth:dialogue/druid/lines/trade1
clear @s skeleton_skull 1
function glarth:items/util/give {item:"trades.druid.1"} 
tag @e[tag=druid,type=armor_stand] add a