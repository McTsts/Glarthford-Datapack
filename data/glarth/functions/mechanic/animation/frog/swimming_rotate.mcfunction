scoreboard players set r Random 8
function glarth:util/randomish
execute if score n Random matches 1 run tp @s ~ ~ ~ ~15 ~
execute if score n Random matches 2 run tp @s ~ ~ ~ ~-15 ~
execute if score n Random matches 3 run tp @s ~ ~ ~ ~5 ~
execute if score n Random matches 4 run tp @s ~ ~ ~ ~15 ~
