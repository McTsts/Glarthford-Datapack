#12 Witch | Fermented Spider Eye to Diamond Pickaxe
function glarth:dialogue/witch/lines/trade1
clear @s fermented_spider_eye 1 
give @s minecraft:diamond_pickaxe{display:{Lore:['""','{"translate":"item.modifiers.mainhand","color":"gray","italic":false}','[{"text":" 1.2 ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackSpeed"}]','[{"text":" 3 ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackDamage"}]']},CanDestroy:["lapis_block"],HideFlags:55} 1
tag @e[tag=witch,type=armor_stand] add a