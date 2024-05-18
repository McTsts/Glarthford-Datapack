#64 Farmer | Help
function glarth:dialogue/farmer/lines/trade2
function glarth:items/util/give {item:"trades.farmer.1"} 
scoreboard players set gate Stats 1
tag @e[tag=farmer,type=armor_stand] add b
execute as @a[distance=..5,tag=!tip6] run function glarth:mechanic/tip/6

