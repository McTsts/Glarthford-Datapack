execute if score 4 questU matches 1 run clone 198 30 -22 186 15 -34 186 15 -118
execute if score 4 questU matches 1 run summon minecraft:end_crystal 192 28 -107 {Invulnerable:1,ShowBottom:0b,Tags:["lobby"]}
execute if score 4 questU matches 0 run clone 198 55 -22 186 40 -34 186 15 -118
execute if score 4 questU matches 0 run function glarth:mechanic/lobby/4_chorus
execute if score 4 questU matches 0 run function glarth:mechanic/lobby/4_chorus
execute if score 4 questU matches 0 run function glarth:mechanic/lobby/4_chorus

execute if score 4 quest matches 1 run clone 195 30 -72 195 30 -72 196 27 -112

scoreboard players operation x quest = 4 quest
scoreboard players operation x questU = 4 questU

execute if score x questU matches 0 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"translate":"lobby.quest.locked.2","with":["IX"]}]}'}
execute if score x questU matches 1 as @e[tag=quest_locked] run data merge entity @s {CustomName:'{"translate":"lobby.quest.unlocked","color":"green","font":"custom:small"}'}

execute if score x questU matches 0 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.g","color":"gold","bold":true,"underlined":true,"with":["X"]}'}
execute if score x questU matches 1 as @e[tag=quest_name] run execute as @e[tag=quest_name] run data merge entity @s {CustomName:'{"translate":"lobby.quest.4","color":"gold","bold":true,"underlined":true}'}