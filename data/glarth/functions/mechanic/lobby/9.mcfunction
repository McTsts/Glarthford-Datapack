execute if score 9 questU matches 1 run clone 198 30 10 186 15 -2 186 15 -118
execute if score 9 questU matches 0 run clone 198 55 10 186 40 -2 186 15 -118
execute if score 9 questU matches 0 run setblock 196 24 -117 minecraft:warped_button[face=ceiling,facing=south,powered=true]

execute if score 9 quest matches 1.. run clone 198 30 -72 198 30 -72 196 26 -112

scoreboard players operation x quest = 9 quest
scoreboard players operation x questU = 9 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["II"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["III"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.9","color":"gold","bold":true,"underlined":true}'}