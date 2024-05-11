#25 Lumberjack | Water to Shovel 
function glarth:dialogue/lumberjack/lines/trade4
clear @s potion{Potion:"minecraft:water"} 1 
give @s stone_shovel{display:{Name:"{\"italic\":false,\"translate\":\"item.shovel_lumberjack\"}"},CanDestroy:["soul_sand"],HideFlags:55} 1
tag @e[tag=lumberjack,type=armor_stand] add b