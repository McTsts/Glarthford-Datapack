scoreboard players remove @s Animation 1
scoreboard players set r Random 15
function glarth:util/randomish
execute at @s run tp @s ~ ~ ~ ~1 0
execute if score n Random matches 1..3 at @s run tp @s ~ ~ ~ ~2 0
execute if score n Random matches 4 at @s run tp @s ~ ~ ~ ~4 0
execute if score n Random matches 5 at @s run tp @s ~ ~ ~ ~6 0
execute if score n Random matches 6 at @s run tp @s ~ ~ ~ ~8 0
execute if score n Random matches 7 at @s run tp @s ~ ~ ~ ~10 0
execute if score n Random matches 8..12 at @s run tp @s ^ ^ ^0.07
execute if score n Random matches 13 at @s run tp @s ^ ^-0.01 ^0.0
execute if score n Random matches 14 at @s run tp @s ^ ^0.02 ^0.03
execute if score n Random matches 15 at @s run tp @s ^ ^0.02 ^0.09
execute if score @s Animation matches 0 run function glarth:mechanic/animation/dragonfly/next