stopsound @a voice
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"evil_ts","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"evil_ts.tbc2.c","color":"gray"},"\n"]
execute as @a at @s run playsound minecraft:evil_ts8 voice @s ~ ~ ~ 1 1 1

scoreboard players set tbcVa tbcStats 120