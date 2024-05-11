function glarth:combat/remove/set
execute if score attackType tbcStats matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:wooden_hoe"}
execute if score attackType tbcStats matches 2 run data modify storage glarth:main invget.in set value {id:"minecraft:stone_pickaxe"}
execute if score attackType tbcStats matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:stone_shovel"}
execute if score attackType tbcStats matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:wooden_sword"}
execute if score attackType tbcStats matches 5 run data modify storage glarth:main invget.in set value {id:"minecraft:diamond_pickaxe"}
execute if score attackType tbcStats matches 6 run data modify storage glarth:main invget.in set value {id:"minecraft:stone_sword"}
execute if score attackType tbcStats matches 7 run data modify storage glarth:main invget.in set value {id:"minecraft:iron_sword"}
execute if score attackType tbcStats matches 8 run data modify storage glarth:main invget.in set value {id:"minecraft:diamond_sword"}
execute if score attackType tbcStats matches 9 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_sword"}
execute if score attackType tbcStats matches 10 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 11 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 12 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 13 run data modify storage glarth:main invget.in set value {id:"minecraft:diamond_shovel"}
execute if score attackType tbcStats matches 14 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 15 run data modify storage glarth:main invget.in set value {id:"minecraft:iron_shovel"}
execute if score attackType tbcStats matches 16 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_shovel"}
execute if score attackType tbcStats matches 17 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_pickaxe"}
execute if score attackType tbcStats matches 18 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_axe"}
execute if score attackType tbcStats matches 19 run data modify storage glarth:main invget.in set value {id:"minecraft:netherite_sword"}
execute if data storage glarth:main invget.in run function glarth:inventory/get
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
execute if data storage glarth:main invget.in if data storage glarth:main temp run function glarth:inventory/damage
execute if data storage glarth:main invget.in if data storage glarth:main temp run function glarth:combat/remove/remove_damaged
function glarth:combat/remove/get