scoreboard players remove @s Animation 1
scoreboard players set r Random 15
function glarth:util/randomish
execute at @s run tp @s ~ ~ ~ ~1 0
execute if score n Random matches 1..3 at @s run tp @s ~ ~ ~ ~1 0
execute if score n Random matches 4 at @s run tp @s ~ ~ ~ ~3 0
execute if score n Random matches 5 at @s run tp @s ~ ~ ~ ~4 0
execute if score n Random matches 6 at @s run tp @s ~ ~ ~ ~6 0
execute if score n Random matches 7 at @s run tp @s ~ ~ ~ ~7 0
execute if score n Random matches 8..12 at @s run tp @s ^ ^ ^0.02
execute if score n Random matches 13 at @s run tp @s ^ ^-0.005 ^0.0
execute if score n Random matches 14 at @s run tp @s ^ ^0.01 ^0.01
execute if score n Random matches 15 at @s run tp @s ^ ^0.01 ^0.03
execute if score @s Animation matches 0 run function glarth:mechanic/animation/dragonfly/next