#54 Worker | Bow to Door
function glarth:dialogue/worker/lines/trade2
clear @s bow 1
setblock -46 25 -194 minecraft:redstone_torch
tag @a add workerB
tag @e[tag=worker,type=armor_stand] add a