#191 Assassin | Gold x7 to Diamond
function glarth:dialogue/assassin/lines/trade1
clear @s minecraft:gold_ingot 7
summon item ~ ~ ~ {Item:{id:"diamond",count:1}} 
execute if entity @e[tag=richard,tag=b] run summon item ~ ~ ~ {Item:{id:"diamond_hoe",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:damage":40,"minecraft:custom_name":'{"translate":"item.key","italic":false}',"minecraft:hide_additional_tooltip":{}}}}
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 50
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.1 25
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.5 10
kill @e[tag=richard]
kill @e[tag=assassin]
tag @e[tag=assassin,type=armor_stand] add a