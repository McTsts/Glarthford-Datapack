execute unless score @s dragonfly matches 1.. run function glarth:mechanic/animation/dragonfly/next
execute if score @s dragonfly matches 1 at @s facing -31 29 -139 run tp @s ^ ^ ^0.2 facing -31 29 -139
execute if score @s dragonfly matches 2 at @s facing -37 30 -134 run tp @s ^ ^ ^0.2 facing -37 30 -134
execute if score @s dragonfly matches 3 at @s facing -43 28 -148 run tp @s ^ ^ ^0.2 facing -43 28 -148
execute if score @s dragonfly matches 4 at @s facing -45 29 -155 run tp @s ^ ^ ^0.2 facing -45 29 -155
execute if score @s dragonfly matches 5 at @s facing -47 27 -137 run tp @s ^ ^ ^0.2 facing -47 27 -137
execute if score @s dragonfly matches 6 at @s facing -40 42 -141 run tp @s ^ ^ ^0.2 facing -40 42 -141

execute if score @s dragonfly matches 1 positioned -31 29 -139 if entity @s[distance=..3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 2 positioned -37 30 -134 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 3 positioned -43 28 -148 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 4 positioned -45 29 -155 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 5 positioned -47 27 -137 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover
execute if score @s dragonfly matches 6 positioned -40 42 -141 if entity @s[distance=..0.3] run function glarth:mechanic/animation/dragonfly/hover