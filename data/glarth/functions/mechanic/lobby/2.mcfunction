execute if score 2 questU matches 1 run clone 198 30 -38 186 15 -50 186 15 -118
execute if score 2 questU matches 0 run clone 198 55 -38 186 40 -50 186 15 -118
execute if score 2 questU matches 0 run setblock 188 25 -116 minecraft:warped_button[face=wall,facing=west,powered=true]
execute if score 2 questU matches 0 run setblock 189 24 -116 minecraft:warped_button[face=wall,facing=west,powered=true]
execute if score 2 questU matches 0 run setblock 188 24 -116 minecraft:warped_button[face=wall,facing=west,powered=true]

execute if score 2 quest matches 1 run clone 193 30 -72 193 30 -72 193 26 -116

scoreboard players operation x quest = 2 quest
scoreboard players operation x questU = 2 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["III"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["IV"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.2","color":"gold","bold":true,"underlined":true}'}