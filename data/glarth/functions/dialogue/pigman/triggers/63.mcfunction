#63 Pigman | Coin to Gate
function glarth:dialogue/pigman/lines/trade1
clear @s diamond_hoe{Damage:44} 1
function glarth:mechanic/animation/gates/nether/open
tag @e[tag=pigman,type=armor_stand] add a
tag @e[tag=events] add pigman_a
tag @e[tag=pigman,type=armor_stand] add b