execute if score 10 questU matches 1 run clone 214 30 26 202 15 14 186 15 -118
execute if score 10 questU matches 0 run clone 214 55 26 202 40 14 186 15 -118

execute if score 10 quest matches 0 run setblock 196 25 -114 minecraft:crimson_slab[type=top,waterlogged=false]
execute if score 10 quest matches 1 run setblock 196 25 -114 minecraft:waxed_cut_copper_slab[type=top,waterlogged=false]

scoreboard players operation x quest = 10 quest
scoreboard players operation x questU = 10 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.4"}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["+"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.10","color":"gold","bold":true,"underlined":true}'}