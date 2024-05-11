## empty slots for stream sounds
stopsound @s

## non tbc (all)
execute if score TBC Stats matches 0 run playsound time_to_fight1 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 0 run playsound time_to_fight2 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 0 run playsound time_to_fight3 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 0 run playsound time_to_fight4 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 0 run playsound time_to_fight5 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 0 run playsound time_to_fight6 record @s ~ ~ ~ 1 1 1

## piglin fight
# count piglins
scoreboard players set piglins Temp 0
execute as @e[tag=tbcPiglin,tag=!tbcUnselectable] run scoreboard players add piglins Temp 1 
execute as @e[tag=tbcWither,tag=!tbcUnselectable] run scoreboard players add piglins Temp 1 

# piglin sounds
execute if score TBC Stats matches 1 if score piglins Temp matches 2.. run playsound time_to_fight1 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 1 if entity @e[tag=tbcPiglinArchitect,tag=!tbcUnselectable] run playsound time_to_fight2 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 1 if entity @e[tag=tbcPiglinNormal,tag=!tbcUnselectable] run playsound time_to_fight3 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 1 if entity @e[tag=tbcPiglinWarrior,tag=!tbcUnselectable] run playsound time_to_fight4 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 1 if entity @e[tag=tbcPiglinShaman,tag=!tbcUnselectable] run playsound time_to_fight5 record @s ~ ~ ~ 1 1 1
execute if score TBC Stats matches 1 if score piglins Temp matches 3.. run playsound time_to_fight6 record @s ~ ~ ~ 1 1 1
