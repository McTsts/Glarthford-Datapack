clone 57 19 -172 48 15 -181 45 23 -190
setblock 48 29 -184 fire
setblock 49 30 -185 fire[south=true]
setblock 53 28 -186 fire[east=true]
setblock 52 27 -180 fire
setblock 52 29 -180 fire[east=true]
setblock 51 32 -186 fire[south=true]
setblock 50 31 -185 fire[south=true]
setblock 49 31 -185 fire[south=true]
execute positioned 50 24 -185 run effect give @a[distance=..7] minecraft:instant_damage
execute positioned 50 24 -185 run effect give @e[type=pig,distance=..7] minecraft:instant_damage
execute positioned 50 24 -185 run effect give @e[type=cow,distance=..7] minecraft:instant_damage
execute positioned 50 24 -185 run effect give @e[type=chicken,distance=..7] minecraft:instant_damage