# 1
execute positioned ^ ^ ^4 unless entity @a[distance=..25] if score @s hscP5 matches 0 unless score @s hscP1 matches 0 run scoreboard players add @s hscP1 1
execute positioned ^ ^ ^4 unless entity @a[distance=..25] if score @s hscP5 matches 1 unless score @s hscP1 matches 0 run scoreboard players remove @s hscP1 1
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP5 matches 0 run scoreboard players add @s hscP1 1
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP5 matches 1 run scoreboard players remove @s hscP1 1
execute positioned ^ ^ ^4 if score @s hscP5 matches 0 if score @s hscP1 matches 10.. run scoreboard players set @s hscP5 1
execute positioned ^ ^ ^4 if score @s hscP5 matches 1 if score @s hscP1 matches ..-40 run scoreboard players set @s hscP5 0
execute store result entity @s Pose.Head[0] float -0.15 run scoreboard players get @s hscP1
# 2
execute positioned ^ ^ ^4 unless entity @a[distance=..25] if score @s hscP3 matches 0 unless score @s hscP2 matches 0 run scoreboard players add @s hscP2 1
execute positioned ^ ^ ^4 unless entity @a[distance=..25] if score @s hscP3 matches 1 unless score @s hscP2 matches 0 run scoreboard players remove @s hscP2 1
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP3 matches 0 run scoreboard players add @s hscP2 1
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP3 matches 1 run scoreboard players remove @s hscP2 1
execute positioned ^ ^ ^4 if score @s hscP3 matches 0 if score @s hscP2 matches 30.. run scoreboard players set @s hscP3 1
execute positioned ^ ^ ^4 if score @s hscP3 matches 1 if score @s hscP2 matches ..-30 run scoreboard players set @s hscP3 0
execute store result entity @s Pose.Head[2] float -0.25 run scoreboard players get @s hscP2
#3 
execute positioned ^ ^ ^4 if entity @a[distance=..25] run scoreboard players add @s hscP4 1
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP4 matches 1..20 at @s run tp @s ~ ~-0.005 ~
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP4 matches 21..40 at @s run tp @s ~ ~0.005 ~
execute positioned ^ ^ ^4 if entity @a[distance=..25] if score @s hscP4 matches 40 run scoreboard players set @s hscP4 0