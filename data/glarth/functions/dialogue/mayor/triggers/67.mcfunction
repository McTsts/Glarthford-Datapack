#67 Mayor | Get Bricks
function glarth:dialogue/mayor/lines/trade1
give @s minecraft:diamond_hoe[unbreakable={show_in_tooltip:0b},damage=40,custom_name='{"translate":"item.key","italic":false}',lore=['{"translate":"lore.key.1","color":"gray","italic":false}','{"translate":"lore.key.2","color":"gray","italic":false}','{"translate":"lore.key.3","color":"gray","italic":false}'],hide_additional_tooltip={}]
tag @e[tag=mayor,type=armor_stand] add a