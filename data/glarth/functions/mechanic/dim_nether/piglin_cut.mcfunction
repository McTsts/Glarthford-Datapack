execute if entity @s[tag=!a] if entity @a[distance=..4,gamemode=adventure] run scoreboard players set @s action 0
execute if entity @s[tag=!a] if entity @a[distance=..4,gamemode=adventure] run tag @s add doA
execute if entity @s[tag=!a] if entity @a[distance=..4,gamemode=adventure] run tag @s add a

execute if entity @s[tag=doA] run scoreboard players add @s action 1
execute if entity @s[tag=doA] if score @s action matches 1..20 run tp @s ~ ~ ~0.25 0 0
execute if entity @s[tag=doA] if score @s action matches 21..24 run tp @s ~ ~0.125 ~0.25 0 0
execute if entity @s[tag=doA] if score @s action matches 25..28 run tp @s ~ ~ ~0.25 0 0
execute if entity @s[tag=doA] if score @s action matches 30 run tag @s remove doA

execute if entity @s[tag=a,tag=!doA,tag=!b] if entity @a[distance=..4,gamemode=adventure] run scoreboard players set @s action 0
execute if entity @s[tag=a,tag=!doA,tag=!b] if entity @a[distance=..4,gamemode=adventure] run tag @s add doB
execute if entity @s[tag=a,tag=!doA,tag=!b] if entity @a[distance=..4,gamemode=adventure] run tag @s add b

execute if entity @s[tag=doB] run scoreboard players add @s action 1
execute if entity @s[tag=doB] if score @s action matches 1..4 run tp @s ~ ~ ~0.25 0 0
execute if entity @s[tag=doB] if score @s action matches 5..8 run tp @s ~ ~-0.125 ~0.25 0 0
execute if entity @s[tag=doB] if score @s action matches 9..24 run tp @s ~ ~ ~0.25 0 0
execute if entity @s[tag=doB] if score @s action matches 25..26 run tp @s ~0.25 ~ ~ -90 0
execute if entity @s[tag=doB] if score @s action matches 27 run data merge entity @s {Motion:[0.2d,0.5d,0.0d]}
execute if entity @s[tag=doB] if score @s action matches 45 run tag @s remove doB

execute if entity @s[tag=b,tag=!doB,tag=!c] if entity @a[distance=..4,gamemode=adventure] run scoreboard players set @s action 0
execute if entity @s[tag=b,tag=!doB,tag=!c] if entity @a[distance=..4,gamemode=adventure] run tag @s add doC
execute if entity @s[tag=b,tag=!doB,tag=!c] if entity @a[distance=..4,gamemode=adventure] run tag @s add c

execute if entity @s[tag=doC] run scoreboard players add @s action 1
execute if entity @s[tag=doC] if score @s action matches 1..4 run tp @s ~0.125 ~ ~0.125 -65 0
execute if entity @s[tag=doC] if score @s action matches 8 run data merge entity @s {Motion:[0.62d,0.52d,0.42d]}
execute if entity @s[tag=doC] if score @s action matches 30 run data merge entity @s {NoGravity:1}
execute if entity @s[tag=doC] if score @s action matches 30..450 run tp @s ~ ~0.05 ~
execute if entity @s[tag=doC] if score @s action matches 451 run data merge entity @s {Motion:[0.52d,0.62d,0.72d],NoGravity:0,Rotation:[-10.0f,0.0f]}
execute if entity @s[tag=doC] if score @s action matches 491 run data merge entity @s {Motion:[0.5d,0.5d,0.0d],Fire:0s,Rotation:[-90.0f,0.0f]}
execute if entity @s[tag=doC] if score @s action matches 510..519 run tp @s ~0.25 ~ ~ -90 0
execute if entity @s[tag=doC] if score @s action matches 520 run data merge entity @s {Motion:[0.4d,0.6d,0.0d]}
execute if entity @s[tag=doC] if score @s action matches 540..570 run tp @s ~0.125 ~ ~-0.125 -135 0
execute if entity @s[tag=doC] if score @s action matches 575 run particle smoke ~ ~ ~ 1 1 1 0.1 100
execute if entity @s[tag=doC] if score @s action matches 575 run tp @s -172.5 57.0 -203.5 -20.0 0.0
execute if entity @s[tag=doC] if score @s action matches 575 run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=475]
execute if entity @s[tag=doC] if score @s action matches 575 run tag @e[tag=piglin2cut] remove cnoc
execute if entity @s[tag=doC] if score @s action matches 575 run tag @e[tag=piglin2cut] add piglin2
execute if entity @s[tag=doC] if score @s action matches 580 run tag @s remove doC