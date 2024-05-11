#209 Adri | Dog => Help
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run function glarth:dialogue/adri/lines/gary3
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[tag=adri] add move_to_gary
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run data merge entity @e[type=wolf,limit=1,sort=nearest] {Owner:[I;-129209735,172901856,-2019832503,-338377502],Sitting:1b}
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[type=wolf,limit=1,sort=nearest] add adriDog
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[type=wolf,limit=1,sort=nearest] add die
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[tag=adri,type=armor_stand] add e
execute at @e[tag=adri,type=armor_stand] unless entity @e[type=wolf,distance=..7] run function glarth:dialogue/adri/lines/trade4
