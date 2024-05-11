#144 Trader | Buy Fermented Spider Eye for One Emerald
function glarth:dialogue/trader/lines/trade2
clear @s emerald 1
give @s fermented_spider_eye 1
tag @e[tag=trader,type=armor_stand] add b
tag @s add permaTip25