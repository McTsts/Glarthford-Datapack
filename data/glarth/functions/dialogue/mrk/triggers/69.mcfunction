#69 MrK | Written Book to Diamond Leggings
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{book:"short_stories_inverted"}}}]}] run function glarth:dialogue/mrk/lines/trade1
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{book:"short_stories_inverted"}}}]}] run function glarth:dialogue/mrk/lines/trade2
clear @s minecraft:written_book 1
function glarth:items/util/give {item:"trades.bored_man.1"} 
tag @e[tag=mrk,type=armor_stand] add a