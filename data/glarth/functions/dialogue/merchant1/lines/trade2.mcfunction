execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"merchant1","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"merchant1.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound merchantf4 voice @a[distance=..5] ~ ~ ~ 1 1 1