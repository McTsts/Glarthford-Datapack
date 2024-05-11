execute if entity @s[tag=!tbcVishnold] run tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.l","color":"gray","font":"custom:slime"}]
execute unless entity @s run tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.l","color":"gray","font":"custom:slime"}]
execute if entity @s[tag=tbcVishnold] run tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.l","color":"gray","font":"custom:slime"},"\n"]
execute unless entity @s as @a at @s run playsound minecraft:vishnold4 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=!tbcVishnold] as @a at @s run playsound minecraft:vishnold4 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=tbcVishnoldBig] as @a at @s run playsound minecraft:vishnold4 voice @s ~ ~ ~ 1 1 1
execute if entity @s[tag=tbcVishnoldMedium] as @a at @s run playsound minecraft:vishnold4 voice @s ~ ~ ~ 1 1.1 1
execute if entity @s[tag=tbcVishnoldSmall] as @a at @s run playsound minecraft:vishnold4 voice @s ~ ~ ~ 1 1.2 1
