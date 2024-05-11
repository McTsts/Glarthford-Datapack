#53 Worker | Cookie x10 to Door
function glarth:dialogue/worker/lines/trade1
clear @s cookie 10
setblock -46 25 -194 minecraft:redstone_torch
tag @a add workerC
tag @e[tag=worker,type=armor_stand] add a