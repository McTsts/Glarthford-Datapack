tellraw @a ["\n",{"text":"[","color":"dark_gray"},{"translate":"adri","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"adri.tbc2","color":"gray"},"\n"]
execute as @a at @s run playsound adri16 voice @s ~ ~ ~ 1 1 1

tag @s[tag=tbcAllyAdri] add tbc2
scoreboard players set tbcVa tbcStats 60