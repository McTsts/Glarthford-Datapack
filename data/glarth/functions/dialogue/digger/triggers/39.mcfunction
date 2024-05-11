#39 Grave Digger | Rose to Shovel
function glarth:dialogue/digger/lines/trade1
clear @s poppy 1 
give @s minecraft:stone_shovel[custom_name='{"italic":false,"translate":"item.shovel_digger"}',can_break={blocks:"soul_sand"},damage=119,hide_additional_tooltip={}] 1
tag @e[tag=digger,type=armor_stand] add a