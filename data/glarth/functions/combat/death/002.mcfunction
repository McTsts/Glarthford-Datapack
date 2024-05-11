tag @s add tbcVTemp

execute if entity @s[tag=tbcEnemy1] run function glarth:combat/init_tbc/enemy1
execute if entity @s[tag=tbcEnemy1] as @e[tag=tbcEnemy1] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy1] run function glarth:combat/init_tbc/enemy4
execute if entity @s[tag=tbcEnemy1] as @e[tag=tbcEnemy4] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy1] run function glarth:combat/init_tbc/enemy5
execute if entity @s[tag=tbcEnemy1] as @e[tag=tbcEnemy5] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy1] as @e[tag=tbcEnemy1,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~
execute if entity @s[tag=tbcEnemy1] as @e[tag=tbcEnemy4,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~
execute if entity @s[tag=tbcEnemy1] as @e[tag=tbcEnemy5,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~

execute if entity @s[tag=tbcEnemy2] run function glarth:combat/init_tbc/enemy2
execute if entity @s[tag=tbcEnemy2] as @e[tag=tbcEnemy2] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy2] run function glarth:combat/init_tbc/enemy6
execute if entity @s[tag=tbcEnemy2] as @e[tag=tbcEnemy6] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy2] run function glarth:combat/init_tbc/enemy7
execute if entity @s[tag=tbcEnemy2] as @e[tag=tbcEnemy7] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy2] as @e[tag=tbcEnemy2,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~
execute if entity @s[tag=tbcEnemy2] as @e[tag=tbcEnemy6,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~
execute if entity @s[tag=tbcEnemy2] as @e[tag=tbcEnemy7,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~

execute if entity @s[tag=tbcEnemy3] run function glarth:combat/init_tbc/enemy3
execute if entity @s[tag=tbcEnemy3] as @e[tag=tbcEnemy3] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy3] run function glarth:combat/init_tbc/enemy8
execute if entity @s[tag=tbcEnemy3] as @e[tag=tbcEnemy8] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy3] run function glarth:combat/init_tbc/enemy9
execute if entity @s[tag=tbcEnemy3] as @e[tag=tbcEnemy9] run function glarth:combat/entity/vishnold_small
execute if entity @s[tag=tbcEnemy3] as @e[tag=tbcEnemy3,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~
execute if entity @s[tag=tbcEnemy3] as @e[tag=tbcEnemy8,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~
execute if entity @s[tag=tbcEnemy3] as @e[tag=tbcEnemy9,tag=!tbcVTemp] at @s run tp @s ~ ~-3 ~


execute at @s run particle minecraft:item_slime ~ ~ ~ 1 1 1 1 200

function glarth:dialogue/slime/lines/lose

schedule function glarth:combat/set_loc_all 1t