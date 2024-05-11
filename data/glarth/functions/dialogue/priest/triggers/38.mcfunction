#38 Priest | Mayor's Ring to Holy Sword
function glarth:dialogue/priest/lines/trade3
clear @s diamond_hoe{Damage:42} 1
give @s golden_sword{display:{Name:"{\"italic\":false,\"translate\":\"item.holy_sword\"}"},Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:sharpness",lvl:2},{id:"minecraft:fire_aspect",lvl:1},{id:"minecraft:looting",lvl:2}]} 1
tag @e[tag=priest,type=armor_stand] add c