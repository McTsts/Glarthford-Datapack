#148 Sleepless Man | Rotten Flesh x10 to Poison Sword [A]
execute if score sleepless_m Temp matches 0 run function glarth:dialogue/sleepless_m/lines/trade1
execute if score sleepless_m Temp matches 1 run function glarth:dialogue/sleepless_m/lines/trade2
clear @s minecraft:rotten_flesh 10
function glarth:items/util/give {item:"trades.sleepless_man.1"} 
tag @e[tag=sleepless_m,type=armor_stand] add a