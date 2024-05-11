#143 Trader | Buy Chainmail Helmet for Five Iron
function glarth:dialogue/trader/lines/trade1
clear @s iron_ingot 5 
give @s chainmail_helmet{display:{Name:'{"translate":"item.chain_helmet","italic":false}',Lore:['{"translate":"lore.helmet.1","italic":false,"color":"gray"}']}} 1
tag @e[tag=trader,type=armor_stand] add a
tag @s add permaTip25