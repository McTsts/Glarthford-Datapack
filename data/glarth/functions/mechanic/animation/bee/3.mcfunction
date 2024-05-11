execute unless score @s bee matches 1.. run function glarth:mechanic/animation/bee/next
execute if score @s bee matches 1 at @s facing 109.48 26.63 -218.49 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 2 at @s facing 106.39 26.63 -222.57 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 3 at @s facing 97.42 26.63 -217.42 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 4 at @s facing 97.78 27.00 -222.29 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 5 at @s facing 97.48 27.00 -228.57 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 10 at @s facing 103.47 28.5 -216.70 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 11 at @s facing 103.52 28.5 -216.0 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 12 at @s facing 103.47 28.5 -216.70 run tp @s ^ ^ ^0.05 ~ ~

execute if score @s bee matches 1 positioned 109.48 26.63 -218.49 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 2 positioned 106.39 26.63 -222.57 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 3 positioned 97.42 26.63 -217.42 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 4 positioned 97.78 27.00 -222.29 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 5 positioned 97.48 27.00 -228.57 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 10 positioned 103.47 28.5 -216.70 if entity @s[distance=..0.1] run scoreboard players set @s bee 11
execute if score @s bee matches 11 positioned 103.52 28.5 -216.0 if entity @s[distance=..0.1] run scoreboard players set @s bee 12
execute if score @s bee matches 12 positioned 103.47 28.5 -216.70 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/next