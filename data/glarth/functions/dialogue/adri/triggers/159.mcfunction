#159 Adri | Give Dog
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run function glarth:dialogue/adri/lines/trade3
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run data merge entity @e[type=wolf,limit=1,sort=nearest] {Owner:[I;-129209735,172901856,-2019832503,-338377502],Sitting:1b}
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[type=wolf,limit=1,sort=nearest] add adriDog
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[tag=adri,type=armor_stand] add b
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run give @s minecraft:crossbow[damage=452,enchantments={multishot:1},custom_model_data=1,custom_data={bow:"crossbow_multi"}]
execute at @e[tag=adri,type=armor_stand] unless entity @e[type=wolf,distance=..7] run tag @s add dialogueInvalid
execute at @e[tag=adri,type=armor_stand] unless entity @e[type=wolf,distance=..7] run function glarth:dialogue/adri/lines/trade4
