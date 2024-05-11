#142 Assassin | Gold x7 to Kill Blaze
function glarth:dialogue/assassin/lines/trade1
clear @s minecraft:gold_ingot 7
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 50
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.1 25
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.5 10
execute at @e[tag=assassin] run loot spawn ~ ~ ~ loot glarth:entities/blaze
execute unless entity @e[tag=blaze2] run kill @e[tag=blaze1]
execute if entity @e[tag=blaze2] run kill @e[tag=blaze2]
kill @e[tag=assassin]
tag @e[tag=assassin,type=armor_stand] add a

scoreboard players remove blazes Stats 1