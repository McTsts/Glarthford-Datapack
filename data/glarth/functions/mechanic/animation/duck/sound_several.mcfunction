scoreboard players set r Random 600
function glarth:util/randomish
execute if score n Random matches 1 run playsound minecraft:duck1 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 2 run playsound minecraft:duck1 neutral @a ~ ~ ~ 0.2 1.1
execute if score n Random matches 3 run playsound minecraft:duck1 neutral @a ~ ~ ~ 0.2 0.9
execute if score n Random matches 4 run playsound minecraft:duck2 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 5 run playsound minecraft:duck3 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 6 run playsound minecraft:duck4 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 7 run playsound minecraft:duck5 neutral @a ~ ~ ~ 0.2 1