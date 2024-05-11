#127 Thief | Potion of Storm
function glarth:dialogue/thief/lines/trade1
give @s potion{CustomPotionEffects:[{Id:27,Duration:60,ShowParticles:0b}],display:{Name:"{\"italic\":false,\"translate\":\"item.pot3\"}"},HideFlags:63,Potion:"water",CustomPotionColor:10936063} 1
tag @e[tag=thief,type=armor_stand] add a