data modify storage glarth:main invget.temp2 set from storage glarth:main invget.temp[0]
data remove storage glarth:main invget.temp[0]

scoreboard players set success Temp -1
execute store success score success Temp run data modify storage glarth:main invget.temp2.id set from storage glarth:main invget.in.id
execute if score success Temp matches 0 run data modify storage glarth:main invget.out set from storage glarth:main invget.temp2

execute if score success Temp matches 1 if data storage glarth:main invget.temp[0] run function glarth:inventory/get_recursive
