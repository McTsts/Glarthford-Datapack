#183 Assassin | Gold x7 to Evoker
function glarth:dialogue/assassin/lines/trade1
clear @s minecraft:gold_ingot 7
execute at @e[tag=assassin] run loot spawn ~ ~ ~ loot glarth:entities/evoker
kill @e[tag=evoker]
kill @e[tag=assassin]
tag @e[tag=assassin,type=armor_stand] add a