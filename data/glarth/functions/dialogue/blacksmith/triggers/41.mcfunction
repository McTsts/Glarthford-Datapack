#41 Blacksmith | Iron to Door
function glarth:dialogue/blacksmith/lines/trade2
clear @s iron_ingot 1
setblock 28 25 -207 minecraft:redstone_torch
tag @e[tag=blacksmith,type=armor_stand] add b