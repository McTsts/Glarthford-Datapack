stopsound @a voice
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"evil_ts","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"evil_ts.tbc1.a","color":"gray"},"\n"]
execute as @a at @s run playsound minecraft:evil_ts5 voice @s ~ ~ ~ 1 1 1

scoreboard players set @r[gamemode=adventure,scores={playerid=1..3}] tbcQueue 1000

scoreboard players set tbcVa tbcStats 200
tag @e[tag=tbcEvilTs] add 1a