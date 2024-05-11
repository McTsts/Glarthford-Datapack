#77 Ent | Sapling to Branch
function glarth:dialogue/ent/lines/trade1
clear @s minecraft:spruce_sapling 1
give @s minecraft:wooden_axe{display:{Name:"{\"italic\":false,\"translate\":\"item.branch\"}",Lore: ['""', '{"translate":"item.modifiers.mainhand","color":"gray","italic":false}', '[{"text":" 7 ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackDamage"}]']},Unbreakable:1,HideFlags:63} 1
tag @e[tag=ent,type=armor_stand] add a