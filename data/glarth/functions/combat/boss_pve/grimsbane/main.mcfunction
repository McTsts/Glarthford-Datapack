scoreboard players add @e[tag=grimsbane_boss] tsTimer 1
execute as @e[tag=grimsbane_boss,scores={tsTimer=100..}] at @s run function glarth:combat/boss_pve/grimsbane/ability
execute as @e[tag=grimsbane_boss] at @s if block ~ ~ ~ water run tp @s ~ ~0.1 ~
execute as @e[tag=grimsbane_boss] at @s if block ~ ~ ~ water run tp @s ^ ^ ^0.1
execute as @e[tag=grimsbane_boss] at @s if block ~ ~ ~ #all[waterlogged=true] run tp @s ~ ~0.1 ~
execute as @e[tag=grimsbane_boss] at @s if block ~ ~ ~ #all[waterlogged=true] run tp @s ^ ^ ^0.1
