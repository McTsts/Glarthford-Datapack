execute as @s[tag=!hasC] at @s run function glarth:mechanic/char/collision/spawn

execute as @s[tag=hasC] run tp @e[type=armor_stand,tag=char_collision,limit=1,sort=nearest] @s
execute as @s[tag=hasC] at @s unless entity @e[type=armor_stand,tag=char_collision,limit=1,sort=nearest,distance=..2] run tag @s remove hasC