#97 Miner Chief | Give TNT
function glarth:dialogue/miner_chief/lines/trade2
clear @s minecraft:tnt 1
tag @e[tag=miner_chief,type=armor_stand] add open_tutorial
tag @e[tag=miner_chief,type=armor_stand] add b
schedule function glarth:mechanic/tip/55 90s