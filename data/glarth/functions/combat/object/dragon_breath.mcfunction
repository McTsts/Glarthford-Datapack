particle minecraft:portal ~ ~ ~ 0.7 0 0.7 1 20
particle minecraft:dragon_breath ~ ~ ~ 0.7 0.3 0.7 0 50
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.3 0.5 0.05 5

execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS1,distance=..1.5] as @a[scores={playerid=1}] run function glarth:combat/effect/dragon_breath
execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS2,distance=..1.5] as @a[scores={playerid=2}] run function glarth:combat/effect/dragon_breath
execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS3,distance=..1.5] as @a[scores={playerid=3}] run function glarth:combat/effect/dragon_breath

