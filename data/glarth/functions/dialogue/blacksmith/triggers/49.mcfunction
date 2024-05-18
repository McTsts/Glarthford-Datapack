#49 Blacksmith | Take Blaze Coin
function glarth:dialogue/blacksmith/lines/trade6
function glarth:items/util/give {item:"trades.blacksmith.2"} 
kill @e[tag=b_bc]
execute at @e[tag=blacksmith,type=armor_stand] run playsound minecraft:entity.shulker.open neutral @a ~ ~ ~ 100 0
execute at @e[tag=blacksmith,type=armor_stand] run playsound minecraft:entity.shulker.open neutral @a ~ ~ ~ 100 1
tag @e[tag=blacksmith,type=armor_stand] remove blaze_coin
tag @e[tag=blacksmith,type=armor_stand] add g