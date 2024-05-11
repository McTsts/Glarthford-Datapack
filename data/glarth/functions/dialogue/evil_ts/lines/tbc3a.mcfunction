stopsound @a voice
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"evil_ts","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"evil_ts.tbc3.a","color":"gray"}]
execute as @a at @s run playsound minecraft:evil_ts9 voice @s ~ ~ ~ 1 1 1

scoreboard players set tbcVa tbcStats 140
tag @e[tag=tbcEvilTs] add 3a