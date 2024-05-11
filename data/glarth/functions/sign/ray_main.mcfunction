execute positioned ~0.9 ~ ~ if block ~ ~ ~ #wall_signs[facing=east] run tag @s add signRayEnd
execute positioned ~-0.9 ~ ~ if block ~ ~ ~ #wall_signs[facing=west] run tag @s add signRayEnd
execute positioned ~ ~ ~0.9 if block ~ ~ ~ #wall_signs[facing=south] run tag @s add signRayEnd
execute positioned ~ ~ ~-0.9 if block ~ ~ ~ #wall_signs[facing=north] run tag @s add signRayEnd
scoreboard players add @s signRay 1
execute if entity @s[tag=signRayEnd] run function glarth:sign/ray_eval
execute if entity @s[tag=!signRayEnd] unless score @s signRay matches 500.. positioned ^ ^ ^0.02 run function glarth:sign/ray_main