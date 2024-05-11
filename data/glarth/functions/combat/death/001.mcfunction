tag @s add tbcVTemp

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/vishnold_medium

function glarth:combat/init_tbc/enemy2
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/vishnold_medium

function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/vishnold_medium

execute as @e[tag=tbcEnemy,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~

tag @s remove death_002

execute at @s run particle minecraft:item_slime ~ ~ ~ 1 1 1 1 200

playsound minecraft:vishnold4 voice @a ~ ~ ~ 1 1 1

schedule function glarth:combat/set_loc_all 1t