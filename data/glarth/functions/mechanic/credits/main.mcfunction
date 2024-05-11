
execute if score timer credits matches 0.. run scoreboard players add timer credits 1
execute if score timer credits matches 1 run summon area_effect_cloud 7 36 -204 {Rotation:[0f,5f],Radius:0.0f,Duration:2147483647,Tags:["creditsPov"]}
execute if score timer credits matches 1 run function glarth:mechanic/credits/frame2
execute if score timer credits matches 1 as @a[gamemode=spectator] store result score @s Success run spectate @e[type=area_effect_cloud,tag=creditsPov,limit=1] @s
execute if score timer credits matches 1.. run title @a[gamemode=spectator] actionbar {"translate":"lobby.credits.info","color":"white","with":[{"keybind":"key.sneak"}]}
execute if score timer credits matches 1.. run bossbar set minecraft:3 players @a[gamemode=spectator]
execute if score timer credits matches 80.. run function glarth:mechanic/credits/move_up

execute if score timer credits matches 5.. unless entity @a[gamemode=spectator] run scoreboard players set timer credits 10000

execute if score timer credits matches 2600.. run tp @a[gamemode=spectator] 167.5 24.0 -116.0 90 0
execute if score timer credits matches 2600.. run gamemode adventure @a[gamemode=spectator]
execute if score timer credits matches 2600.. run scoreboard players set timer credits -1

execute as @a[gamemode=spectator] at @s unless entity @e[tag=creditsPov,distance=..0.01] run tp @s 167.5 24.0 -116.0 90 0
execute as @a[gamemode=spectator] at @s unless entity @e[tag=creditsPov,distance=..0.01] run gamemode adventure @s


