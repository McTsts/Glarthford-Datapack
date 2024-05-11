#127 Thief | Potion of Storm
function glarth:dialogue/thief/lines/trade1
give @s potion{CustomPotionEffects: [{Ambient: 0b, ShowIcon: 1b, ShowParticles: 1b, Duration: 1200, Id: 27b, Amplifier: 0b}], CustomPotionColor: 10936063, HideFlags: 63, Potion: "minecraft:none", custom:"wind_potion",display: {Name: '{"italic":false,"translate":"item.pot3"}'}} 1
tag @e[tag=thief,type=armor_stand] add a