tellraw @a[scores={charType=1}] ["\n",{"text":"[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.2.a","color":"gray","font":"custom:slime"},"\n"]
tellraw @a[scores={charType=2}] ["\n",{"text":"[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.2.b","color":"gray","font":"custom:slime"},"\n"]
tellraw @a[scores={charType=3}] ["\n",{"text":"[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.2.c","color":"gray","font":"custom:slime"},"\n"]
execute if entity @s[tag=!tbcVishnold] as @a at @s run playsound minecraft:vishnold2 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=tbcVishnoldBig] as @a at @s run playsound minecraft:vishnold2 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=tbcVishnoldMedium] as @a at @s run playsound minecraft:vishnold2 voice @s ~ ~ ~ 1 1.1 1
execute if entity @s[tag=tbcVishnoldSmall] as @a at @s run playsound minecraft:vishnold2 voice @s ~ ~ ~ 1 1.2 1
