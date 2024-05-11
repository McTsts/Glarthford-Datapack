execute unless score @s bee matches 1.. run function glarth:mechanic/animation/bee/next
execute if score @s bee matches 1 at @s facing 40.37 27 -163.66 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 2 at @s facing 42.45 27 -163.83 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 3 at @s facing 43.42 27 -165.69 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 4 at @s facing 39.24 27 -165.73 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 5 at @s facing 37.67 27 -166.49 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 6 at @s facing 42.50 27 -162.58 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 10 at @s facing 40.47 28.5 -162.70 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 11 at @s facing 40.52 28.5 -162.00 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 12 at @s facing 40.47 28.5 -162.70 run tp @s ^ ^ ^0.05 ~ ~

execute if score @s bee matches 1 positioned 40.37 27 -163.66 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 2 positioned 42.45 27 -163.83 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 3 positioned 43.42 27 -165.69 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 4 positioned 39.24 27 -165.73 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 5 positioned 37.67 27 -166.49 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 6 positioned 42.50 27 -162.58 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 10 positioned 40.47 28.5 -162.70 if entity @s[distance=..0.1] run scoreboard players set @s bee 11
execute if score @s bee matches 11 positioned 40.52 28.5 -162.00 if entity @s[distance=..0.1] run scoreboard players set @s bee 12
execute if score @s bee matches 12 positioned 40.47 28.5 -162.70 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/next