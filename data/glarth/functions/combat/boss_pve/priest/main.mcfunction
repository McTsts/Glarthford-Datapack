scoreboard players add @e[tag=ender_boss] tsTimer 1
execute as @e[tag=ender_boss,scores={tsTimer=100..}] at @s run function glarth:combat/boss_pve/priest/ability
effect clear @e[tag=ender_boss] wither
execute as @e[x=219,y=18,z=-248,distance=..30] at @s if block ~ ~-1 ~ black_concrete run tp @s 216 29 -248