scoreboard players set r Random 4
function glarth:util/random
execute if score n Random matches 01 run tp @s ~ ~ ~0.01 ~ ~
execute if score n Random matches 02 run tp @s ~ ~ ~-0.01 ~ ~
execute if score n Random matches 03 run tp @s ~ ~ ~ ~2 ~
execute if score n Random matches 04 run tp @s ~ ~ ~ ~-2 ~
scoreboard players operation @s shake = n Random