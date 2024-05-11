fill 3 27 -337 1 27 -335 minecraft:iron_trapdoor[half=bottom,facing=north]
fill 1 26 -337 3 26 -335 minecraft:end_gateway{Age:1000L,ExitPortal:{X:4,Y:28,Z:-323}}
scoreboard players set endStarted Stats 1
time set 20000
scoreboard players set barColor Stats 1
scoreboard objectives setdisplay sidebar TimeDim

summon minecraft:lightning_bolt 7 28 -323
summon minecraft:lightning_bolt 0 28 -321
summon minecraft:lightning_bolt 6 29 -326

clear @a firework_rocket 

scoreboard players set @a dimension 1

