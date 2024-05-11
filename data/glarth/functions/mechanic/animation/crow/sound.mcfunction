scoreboard players set r Random 400
function glarth:util/randomish
execute if score n Random matches 1 run playsound minecraft:crow1 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 2 run playsound minecraft:crow2 neutral @a ~ ~ ~ 0.2 1
execute if score n Random matches 3 run playsound minecraft:crow3 neutral @a ~ ~ ~ 0.2 1