scoreboard players set r Random 12
function glarth:util/random
execute if score n Random matches 1 run playsound creepy3 ambient @a ~ ~ ~ 0.5 1
execute if score n Random matches 2 run playsound creepy4 ambient @a ~ ~ ~ 0.5 1
execute if score n Random matches 3 run playsound creepy5 ambient @a ~ ~ ~ 0.3 1
execute if score n Random matches 4 run playsound creepy7 ambient @a ~ ~ ~ 0.2 1
execute if score n Random matches 5 run playsound creepy8 ambient @a ~ ~ ~ 0.5 1
execute if score n Random matches 6 run playsound creepy9 ambient @a ~ ~ ~ 0.5 1
execute if score n Random matches 7 run playsound creepy10 ambient @a ~ ~ ~ 0.5 1
execute if score n Random matches 8 run playsound creepy11 ambient @a ~ ~ ~ 0.3 1
execute if score n Random matches 9..12 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.5
