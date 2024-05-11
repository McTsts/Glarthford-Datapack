#101 Thief | Potion of Progression
function glarth:dialogue/thief/lines/trade1
give @s potion{CustomPotionEffects:[{Id:26,Duration:60}],display:{Name:"{\"italic\":false,\"translate\":\"item.pot2\"}"},HideFlags:63,Potion:"mundane"} 1
tag @e[tag=thief,type=armor_stand] add a