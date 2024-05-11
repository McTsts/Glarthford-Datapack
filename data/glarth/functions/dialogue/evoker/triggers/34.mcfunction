#34 Evoker | Gold Block to Totem
function glarth:dialogue/evoker/lines/trade2
clear @s gold_block 1
give @s minecraft:totem_of_undying[lore=['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.totem","color":"dark_green","italic":false}]'],hide_additional_tooltip={}]
execute unless score quest Stats matches 8 run tag @e[tag=evoker,type=armor_stand] add b