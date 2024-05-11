execute rotated as @s store result score @s Rotation run data get entity @s Rotation[0] 1
execute at @s as @p[distance=..20,gamemode=adventure] rotated as @s store result score @s Rotation run data get entity @s Rotation[0] 1
execute at @s run scoreboard players operation @s Rotation -= @p[distance=..6,gamemode=adventure] Rotation
execute as @s[scores={Rotation=-1000..}] run scoreboard players operation @s Rotation %= 360 Const
execute as @s[scores={Rotation=-1000..}] run scoreboard players remove @s Rotation 180
execute at @s if score @s Rotation matches 1..49 run tp @s ~ ~ ~ ~-0.25 ~
execute at @s if score @s Rotation matches 50..74 run tp @s ~ ~ ~ ~-0.5 ~
execute at @s if score @s Rotation matches 75.. run tp @s ~ ~ ~ ~-1 ~
execute at @s if score @s Rotation matches -49..-2 run tp @s ~ ~ ~ ~0.25 ~
execute at @s if score @s Rotation matches -74..-50 run tp @s ~ ~ ~ ~0.5 ~
execute at @s if score @s Rotation matches ..-75 run tp @s ~ ~ ~ ~1 ~