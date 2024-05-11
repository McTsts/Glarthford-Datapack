function glarth:combat/remove/set
execute if score attackType tbcStats matches 1 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 2 run data modify storage glarth:main invget.in set value {id:"minecraft:shears"}
execute if score attackType tbcStats matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:gray_dye"}
execute if score attackType tbcStats matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:torch"}
execute if score attackType tbcStats matches 5 run data modify storage glarth:main invget.in set value {id:"minecraft:stone_pickaxe"}
execute if score attackType tbcStats matches 6 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_axe"}
execute if score attackType tbcStats matches 7 run data modify storage glarth:main invget.in set value {id:"minecraft:diamond_pickaxe"}
execute if score attackType tbcStats matches 3 run scoreboard players remove @s tbcFood27 1
execute if score attackType tbcStats matches 4 run scoreboard players remove @s tbcFood28 1
execute if data storage glarth:main invget.in run function glarth:inventory/get
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
execute if data storage glarth:main invget.in if data storage glarth:main temp if score attackType tbcStats matches 2 run function glarth:inventory/damage
execute if data storage glarth:main invget.in if data storage glarth:main temp if score attackType tbcStats matches 3..4 run function glarth:inventory/remove
execute if data storage glarth:main invget.in if data storage glarth:main temp if score attackType tbcStats matches 5..7 run function glarth:inventory/damage
execute if data storage glarth:main invget.in if data storage glarth:main temp run function glarth:combat/remove/remove_damaged
function glarth:combat/remove/get