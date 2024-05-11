tellraw @a ["\n",{"text":"[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.3","color":"gray","font":"custom:slime"},"\n"]
execute if entity @s[tag=!tbcVishnold] as @a at @s run playsound minecraft:vishnold3 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=tbcVishnoldBig] as @a at @s run playsound minecraft:vishnold3 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=tbcVishnoldMedium] as @a at @s run playsound minecraft:vishnold3 voice @s ~ ~ ~ 1 1.1 1
execute if entity @s[tag=tbcVishnoldSmall] as @a at @s run playsound minecraft:vishnold3 voice @s ~ ~ ~ 1 1.2 1
