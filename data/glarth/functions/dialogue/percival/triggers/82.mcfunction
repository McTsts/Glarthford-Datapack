#82 Percival | Diamond Sword + Essences to Magic Sword
function glarth:dialogue/percival/lines/trade3
clear @s diamond_sword 1
clear @a diamond_hoe[damage=46]
clear @a diamond_hoe[damage=47]
clear @a diamond_hoe[damage=48]
clear @a diamond_hoe[damage=79]
clear @a diamond_hoe[custom_model_data=232]
give @a minecraft:golden_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_damage",amount:200,slot:"mainhand",name:"generic.attack_damage",uuid:[I;0,61481,0,140909]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},lore=['""','{"translate":"item.modifiers.mainhand","color":"gray","italic":false}','[{"text":" 2±± ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackDamage"}]'],custom_name='{"translate":"item.magic_sword","italic":false}',hide_additional_tooltip={}] 1
execute if score combat Stats matches 0 run function glarth:mechanic/action/move_grimsbane
tag @e[tag=percival,type=armor_stand] add c