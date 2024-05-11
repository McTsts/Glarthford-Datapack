execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"explorer","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"explorer.9","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound explorer23 voice @a[distance=..5] ~ ~ ~ 1 1 1
