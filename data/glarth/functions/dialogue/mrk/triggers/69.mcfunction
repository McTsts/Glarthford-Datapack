#69 MrK | Written Book to Diamond Leggings
execute if entity @s[nbt={Inventory:[{tag:{book:"enderpig"}}]}] run function glarth:dialogue/mrk/lines/trade1
execute unless entity @s[nbt={Inventory:[{tag:{book:"enderpig"}}]}] run function glarth:dialogue/mrk/lines/trade2
clear @s minecraft:written_book 1
give @s minecraft:diamond_leggings 1
tag @e[tag=mrk,type=armor_stand] add a