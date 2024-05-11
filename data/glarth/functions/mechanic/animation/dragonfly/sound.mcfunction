scoreboard players set r Random 40
function glarth:util/randomish
execute if score n Random matches 1 run playsound minecraft:wings1 neutral @a[distance=..7] ~ ~ ~ 0.025 1
execute if score n Random matches 2 run playsound minecraft:wings2 neutral @a[distance=..7] ~ ~ ~ 0.025 1
execute if score n Random matches 3 run playsound minecraft:wings3 neutral @a[distance=..7] ~ ~ ~ 0.025 1
execute if score n Random matches 3 run playsound minecraft:wings4 neutral @a[distance=..7] ~ ~ ~ 0.025 1
execute if score n Random matches 3 run playsound minecraft:wings5 neutral @a[distance=..7] ~ ~ ~ 0.025 1
