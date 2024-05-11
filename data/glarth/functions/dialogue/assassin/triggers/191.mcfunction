#191 Assassin | Gold x7 to Diamond
function glarth:dialogue/assassin/lines/trade1
clear @s minecraft:gold_ingot 7
summon item ~ ~ ~ {Item:{id:"diamond",Count:1}} 
execute if entity @e[tag=richard,tag=b] run summon item ~ ~ ~ {Item:{id:"diamond_hoe",Count:1,tag:{Unbreakable:1,HideFlags:63,Damage:40,display:{Name:"{\"translate\":\"item.key\",\"italic\":false}",Lore:['{"translate":"lore.key.1","color":"gray","italic":false}','{"translate":"lore.key.2","color":"gray","italic":false}','{"translate":"lore.key.3","color":"gray","italic":false}']}}}}
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 50
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.1 25
execute at @e[tag=assassin,type=armor_stand] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.5 10
kill @e[tag=richard]
kill @e[tag=assassin]
tag @e[tag=assassin,type=armor_stand] add a