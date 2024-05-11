#49 Blacksmith | Take Blaze Coin
function glarth:dialogue/blacksmith/lines/trade6
give @s minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"translate\":\"item.blaze_coin\"}"},Unbreakable:1,HideFlags:63,Damage:44} 1
kill @e[tag=b_bc]
execute at @e[tag=blacksmith,type=armor_stand] run playsound minecraft:entity.shulker.open neutral @a ~ ~ ~ 100 0
execute at @e[tag=blacksmith,type=armor_stand] run playsound minecraft:entity.shulker.open neutral @a ~ ~ ~ 100 1
tag @e[tag=blacksmith,type=armor_stand] remove blaze_coin
tag @e[tag=blacksmith,type=armor_stand] add g