#191 Assassin | Gold x7 to Diamond
function glarth:dialogue/assassin/lines/trade1
clear @s minecraft:gold_ingot 7
function glarth:items/util/summon {item:"static.richard.1"} 
execute if entity @e[tag=richard,tag=b] run function glarth:items/util/summon {item:"static.richard.2"} 
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 50
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.1 25
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.5 10
kill @e[tag=richard]
kill @e[tag=assassin]
tag @e[tag=assassin,type=armor_stand] add a