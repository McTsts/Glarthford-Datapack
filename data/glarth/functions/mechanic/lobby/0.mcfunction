execute if score 0 questU matches 1 run clone 214 30 -54 202 15 -66 186 15 -118
execute if score 0 questU matches 0 run clone 214 55 -54 202 40 -66 186 15 -118

execute if score 0 quest matches 1 run clone 189 30 -72 189 30 -72 196 26 -113

scoreboard players operation x quest = 0 quest
scoreboard players operation x questU = 0 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.1"}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'[{"translate":"lobby.quest.tutorial","color":"gold","bold":true,"underlined":true}]'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.0","color":"gold","bold":true,"underlined":true}'}
