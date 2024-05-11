#8 Bum | Beer to Diamond Hoe
function glarth:dialogue/archaeologist/lines/trade1
clear @s stone_shovel 1 
give @s minecraft:bone_block[can_place_on={predicates:[{blocks:"command_block"}],show_in_tooltip:0b},lore=['{"translate":"lore.block.1","color":"gray","italic":false,"bold":true}','{"translate":"lore.block.2","color":"gray","italic":false}'],hide_additional_tooltip={}] 2
item replace entity @e[tag=archaeologist,type=armor_stand] armor.head with minecraft:diamond_hoe[damage=115]
tag @e[tag=archaeologist,type=armor_stand] add a