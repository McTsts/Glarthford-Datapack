#111 Rose Lover | Carrot to Shears
function glarth:dialogue/rose/lines/trade1
clear @s minecraft:carrot 1
give @s minecraft:shears{CanDestroy:["red_tulip","orange_tulip","pink_tulip"],HideFlags:127} 1
tag @e[tag=rose,type=armor_stand] add a