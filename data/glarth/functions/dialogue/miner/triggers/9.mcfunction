#9 Miner | Freshly Baked Bread to Stone Pickaxe
function glarth:dialogue/miner/lines/trade1
clear @s bread{custom:"fresh_bread"} 1 
give @s stone_pickaxe{display:{Name:"{\"italic\":false,\"translate\":\"item.pickaxe_miner\"}"},CanDestroy:["gravel"]} 1
tag @e[tag=miner,type=armor_stand] add a