#68 Child | Rotten Flesh to Speed Potion
function glarth:dialogue/checkminer/lines/trade1
function glarth:mechanic/tip/36
clear @s rotten_flesh 1
function glarth:items/util/give {item:"trades.starving.1"} 
tag @e[tag=checkminer,type=armor_stand] add a