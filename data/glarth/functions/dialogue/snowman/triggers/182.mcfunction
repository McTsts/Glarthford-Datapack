#182 Snowman | GCarrot to Ice Sword
function glarth:dialogue/snowman/lines/trade1
clear @s minecraft:golden_carrot 1
give @s minecraft:golden_shovel{Damage:20,display:{Name:'{"translate":"item.ice_sword","italic":false}',Lore:['""','{"translate":"item.modifiers.mainhand","color":"gray","italic":false}','[{"text":" 4 ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackDamage"}]','[{"text":" 1.6 ","color":"dark_green","italic":false},{"translate":"attribute.name.generic.attackSpeed"}]','""', '{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}', '[" ",{"color":"dark_green","italic":false,"translate":"tbc.attack.msg.name.freeze","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1726406633,-1085388984,-1210847267,-916795565],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1430400008,1917078167,-1595683736,-1399880695],Slot:"mainhand"}],HideFlags:63} 1
tag @e[tag=snowman,type=armor_stand] add a
schedule function glarth:mechanic/animation/snowman/1 10t
schedule function glarth:mechanic/animation/snowman/3 20t