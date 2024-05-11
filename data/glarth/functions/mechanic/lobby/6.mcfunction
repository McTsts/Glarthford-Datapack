execute if score 6 questU matches 1 run clone 214 30 -6 202 15 -18 186 15 -118
execute if score 6 questU matches 0 run clone 214 55 -6 202 40 -18 186 15 -118

execute if score 6 quest matches 1 run clone 194 30 -72 194 30 -72 194 27 -112

scoreboard players operation x quest = 6 quest
scoreboard players operation x questU = 6 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["VII"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["VIII"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.6","color":"gold","bold":true,"underlined":true}'}