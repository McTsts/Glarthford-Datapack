#39 Grave Digger | Rose to Shovel
function glarth:dialogue/digger/lines/trade1
clear @s poppy 1 
give @s stone_shovel{display:{Name:"{\"italic\":false,\"translate\":\"item.shovel_digger\"}"},CanDestroy:["soul_sand"],HideFlags:55,Damage:119} 1
tag @e[tag=digger,type=armor_stand] add a