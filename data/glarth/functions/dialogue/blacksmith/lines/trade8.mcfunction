 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.10","color":"gray"}]
 execute unless score @s trigger = @s triggerPrev run playsound blacksmith12 voice @a[distance=..5] ~ ~ ~ 1 1 1