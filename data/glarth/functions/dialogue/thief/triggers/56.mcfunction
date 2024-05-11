#56 Thief | Potion of Time
function glarth:dialogue/thief/lines/trade1
give @s potion{CustomPotionEffects:[{Id:4,Duration:60,ShowParticles:0b}],display:{Name:"{\"italic\":false,\"translate\":\"item.pot\"}"},CustomPotionColor:36331,HideFlags:63} 1
tag @e[tag=thief,type=armor_stand] add a