execute if score 3 questU matches 1 run clone 214 30 -38 202 15 -50 186 15 -118
execute if score 3 questU matches 0 run clone 214 55 -38 202 40 -50 186 15 -118

execute if score 3 quest matches 1 run clone 191 30 -72 191 30 -72 196 26 -112

scoreboard players operation x quest = 3 quest
scoreboard players operation x questU = 3 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["IV"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["V"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.3","color":"gold","bold":true,"underlined":true}'}