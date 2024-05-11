tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"suso","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"suso.tbc2","color":"gray"},"\n"]
execute as @a at @s run playsound suso13 voice @s ~ ~ ~ 1 1 1
tag @s[tag=tbcAllySuso] add tbc2


scoreboard players set tbcVa tbcStats 60