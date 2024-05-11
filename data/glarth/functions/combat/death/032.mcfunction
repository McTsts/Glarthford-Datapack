kill @e[tag=charQEp,sort=nearest,limit=2,distance=..2]
execute if score @s evilid matches 1 run tag @p[scores={playerid=1}] remove evilPlayerSpawned
execute if score @s evilid matches 2 run tag @p[scores={playerid=2}] remove evilPlayerSpawned
execute if score @s evilid matches 3 run tag @p[scores={playerid=3}] remove evilPlayerSpawned