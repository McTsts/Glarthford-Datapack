execute if score 8 questU matches 1 run clone 214 30 10 202 15 -2 186 15 -118
execute if score 8 questU matches 0 run clone 214 55 10 202 40 -2 186 15 -118

execute if score 8 quest matches 1.. run setblock 196 26 -112 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]

scoreboard players operation x quest = 8 quest
scoreboard players operation x questU = 8 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["VI"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["VII"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.8","color":"gold","bold":true,"underlined":true}'}