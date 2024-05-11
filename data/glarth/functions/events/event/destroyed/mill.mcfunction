execute unless score lowGraphics Stats matches 1 run particle dust 0 0 0 100 13 37 -234 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 13 37 -234
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 13 37 -234
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 13 37 -234
summon minecraft:lightning_bolt 13 37 -234
tag @e[tag=mill] add millX
tag @e[tag=mill] remove mill
kill @e[tag=mill_inner]
execute as @e[tag=millX] run data merge entity @s {NoGravity:0,Marker:0}
execute as @e[tag=mill1] run data merge entity @s {Motion:[-0.2,0.0,-0.1]}
execute as @e[tag=mill2] run data merge entity @s {Motion:[-0.25,0.0,0.2]}
execute as @e[tag=mill3] run data merge entity @s {Motion:[-0.3,0.0,-0.2]}
execute as @e[tag=mill4] run data merge entity @s {Motion:[-0.25,0.0,0.1]}
execute as @e[tag=mill_log] run data merge entity @s {Motion:[-0.2,0.0,-0.3]}
tag @e[tag=events,type=area_effect_cloud] add evMillDestroyed

# Kill Miller
tag @e[tag=miller,tag=char,type=armor_stand] add die2