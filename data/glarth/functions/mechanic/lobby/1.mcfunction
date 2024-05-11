execute if score 1 questU matches 1 run clone 198 30 -54 186 15 -66 186 15 -118
execute if score 1 questU matches 0 run clone 198 55 -54 186 40 -66 186 15 -118

execute if score 1 quest matches 1 run clone 190 30 -72 190 30 -72 195 26 -109

scoreboard players operation x quest = 1 quest
scoreboard players operation x questU = 1 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["I"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["II"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.1","color":"gold","bold":true,"underlined":true}'}