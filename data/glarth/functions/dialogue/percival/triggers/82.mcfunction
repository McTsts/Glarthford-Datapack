#82 Percival | Diamond Sword + Essences to Magic Sword
function glarth:dialogue/percival/lines/trade3
clear @s diamond_sword 1
clear @a diamond_hoe{Damage:46}
clear @a diamond_hoe{Damage:47}
clear @a diamond_hoe{Damage:48}
clear @a diamond_hoe{Damage:79}
clear @a diamond_hoe{CustomModelData:232}
give @a golden_hoe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:200,Operation:0,UUID:[I;0,61481,0,140909]}],Unbreakable:1, display: {Lore: ['""', '{"translate":"item.modifiers.mainhand","color":"gray","italic":false}', '[{"text":" 2±± ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackDamage"}]'], Name: '{"translate":"item.magic_sword","italic":false}'},HideFlags:63} 1
execute if score combat Stats matches 0 run function glarth:mechanic/action/move_grimsbane
tag @e[tag=percival,type=armor_stand] add c