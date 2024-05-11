#8 Bum | Beer to Diamond Hoe
function glarth:dialogue/archaeologist/lines/trade1
clear @s stone_shovel 1 
give @s bone_block{CanPlaceOn:["command_block"],HideFlags:63,display:{Lore:['{"translate":"lore.block.1","color":"gray","italic":false,"bold":true}','{"translate":"lore.block.2","color":"gray","italic":false}']}} 2
replaceitem entity @e[tag=archaeologist,type=armor_stand] armor.head diamond_hoe{Damage:115}
tag @e[tag=archaeologist,type=armor_stand] add a