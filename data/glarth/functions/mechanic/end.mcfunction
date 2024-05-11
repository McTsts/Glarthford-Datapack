

scoreboard players set game Stats 0
scoreboard objectives setdisplay sidebar
spawnpoint @a 89 19 -133
gamemode 2 @a[m=3]
tp @a[m=2] 89 19 -133.0
scoreboard players tag @a remove inFight
xp -100l @a
scoreboard players tag @a remove inMaze
scoreboard players tag @a remove hint1
scoreboard players tag @a remove hint2
scoreboard players tag @a remove hint3
scoreboard players tag @a remove hint4
scoreboard players tag @a remove hint5
weather clear
kill @e[type=!Player,tag=!area_main]
clear @a[m=2]
recipe take @a *
fill 10 26 -253 23 26 -243 air 0 replace wheat
fill 10 26 -253 23 26 -243 air 0 replace carrots
fill 10 26 -253 23 26 -243 air 0 replace beetroots
effect @a clear
effect @a 23 999999 120 true
effect @a 11 999999 120 true
function mctsts:mechanic/lobby/setup