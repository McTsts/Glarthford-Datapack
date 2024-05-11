#38 Priest | Mayor's Ring to Holy Sword
function glarth:dialogue/priest/lines/trade3
clear @s diamond_hoe[damage=42] 1
give @s minecraft:golden_sword[custom_name='{"italic":false,"translate":"item.holy_sword"}',enchantments={"minecraft:knockback":1,"minecraft:sharpness":2,"minecraft:fire_aspect":1,"minecraft:looting":2}] 1
tag @e[tag=priest,type=armor_stand] add c