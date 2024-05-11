scoreboard players set r Random 100
function glarth:util/randomish
execute if score n Random matches 1 run playsound minecraft:frog1 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 2 run playsound minecraft:frog2 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 3 run playsound minecraft:frog1 neutral @a ~ ~ ~ 0.2 0.8
execute if score n Random matches 4 run playsound minecraft:frog2 neutral @a ~ ~ ~ 0.2 0.8
execute if score n Random matches 5 run playsound minecraft:frog1 neutral @a ~ ~ ~ 0.2 1.5
execute if score n Random matches 6 run playsound minecraft:frog2 neutral @a ~ ~ ~ 0.2 1.5
execute if score n Random matches 1..6 run scoreboard players set @s frog 120
