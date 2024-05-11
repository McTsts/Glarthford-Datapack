#127 Thief | Potion of Storm
function glarth:dialogue/thief/lines/trade1
give @s minecraft:potion[custom_name='{"italic":false,"translate":"item.pot3"}',potion_contents={custom_color:10936063,potion:"minecraft:none"},hide_additional_tooltip={},custom_data={CustomPotionEffects:[{Ambient:0b,ShowIcon:1b,ShowParticles:1b,Duration:1200,Id:27,Amplifier:0b}],custom:"wind_potion"}] 1
tag @e[tag=thief,type=armor_stand] add a