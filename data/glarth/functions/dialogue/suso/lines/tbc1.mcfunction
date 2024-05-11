tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"suso","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"suso.tbc1","color":"gray"},"\n"]
execute as @a at @s run playsound suso12 voice @s ~ ~ ~ 1 1 1
tag @s[tag=tbcAllySuso] add tbc1


scoreboard players set tbcVa tbcStats 100