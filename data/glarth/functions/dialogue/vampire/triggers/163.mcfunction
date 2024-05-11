#163 Vampire | Chicken to Fang [B]
function glarth:dialogue/vampire/lines/trade2
clear @s minecraft:chicken 1
execute at @e[tag=vampire,type=armor_stand] facing entity @p eyes positioned ^ ^ ^0.5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":383,"minecraft:custom_name":'{"italic":false,"translate":"item.fang"}',"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:hide_additional_tooltip":{}}}}
tag @e[tag=vampire,type=armor_stand] add c
item replace entity @e[tag=vampire,type=armor_stand] armor.head with minecraft:diamond_hoe[custom_model_data=502]