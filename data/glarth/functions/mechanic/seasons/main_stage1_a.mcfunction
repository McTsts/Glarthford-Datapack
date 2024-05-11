execute if score rotation winter matches 3 run summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterBorder"],Rotation:[180.0f,0.0f]}
scoreboard players add rotation winter 1
scoreboard players operation rotation winter %= 4 Const
tp @s ~ ~ ~ ~-90 ~
execute if score rotation winter matches 1 at @s run tp @s ^ ^ ^1
execute if score rotation winter matches 3 at @s run tp @s ^ ^ ^1