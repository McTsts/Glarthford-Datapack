#101 Thief | Potion of Progression
function glarth:dialogue/thief/lines/trade1
give @s minecraft:potion[custom_name='{"italic":false,"translate":"item.pot2"}',potion_contents={potion:"mundane"},hide_additional_tooltip={},custom_data={CustomPotionEffects:[{Id:26,Duration:60}]}] 1
tag @e[tag=thief,type=armor_stand] add a