execute unless score @s dragonfly matches 1.. run function glarth:mechanic/animation/dragonfly/next
execute if score @s dragonfly matches 1 at @s facing -7 38 -132 run tp @s ^ ^ ^0.25 facing -7 38 -132
execute if score @s dragonfly matches 2 at @s facing 18 28 -141 run tp @s ^ ^ ^0.25 facing 18 28 -141
execute if score @s dragonfly matches 3 at @s facing 5 32 -128 run tp @s ^ ^ ^0.25 facing 5 32 -128
execute if score @s dragonfly matches 4 at @s facing -5 28 -138 run tp @s ^ ^ ^0.25 facing -5 28 -138
execute if score @s dragonfly matches 5 at @s facing 2 28 -149 run tp @s ^ ^ ^0.25 facing 2 28 -149
execute if score @s dragonfly matches 6 at @s facing 0 29 -143 run tp @s ^ ^ ^0.25 facing 0 29 -143
execute if score @s dragonfly matches 7 at @s facing 14 28 -133 run tp @s ^ ^ ^0.25 facing 14 28 -133
execute if score @s dragonfly matches 8 at @s facing 5 29 -148 run tp @s ^ ^ ^0.25 facing 5 29 -148
execute if score @s dragonfly matches 9 at @s facing 13 38 -152 run tp @s ^ ^ ^0.25 facing 13 38 -152
execute if score @s dragonfly matches 10 at @s facing 9 40 -136 run tp @s ^ ^ ^0.25 facing 9 40 -136

execute if score @s dragonfly matches 1 positioned -7 38 -132 if entity @s[distance=..3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 2 positioned 18 28 -141 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 3 positioned 5 32 -128 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 4 positioned -5 28 -138 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 5 positioned 2 28 -149 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 6 positioned 0 29 -143 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 7 positioned 14 28 -133 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 8 positioned 5 29 -148 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 9 positioned 13 38 -152 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 10 positioned 9 40 -136 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover