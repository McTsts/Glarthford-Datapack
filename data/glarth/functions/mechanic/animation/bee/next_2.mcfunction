scoreboard players set r Random 5
function glarth:util/randomish
scoreboard players operation @s bee = n Random


execute if score @s bee matches 2 if block -16 27 -256 structure_void run function glarth:mechanic/animation/bee/next_2
execute if score @s bee matches 3 if block -18 27 -253 structure_void run function glarth:mechanic/animation/bee/next_2
execute if score @s bee matches 4 if block -13 26 -255 structure_void run function glarth:mechanic/animation/bee/next_2