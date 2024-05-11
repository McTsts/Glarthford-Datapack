# Execute for every character

scoreboard players operation nextAngle tbcAdjLoc = angle tbcAdjLoc

execute as @e[tag=tbcPlayerAS] run function glarth:combat/action_enemy/helper/adjust_location/calculate
execute as @e[tag=tbcEnemy] run function glarth:combat/action_enemy/helper/adjust_location/calculate
execute as @e[tag=tbcSpike] run function glarth:combat/action_enemy/helper/adjust_location/calculate

scoreboard players operation curAngle tbcAdjLoc = angle tbcAdjLoc

execute positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena3
execute as @e[type=minecraft:wither_skeleton,tag=endArena] store result entity @s Rotation[1] float 1 run scoreboard players get angle tbcAdjLoc