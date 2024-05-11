scoreboard players set door Temp 0
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=north,hinge=right] run scoreboard players set door Temp 10
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=north,hinge=left] run scoreboard players set door Temp 11
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=south,hinge=right] run scoreboard players set door Temp 20
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=south,hinge=left] run scoreboard players set door Temp 21
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=east,hinge=right] run scoreboard players set door Temp 30
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=east,hinge=left] run scoreboard players set door Temp 31
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=west,hinge=right] run scoreboard players set door Temp 40
execute if block ~ ~ ~ #minecraft:doors[half=lower,facing=west,hinge=left] run scoreboard players set door Temp 41
execute unless block ~ ~1 ~ #minecraft:doors[half=upper] run scoreboard players set door Temp 0
execute if score door Temp matches 1.. run fill ~ ~ ~ ~ ~1 ~ air