execute store result score time1 Temp run time query gametime
scoreboard players remove time1 Temp 1
execute store result score time2 Temp run data get block ~ ~ ~ LastExecution
scoreboard players set updateFlower Temp 0
execute if score time2 Temp matches 1.. unless score time1 Temp = time2 Temp run scoreboard players set updateFlower Temp 1
execute if score time2 Temp matches 1.. if score time2 Temp <= taleStart Stats run scoreboard players set updateFlower Temp 1
execute if score updateFlower Temp matches 1 run setblock ~ ~ ~ chorus_flower
execute if score updateFlower Temp matches 1 run setblock ~ ~1 ~ lantern