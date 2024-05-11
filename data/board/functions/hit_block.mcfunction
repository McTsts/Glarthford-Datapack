#
tag @s add b_kill
execute store result score @s br_ypos run data get entity @s Pos[1] 10000

execute if entity @e[tag=board,tag=lobby] if score @s br_ypos matches 249990..250010 as @e[tag=board_as,limit=1,sort=nearest,distance=..1.05] run tag @s add b_target
execute if entity @e[tag=board,tag=game] if score @s br_ypos matches 269990..270010 as @e[tag=board_as,limit=1,sort=nearest,distance=..1.05] run tag @s add b_target

execute at @e[tag=board_as,limit=1,sort=nearest,tag=b_target] run particle minecraft:crit ~ ~1.1 ~ 0 0 0 0 1 normal @a[scores={b_playing=1}]