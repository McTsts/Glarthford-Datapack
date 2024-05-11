function glarth:combat/remove/set
execute if score attackType tbcStats matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{custom:"leaping"}}
execute if score attackType tbcStats matches 2 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{custom:"swiftness"}}
execute if score attackType tbcStats matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{custom:"fire_resistance"}}
execute if score attackType tbcStats matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{custom:"energizing_potion"}}
execute if score attackType tbcStats matches 5 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{Potion:"minecraft:healing"}}
execute if score attackType tbcStats matches 6 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{Potion:"minecraft:strong_healing"}}
execute if score attackType tbcStats matches 7 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{Potion:"minecraft:water"}}
execute if score attackType tbcStats matches 8 run data modify storage glarth:main invget.in set value {id:"minecraft:gold_nugget",tag:{custom:"milk_bottle"}}
execute if score attackType tbcStats matches 9 run data modify storage glarth:main invget.in set value {id:"minecraft:potion",tag:{custom:"wind_potion"}}
execute if data storage glarth:main invget.in if score attackType tbcStats matches 1..4 run function glarth:inventory/get3
execute if data storage glarth:main invget.in if score attackType tbcStats matches 5..7 run function glarth:inventory/get4
execute if data storage glarth:main invget.in if score attackType tbcStats matches 8..9 run function glarth:inventory/get3
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
function glarth:inventory/remove
function glarth:combat/remove/get
execute if score attackType tbcStats matches 1 run scoreboard players remove @s tbcPotion1 1
execute if score attackType tbcStats matches 2 run scoreboard players remove @s tbcPotion2 1
execute if score attackType tbcStats matches 3 run scoreboard players remove @s tbcPotion3 1
execute if score attackType tbcStats matches 4 run scoreboard players remove @s tbcPotion4 1
execute if score attackType tbcStats matches 5 run scoreboard players remove @s tbcPotion5 1
execute if score attackType tbcStats matches 6 run scoreboard players remove @s tbcPotion6 1
execute if score attackType tbcStats matches 7 run scoreboard players remove @s tbcPotion7 1
execute if score attackType tbcStats matches 8 run scoreboard players remove @s tbcPotion8 1
execute if score attackType tbcStats matches 9 run scoreboard players remove @s tbcPotion9 1