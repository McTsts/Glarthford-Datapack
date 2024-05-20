data modify storage glarth:main invget.temp2 set from storage glarth:main invget.temp[0]
data remove storage glarth:main invget.temp[0]

scoreboard players set success Temp -1
scoreboard players set success2 Temp -1
execute store success score success Temp run data modify storage glarth:main invget.temp2.id set from storage glarth:main invget.in.id
execute store success score success2 Temp run data modify storage glarth:main invget.temp2.components.minecraft:custom_data.custom set from storage glarth:main invget.in.components.minecraft:custom_data.custom
execute if score success Temp matches 0 if score success2 Temp matches 0 run data modify storage glarth:main invget.out set from storage glarth:main invget.temp2

execute if score success2 Temp matches 1 run scoreboard players set success Temp 1
execute if score success Temp matches 1 if data storage glarth:main invget.temp[0] run function glarth:inventory/get3_recursive
