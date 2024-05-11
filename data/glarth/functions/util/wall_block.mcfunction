scoreboard players set r Random 15
function glarth:util/random
execute if score n Random matches 1..6 run setblock ~ ~ ~ stone
execute if score n Random matches 7..11 run setblock ~ ~ ~ andesite
execute if score n Random matches 12..15 run setblock ~ ~ ~ cobblestone
tp @s ~ ~1 ~
