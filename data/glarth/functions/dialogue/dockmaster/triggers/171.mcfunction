#171 Dockmaster | Coal to Ride [C]
function glarth:dialogue/dockmaster/lines/trade3
clear @s coal 16
tag @e[tag=dockmaster,type=armor_stand] add c
execute as @e[tag=dockmaster,type=armor_stand] run function glarth:dialogue/dockmaster/trades/5