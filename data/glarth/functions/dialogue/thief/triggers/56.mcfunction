#56 Thief | Potion of Time
function glarth:dialogue/thief/lines/trade1
give @s minecraft:potion[custom_name='{"italic":false,"translate":"item.pot"}',potion_contents={custom_color:36331},hide_additional_tooltip={},custom_data={CustomPotionEffects:[{Id:4,Duration:60,ShowParticles:0b}]}] 1
tag @e[tag=thief,type=armor_stand] add a