execute unless score @s bee matches 1.. run function glarth:mechanic/animation/bee/next
execute if score @s bee matches 1 at @s facing -18.69 27 -256.45 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 2 at @s facing -15.57 27 -255.31 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 3 at @s facing -17.66 27 -252.60 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 4 at @s facing -12.36 26 -254.71 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 5 at @s facing -10.57 26 -255.35 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 10 at @s facing -13.47 28.5 -257.1 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 11 at @s facing -13.47 28.5 -257.99 run tp @s ^ ^ ^0.05 ~ ~
execute if score @s bee matches 12 at @s facing -13.47 28.5 -257.1 run tp @s ^ ^ ^0.05 ~ ~

execute if score @s bee matches 1 positioned -18.69 27 -256.45 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 2 positioned -15.57 27 -255.31 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 3 positioned -17.66 27 -252.60 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 4 positioned -12.36 26 -254.71 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 5 positioned -10.57 26 -255.35 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/hover
execute if score @s bee matches 10 positioned -13.47 28.5 -257.1 if entity @s[distance=..0.1] run scoreboard players set @s bee 11
execute if score @s bee matches 11 positioned -13.47 28.5 -257.99 if entity @s[distance=..0.1] run scoreboard players set @s bee 12
execute if score @s bee matches 12 positioned -13.47 28.5 -257.1 if entity @s[distance=..0.1] run function glarth:mechanic/animation/bee/next