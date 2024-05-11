execute unless entity @a[scores={lobbySelection=1},gamemode=adventure] as @r[gamemode=adventure] at @s if block ~ 0 ~ stone run function glarth:mechanic/lobby/selection/select
execute if entity @a[scores={lobbySelection=1},gamemode=adventure] as @a[gamemode=adventure] unless score @s lobbySelection matches 1 at @s if block ~ 0 ~ stone run function glarth:mechanic/lobby/selection/kick
execute as @a[scores={lobbySelection=1},gamemode=adventure] at @s unless block ~ 0 ~ stone run function glarth:mechanic/lobby/selection/reset
execute if score active lobbySelection matches 1 unless entity @a[scores={lobbySelection=1},gamemode=adventure] run function glarth:mechanic/lobby/selection/reset
execute if entity @a[scores={lobbySelection=1},gamemode=adventure] run particle minecraft:enchanted_hit 160.0 25.0 -122.5 0.5 0.5 0 0 2
execute if entity @a[scores={lobbySelection=1},gamemode=adventure] run particle minecraft:enchanted_hit 166.0 25.0 -122.5 0.5 0.5 0 0 2

execute if score active lobbySelection matches 1 as @e[tag=charQBx,type=armor_stand] at @s run tp @s ~ ~ ~ ~2 ~
execute if score active lobbySelection matches 1 as @e[tag=charQS,type=armor_stand] at @s run tp @s ~ ~ ~ ~2 ~
execute if score active lobbySelection matches 1 as @e[tag=charQB,type=armor_stand] at @s run data modify entity @e[tag=charQ,distance=..2,sort=random,limit=1,type=armor_stand] Rotation set from entity @s Rotation