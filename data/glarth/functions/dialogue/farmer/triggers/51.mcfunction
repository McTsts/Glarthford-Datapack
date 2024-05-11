#51 Farmer | Diamond Hoe to Door
function glarth:dialogue/farmer/lines/trade1
clear @s diamond_hoe{custom:"default"} 1
setblock 5 24 -267 redstone_torch
tag @e[tag=farmer,type=armor_stand] add a