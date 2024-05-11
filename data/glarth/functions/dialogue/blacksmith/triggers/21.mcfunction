#21 Blacksmith | Gold x5 to Chain Helmet
function glarth:dialogue/blacksmith/lines/trade1
clear @s gold_ingot 5
give @s chainmail_helmet{display:{Name:'{"translate":"item.chain_helmet","italic":false}',Lore:['{"translate":"lore.helmet.1","italic":false,"color":"gray"}']}} 1
tag @e[tag=blacksmith,type=armor_stand] add a