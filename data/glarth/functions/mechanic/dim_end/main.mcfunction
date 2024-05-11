# void drop
execute as @a[gamemode=adventure,scores={dimension=1}] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..10] run function glarth:mechanic/quest/end_void

# checkpoints
execute positioned 9 61 -515 if score endCheckpoint Stats matches 0 run effect give @a[gamemode=adventure,distance=..2] minecraft:resistance 2 120 true
execute as @a[gamemode=adventure,scores={dimension=1}] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..10] if score endCheckpoint Stats matches 0 run tp @s 9 62 -515 95 -15

execute positioned -17.0 64 -512.0 if score endCheckpoint Stats matches 1 run effect give @a[gamemode=adventure,distance=..2] minecraft:resistance 2 120 true
execute as @a[gamemode=adventure,scores={dimension=1}] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..10] if score endCheckpoint Stats matches 1 run tp @s -17.0 65 -512.0 90 -20

execute positioned -51.0 77 -582.0 if score endCheckpoint Stats matches 2 run effect give @a[gamemode=adventure,distance=..2] minecraft:resistance 2 120 true
execute as @a[gamemode=adventure,scores={dimension=1}] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..10] if score endCheckpoint Stats matches 2 run tp @s -51.0 78 -582.0 -175 -10

execute positioned -37.0 82 -710.0 if score endCheckpoint Stats matches 3 run effect give @a[gamemode=adventure,distance=..2] minecraft:resistance 2 120 true
execute as @a[gamemode=adventure,scores={dimension=1}] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..10] if score endCheckpoint Stats matches 3 run tp @s -37.0 83 -710.0 170 5


# forcefield
execute positioned -48 86 -632 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=!b] run function glarth:mechanic/dim_end/ep_forcefield

# move
execute positioned -48.0 90.0 -641.0 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=c,tag=!d] run function glarth:mechanic/dim_end/ep_move1a
execute positioned -56 86 -661 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=d,tag=!e] run function glarth:mechanic/dim_end/ep_move2a
execute positioned -55 86 -665 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=d,tag=!e] run function glarth:mechanic/dim_end/ep_move2a
execute positioned -44 82 -680 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=e,tag=!f] run function glarth:mechanic/dim_end/ep_move3a
execute positioned -42 81 -684 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=e,tag=!f] run function glarth:mechanic/dim_end/ep_move3a
execute positioned -47 82 -709 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=f,tag=!g] run function glarth:mechanic/dim_end/ep_move4a
execute positioned -47 82 -711 if entity @a[distance=..5,gamemode=adventure] if entity @e[tag=ender_priest,tag=f,tag=!g] run function glarth:mechanic/dim_end/ep_move4a


# sphere
fill -67 105 -721 -27 87 -761 minecraft:magenta_stained_glass replace minecraft:structure_void
fill -67 86 -721 -27 69 -761 minecraft:magenta_stained_glass replace minecraft:structure_void
fill -67 105 -721 -27 87 -761 minecraft:purple_stained_glass replace minecraft:cave_air
fill -67 86 -721 -27 69 -761 minecraft:purple_stained_glass replace minecraft:cave_air

execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-4 ~-2 ~-2 ~4 ~2 ~2 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-2 ~-4 ~-2 ~2 ~4 ~2 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-2 ~-2 ~-4 ~2 ~2 ~4 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-5 ~-1 ~-1 ~5 ~1 ~1 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-1 ~-5 ~-1 ~1 ~5 ~1 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-1 ~-1 ~-5 ~1 ~1 ~5 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:structure_void replace minecraft:magenta_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-4 ~-2 ~-2 ~4 ~2 ~2 minecraft:cave_air replace minecraft:purple_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-2 ~-4 ~-2 ~2 ~4 ~2 minecraft:cave_air replace minecraft:purple_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-2 ~-2 ~-4 ~2 ~2 ~4 minecraft:cave_air replace minecraft:purple_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-5 ~-1 ~-1 ~5 ~1 ~1 minecraft:cave_air replace minecraft:purple_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-1 ~-5 ~-1 ~1 ~5 ~1 minecraft:cave_air replace minecraft:purple_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-1 ~-1 ~-5 ~1 ~1 ~5 minecraft:cave_air replace minecraft:purple_stained_glass
execute as @a[gamemode=adventure,x=-47,y=80,z=-741,distance=..14] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:cave_air replace minecraft:purple_stained_glass

# updrafts
replaceitem entity @a[tag=upElytraReturn] armor.chest elytra
tag @a remove upElytraReturn
tag @a remove inUpdraft
execute positioned -111 83 -523 run function glarth:mechanic/dim_end/updraft
execute positioned -85 73 -481 run function glarth:mechanic/dim_end/updraft
execute positioned 10 75 -570 run function glarth:mechanic/dim_end/updraft
tag @a[tag=!inUpdraft] remove hasUpLevitation