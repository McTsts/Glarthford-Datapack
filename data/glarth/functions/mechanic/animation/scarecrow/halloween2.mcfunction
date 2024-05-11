# 1
execute unless entity @a[distance=..30] if score @s hscP5 matches 0 unless score @s hscP1 matches 0 run scoreboard players add @s hscP1 1
execute unless entity @a[distance=..30] if score @s hscP5 matches 1 unless score @s hscP1 matches 0 run scoreboard players remove @s hscP1 1
execute if entity @a[distance=..30] if score @s hscP5 matches 0 run scoreboard players add @s hscP1 1
execute if entity @a[distance=..30] if score @s hscP5 matches 1 run scoreboard players remove @s hscP1 1
execute if score @s hscP5 matches 0 if score @s hscP1 matches 40.. run scoreboard players set @s hscP5 1
execute if score @s hscP5 matches 1 if score @s hscP1 matches ..-40 run scoreboard players set @s hscP5 0
execute store result entity @s Pose.Head[0] float -0.25 run scoreboard players get @s hscP1
# 2
execute unless entity @a[distance=..30] unless score @s hscP2 matches 0 run scoreboard players add @s hscP2 1
execute if entity @a[distance=..30] run scoreboard players add @s hscP2 1
execute if score @s hscP2 matches 240.. run scoreboard players set @s hscP2 0
execute store result entity @s Rotation[0] float 1.5 run scoreboard players get @s hscP2
#3 
execute if entity @a[distance=..30] run scoreboard players add @s hscP4 1
execute if entity @a[distance=..30] if score @s hscP4 matches 1..30 at @s run tp @s ~ ~-0.005 ~
execute if entity @a[distance=..30] if score @s hscP4 matches 31..60 at @s run tp @s ~ ~0.005 ~
execute if entity @a[distance=..30] if score @s hscP4 matches 60 run scoreboard players set @s hscP4 0