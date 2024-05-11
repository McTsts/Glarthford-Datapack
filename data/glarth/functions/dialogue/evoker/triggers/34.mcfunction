#34 Evoker | Gold Block to Totem
function glarth:dialogue/evoker/lines/trade2
clear @s gold_block 1
give @s totem_of_undying{display:{Lore:['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.totem","color":"dark_green","italic":false}]']},HideFlags:63}
execute unless score quest Stats matches 8 run tag @e[tag=evoker,type=armor_stand] add b