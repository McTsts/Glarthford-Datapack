scoreboard players remove @s Animation 1
scoreboard players set r Random 15
function glarth:util/randomish
execute at @s run tp @s ~ ~ ~ ~1 0
execute if score n Random matches 1..3 at @s run tp @s ~ ~ ~ ~4 0
execute if score n Random matches 4 at @s run tp @s ~ ~ ~ ~8 0
execute if score n Random matches 5 at @s run tp @s ~ ~ ~ ~12 0
execute if score n Random matches 6 at @s run tp @s ~ ~ ~ ~16 0
execute if score n Random matches 7 at @s run tp @s ~ ~ ~ ~20 0
execute if score n Random matches 8..12 at @s run tp @s ^ ^ ^0.025
execute if score n Random matches 13 at @s run tp @s ^ ^ ^0.0
execute if score n Random matches 14 at @s run tp @s ^ ^ ^0.015
execute if score n Random matches 15 at @s run tp @s ^ ^ ^0.045
execute if score @s Animation matches 0 at @s unless entity @e[type=slime,tag=beeHiveSlime,distance=..15] run function glarth:mechanic/animation/bee/next
execute if score @s Animation matches 0 at @s if entity @e[type=slime,tag=beeHiveSlime,distance=..15] run scoreboard players set @s bee 10