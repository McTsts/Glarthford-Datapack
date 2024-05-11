#62 Baker | Take Bread
function glarth:dialogue/baker/lines/trade3
give @s bread{custom:"fresh_bread",display:{Name:"{\"italic\":false,\"translate\":\"item.bread_fresh\"}"}} 1
scoreboard players reset @e[tag=baker,type=armor_stand] action
tag @e[tag=baker,type=armor_stand] remove breadX
tag @e[tag=baker,type=armor_stand] remove bread
tag @e[tag=baker,type=armor_stand] remove a
tag @e[tag=baker,type=armor_stand] remove b
tag @e[tag=baker,type=armor_stand] add c