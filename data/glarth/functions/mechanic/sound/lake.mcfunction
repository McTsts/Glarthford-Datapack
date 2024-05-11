scoreboard players set r Random 5
function glarth:util/random
execute if score n Random matches 1 run playsound minecraft:block.water.ambient ambient @s ~ ~ ~ 0.5
execute if score n Random matches 2 run playsound lake1 ambient @s ~ ~ ~ 1 1
execute if score n Random matches 3 run playsound lake2 ambient @s ~ ~ ~ 1 1
execute if score n Random matches 4 run playsound lake3 ambient @s ~ ~ ~ 1 1
