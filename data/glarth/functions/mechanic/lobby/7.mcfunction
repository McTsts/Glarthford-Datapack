execute if score 7 questU matches 1 run clone 198 30 -6 186 15 -18 186 15 -118
execute if score 7 questU matches 0 run clone 198 55 -6 186 40 -18 186 15 -118

execute if score 7 quest matches 1 run clone 196 30 -72 196 30 -72 195 26 -114

scoreboard players operation x quest = 7 quest
scoreboard players operation x questU = 7 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["VIII"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["IX"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.7","color":"gold","bold":true,"underlined":true}'}