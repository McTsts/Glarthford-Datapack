#25 Lumberjack | Water to Shovel 
function glarth:dialogue/lumberjack/lines/trade4
clear @s potion[potion_contents={potion:"minecraft:water"}] 1 
give @s minecraft:stone_shovel[custom_name='{"italic":false,"translate":"item.shovel_lumberjack"}',can_break={blocks:"soul_sand"},hide_additional_tooltip={}] 1
tag @e[tag=lumberjack,type=armor_stand] add b