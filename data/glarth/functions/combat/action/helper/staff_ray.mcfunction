execute if score attackElement tbcStats matches 0 run particle minecraft:witch ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 1 run particle minecraft:dripping_water ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 2 run particle minecraft:flame ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 3 run particle minecraft:cloud ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 4 run particle minecraft:crit ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 5 run particle minecraft:effect ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 6 run particle minecraft:happy_villager ~ ~0.6 ~ 0 0 0 0 1
execute if score attackElement tbcStats matches 7 run particle minecraft:falling_honey ~ ~0.6 ~ 0 0 0 0 1
execute if score staffRay tbcStats matches 0 if entity @e[tag=tbcMarkerMiddle,distance=..0.5] run scoreboard players set staffRay tbcStats 1
execute if score staffRay tbcStats matches 0 facing entity @e[tag=tbcMarkerMiddle] feet positioned ^ ^ ^0.5 run function glarth:combat/action/helper/staff_ray
execute if score staffRay tbcStats matches 1 if entity @e[scores={tbcSel=1},distance=..0.5] run scoreboard players set staffRay tbcStats 2
execute if score staffRay tbcStats matches 1 facing entity @e[scores={tbcSel=1}] feet positioned ^ ^ ^0.5 run function glarth:combat/action/helper/staff_ray