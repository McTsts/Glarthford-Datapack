function glarth:mechanic/door/get

execute if score door Temp matches 10 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=north,hinge=right]
execute if score door Temp matches 10 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=north,hinge=right]
execute if score door Temp matches 11 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=north,hinge=left]
execute if score door Temp matches 11 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=north,hinge=left]
execute if score door Temp matches 20 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=south,hinge=right]
execute if score door Temp matches 20 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=south,hinge=right]
execute if score door Temp matches 21 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=south,hinge=left]
execute if score door Temp matches 21 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=south,hinge=left]
execute if score door Temp matches 30 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=east,hinge=right]
execute if score door Temp matches 30 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=east,hinge=right]
execute if score door Temp matches 31 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=east,hinge=left]
execute if score door Temp matches 31 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=east,hinge=left]
execute if score door Temp matches 40 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=west,hinge=right]
execute if score door Temp matches 40 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=west,hinge=right]
execute if score door Temp matches 41 run setblock ~ ~ ~ minecraft:birch_door[half=lower,facing=west,hinge=left]
execute if score door Temp matches 41 run setblock ~ ~1 ~ minecraft:birch_door[half=upper,facing=west,hinge=left]