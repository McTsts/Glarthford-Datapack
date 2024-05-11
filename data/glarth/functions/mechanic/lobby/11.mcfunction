execute if score 11 questU matches 1 run clone 198 30 26 186 15 14 186 15 -118
execute if score 11 questU matches 0 run clone 198 55 26 186 40 14 186 15 -118

scoreboard players operation x quest = 11 quest
scoreboard players operation x questU = 11 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["+"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.boss_rush","color":"gold","bold":true,"underlined":true}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.boss_rush","color":"red","bold":true,"underlined":true}'}