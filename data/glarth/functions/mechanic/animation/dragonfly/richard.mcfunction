execute unless score @s dragonfly matches 1.. run function glarth:mechanic/animation/dragonfly/next
execute if score @s dragonfly matches 1 at @s facing 20 27 -212 run tp @s ^ ^ ^0.2 facing 20 27 -212
execute if score @s dragonfly matches 2 at @s facing 23 27 -213 run tp @s ^ ^ ^0.2 facing 23 27 -213
execute if score @s dragonfly matches 3 at @s facing 23 26 -216 run tp @s ^ ^ ^0.2 facing 23 26 -216
execute if score @s dragonfly matches 4 at @s facing 21 27 -215 run tp @s ^ ^ ^0.2 facing 21 27 -215
execute if score @s dragonfly matches 5 at @s facing 21 27 -217 run tp @s ^ ^ ^0.2 facing 21 27 -217

execute if score @s dragonfly matches 1 positioned 20 27 -212 if entity @s[distance=..0.6] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 2 positioned 23 27 -213 if entity @s[distance=..0.45] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 3 positioned 23 26 -216 if entity @s[distance=..0.45] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 4 positioned 21 27 -215 if entity @s[distance=..0.45] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 5 positioned 21 27 -217 if entity @s[distance=..0.45] run function glarth:mechanic/animation/dragonfly/hover