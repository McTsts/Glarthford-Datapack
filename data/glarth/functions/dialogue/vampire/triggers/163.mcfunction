#163 Vampire | Chicken to Fang [B]
function glarth:dialogue/vampire/lines/trade2
clear @s minecraft:chicken 1
execute at @e[tag=vampire,type=armor_stand] facing entity @p eyes positioned ^ ^ ^0.5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:383,display:{Name:"{\"italic\":false,\"translate\":\"item.fang\"}"},Unbreakable:1,HideFlags:63}}}
tag @e[tag=vampire,type=armor_stand] add c
item replace entity @e[tag=vampire,type=armor_stand] armor.head with diamond_hoe{CustomModelData:502}