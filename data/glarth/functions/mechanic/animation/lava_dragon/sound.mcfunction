scoreboard players set r Random 30
function glarth:util/randomish
execute if score n Random matches 1 run playsound minecraft:lava_dragon_roar1 hostile @a ~ ~ ~ 0.5 1 0.1
execute if score n Random matches 2 run playsound minecraft:lava_dragon_roar1 hostile @a ~ ~ ~ 0.5 1 0.1
execute if score n Random matches 3 run playsound minecraft:lava_dragon_roar2 hostile @a ~ ~ ~ 0.5 0.7 0.1
execute if score n Random matches 4 run playsound minecraft:lava_dragon_roar2 hostile @a ~ ~ ~ 0.5 0.7 0.1
execute if score n Random matches 1..4 run scoreboard players set @s lavaDragonSound 120
