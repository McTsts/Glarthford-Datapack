stopsound @a voice
tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"evil_ts","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"evil_ts.tbc4.b","color":"gray"},"\n"]
execute as @a at @s run playsound minecraft:evil_ts10 voice @s ~ ~ ~ 1 1 1

scoreboard players set @e[tag=tbcEnemy,sort=random,limit=1,tag=!tbcEvilTs] tbcQueue 1000

scoreboard players set tbcVa tbcStats 200
tag @e[tag=tbcEvilTs] add 4b