execute as @e[tag=grimsbane_boss] at @s run particle smoke ~ ~ ~ 10 10 10 0.1 1000
execute as @e[tag=grimsbane_boss] at @s run playsound minecraft:entity.villager.death neutral @a ~ ~ ~ 1 1
execute as @e[tag=grimsbane_boss] at @s as @e[tag=char,distance=..10] at @s run particle lava ~ ~ ~ 1 1 1 0 50
execute as @e[tag=grimsbane_boss] at @s as @e[tag=char,distance=..10] at @s run particle flame ~ ~ ~ 1 1 1 0.5 50
execute as @e[tag=grimsbane_boss] at @s as @e[tag=char,distance=..10] at @s run particle angry_villager ~ ~ ~ 1 1 1 0.5 50
execute as @e[tag=grimsbane_boss] at @s as @e[tag=char,distance=..10] at @s run playsound minecraft:entity.villager.death neutral @a ~ ~ ~ 1 1
execute as @e[tag=grimsbane_boss] at @s run tag @e[tag=char,distance=..10] add die2
execute as @e[tag=grimsbane_boss] at @s run function glarth:dialogue/grimsbane/lines/attack1