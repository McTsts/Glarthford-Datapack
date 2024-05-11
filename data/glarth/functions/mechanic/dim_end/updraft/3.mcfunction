scoreboard players set r Random 3
function glarth:util/randomish
execute if score n Random matches 1 run particle cloud ~ ~ ~ 0 0.4 0 1 0 normal @a[distance=..25]
execute if score n Random matches 2 run particle cloud ~ ~ ~ 0 0.4 0 0.75 0 normal @a[distance=..25]
execute if score n Random matches 3 run particle cloud ~ ~ ~ 0 0.4 0 1.25 0 normal @a[distance=..25]
