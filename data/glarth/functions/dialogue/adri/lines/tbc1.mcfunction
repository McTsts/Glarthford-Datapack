tellraw @a ["\n",{"text":"[","color":"dark_gray"},{"translate":"adri","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"adri.tbc1","color":"gray"},"\n"]
execute as @a at @s run playsound adri15 voice @s ~ ~ ~ 1 1 1

tag @s[tag=tbcAllyAdri] add tbc1
scoreboard players set tbcVa tbcStats 60