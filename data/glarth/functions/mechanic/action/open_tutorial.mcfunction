scoreboard players add @s action 1
execute if score @s action matches 1 at @s run tag @s add cnoc
execute if score @s action matches 1..45 at @s run tp @s ^ ^ ^0.1 ~-1.5 ~
execute if score @s action matches 46..80 at @s run tp @s ^ ^ ^0.1 ~ ~
execute if score @s action matches 80..125 at @s run tp @s ^ ^ ^0.1 ~-1.5 ~
execute if score @s action matches 125..160 at @s run tp @s ^ ^ ^0.1 ~3 ~
execute if score @s action matches 161..200 at @s run tp @s ^ ^ ^0.1 ~-2 ~
execute if score @s action matches 201..215 at @s run tp @s ^ ^ ^0.1 ~2 ~
execute if score @s action matches 216..250 at @s run tp @s ^ ^ ^0.1 ~-2 ~
execute if score @s action matches 251..255 at @s run tp @s ^0.1 ^ ^0.1 ~-2 ~
execute if score @s action matches 256..290 at @s run tp @s ^ ^ ^0.1 ~1 ~
execute if score @s action matches 310 at @s run gamerule doTileDrops false
execute if score @s action matches 310 at @s run fill 107 23 -204 104 20 -206 air destroy
execute if score @s action matches 310 at @s run fill 107 24 -204 105 24 -207 air destroy
execute if score @s action matches 310 at @s run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.3 1
execute if score @s action matches 310 at @s run particle minecraft:explosion 105.00 21.39 -204.32 0.5 2 0.5 0 5
execute if score @s action matches 310 at @s run tag @s add c
execute if score @s action matches 310 at @s run tag @s remove open_tutorial
execute if score @s action matches 310 at @s run tag @s remove cnoc
execute if score @s action matches 310 at @s run summon minecraft:area_effect_cloud 125 19 -213 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG12"],CustomName:'{"translate":"tutorial.12.a","color":"green"}',CustomNameVisible:1}
execute if score @s action matches 310 at @s run summon minecraft:area_effect_cloud 125 18.7 -213 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG12"],CustomName:'{"translate":"tutorial.12.b","color":"green"}',CustomNameVisible:1}
execute if score @s action matches 310 at @s run summon minecraft:area_effect_cloud 125 18.4 -213 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG12"],CustomName:'{"translate":"tutorial.12.c","color":"green"}',CustomNameVisible:1}