#52 Butcher | Rabbit Hide to Door
function glarth:dialogue/butcher/lines/trade1
clear @s rabbit_hide 1
setblock -9 24 -213 minecraft:redstone_torch
tag @e[tag=butcher,type=armor_stand] add a