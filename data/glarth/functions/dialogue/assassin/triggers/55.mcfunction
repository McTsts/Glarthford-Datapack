#55 Assassin | Gold x7 to Door
function glarth:dialogue/assassin/lines/trade1
clear @s minecraft:gold_ingot 7
execute if entity @e[tag=farmer,tag=a] at @e[tag=assassin] run function glarth:items/util/summon {item:"static.farmer.1"}
execute if entity @e[tag=farmer,tag=!b] at @e[tag=assassin] run scoreboard players set gate Stats 1
execute if entity @e[tag=farmer,tag=!b] at @e[tag=assassin] run function glarth:items/util/summon {item:"trades.farmer.1"}
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 50
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.1 25
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.5 10
setblock 5 24 -267 redstone_torch
kill @e[tag=farmer]
kill @e[tag=assassin]
tag @e[tag=assassin,type=armor_stand] add a