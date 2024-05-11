stopsound @a voice
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"evil_ts","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"evil_ts.tbc4.c","color":"gray"},"\n"]
execute as @a at @s run playsound minecraft:evil_ts11 voice @s ~ ~ ~ 1 1 1

scoreboard players set tbcVa tbcStats 60
tag @e[tag=tbcEvilTs] add 4c