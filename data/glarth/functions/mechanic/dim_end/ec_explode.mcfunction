execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 5
execute at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 20
execute at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if entity @e[type=minecraft:end_crystal,distance=0.1..] run function glarth:mechanic/dim_end/ep_forcefield_r
execute unless entity @e[type=minecraft:end_crystal,distance=0.1..] run function glarth:mechanic/dim_end/ep_forcefield2
kill @s