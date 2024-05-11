#49 Blacksmith | Take Blaze Coin
function glarth:dialogue/blacksmith/lines/trade6
give @s minecraft:diamond_hoe[custom_name='{"italic":false,"translate":"item.blaze_coin"}',unbreakable={show_in_tooltip:0b},damage=44,hide_additional_tooltip={}] 1
kill @e[tag=b_bc]
execute at @e[tag=blacksmith,type=armor_stand] run playsound minecraft:entity.shulker.open neutral @a ~ ~ ~ 100 0
execute at @e[tag=blacksmith,type=armor_stand] run playsound minecraft:entity.shulker.open neutral @a ~ ~ ~ 100 1
tag @e[tag=blacksmith,type=armor_stand] remove blaze_coin
tag @e[tag=blacksmith,type=armor_stand] add g