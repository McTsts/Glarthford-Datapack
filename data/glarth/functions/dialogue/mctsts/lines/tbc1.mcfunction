tellraw @a ["\n",{"text":"[","color":"dark_gray"},{"translate":"mctsts","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"mctsts.tbc1","color":"gray"},"\n"]
execute as @a at @s run playsound thomas8 voice @s ~ ~ ~ 1 1 1

scoreboard players set tbcVa tbcStats 60
tag @s[tag=tbcAllyTs] add tbc1