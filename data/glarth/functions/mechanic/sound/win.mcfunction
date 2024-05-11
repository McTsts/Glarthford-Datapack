scoreboard players set r Random 2
function glarth:util/random
execute if score n Random matches 1 as @a at @s run playsound win1 player @s ~ ~ ~ 0.5
execute if score n Random matches 2 as @a at @s run playsound win2 player @s ~ ~ ~ 0.5

