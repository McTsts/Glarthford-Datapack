execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"lumberjack","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"lumberjack.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound lumberjack6 voice @a[distance=..5] ~ ~ ~ 1 1 1