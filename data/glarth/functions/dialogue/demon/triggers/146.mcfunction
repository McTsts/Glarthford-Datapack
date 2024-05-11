#146 Demon | Blaze Powder to Fire Essence
function glarth:dialogue/demon/lines/trade1
clear @s blaze_powder 1 
give @s diamond_hoe{CustomModelData:232,Unbreakable:1,HideFlags:63,display:{Name:'{"translate":"item.essence_fire","italic":false}'}} 1
tag @e[tag=demon,type=armor_stand] add a