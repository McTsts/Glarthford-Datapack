#77 Ent | Sapling to Branch
function glarth:dialogue/ent/lines/trade1
clear @s minecraft:spruce_sapling 1
give @s minecraft:wooden_axe[custom_name='{"italic":false,"translate":"item.branch"}',lore=['""','{"translate":"item.modifiers.mainhand","color":"gray","italic":false}','[{"text":" 7 ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackDamage"}]'],unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}] 1
tag @e[tag=ent,type=armor_stand] add a