execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"monk","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"monk.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound monk7 voice @a[distance=..5] ~ ~ ~ 1 1 1