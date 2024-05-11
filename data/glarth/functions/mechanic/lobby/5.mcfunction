execute if score 5 questU matches 1 run clone 214 30 -22 202 15 -34 186 15 -118
execute if score 5 questU matches 0 run clone 214 55 -22 202 40 -34 186 15 -118

execute if score 5 quest matches 1 run clone 192 30 -72 192 30 -72 196 22 -112

scoreboard players operation x quest = 5 quest
scoreboard players operation x questU = 5 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["V"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["VI"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.5","color":"gold","bold":true,"underlined":true}'}