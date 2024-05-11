scoreboard players set r Random 5
function glarth:util/randomish
scoreboard players operation @s bee = n Random

scoreboard players add @s beeCounter 1
execute if score @s beeCounter matches 5 run scoreboard players set @s bee 6
execute if score @s bee matches 1 if block 40 27 -164 structure_void run function glarth:mechanic/animation/bee/next_1
execute if score @s bee matches 2 if block 42 27 -164 structure_void run function glarth:mechanic/animation/bee/next_1
execute if score @s bee matches 3 if block 43 27 -166 structure_void run function glarth:mechanic/animation/bee/next_1
execute if score @s bee matches 4 if block 39 27 -166 structure_void run function glarth:mechanic/animation/bee/next_1
execute if score @s bee matches 5 if block 37 27 -167 structure_void run function glarth:mechanic/animation/bee/next_1