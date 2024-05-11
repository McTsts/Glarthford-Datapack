execute store success score success Temp run effect clear @s minecraft:mining_fatigue
execute if score success Temp matches 1 run scoreboard players add @s PoT 100
execute if score success Temp matches 0 if score @s PoTd matches 1.. run scoreboard players add @s PoT 100
execute if score success Temp matches 0 if score @s PoTd matches 1.. run scoreboard players remove @s PoTd 1

execute store success score success Temp run effect clear @s minecraft:luck
execute if score success Temp matches 1 run scoreboard players add @s PoT2 100
execute if score success Temp matches 0 if score @s PoT2d matches 1.. run scoreboard players add @s PoT2 100
execute if score success Temp matches 0 if score @s PoT2d matches 1.. run scoreboard players remove @s PoT2d 1

execute store success score success Temp run effect clear @s minecraft:unluck
execute if score success Temp matches 1 run scoreboard players add @s PoT3 100
execute if score success Temp matches 0 if score @s PoT3d matches 1.. run scoreboard players add @s PoT3 100
execute if score success Temp matches 0 if score @s PoT3d matches 1.. run scoreboard players remove @s PoT3d 1