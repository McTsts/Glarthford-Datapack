execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"worker","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"worker.2","color":"gray"}] 
execute unless score @s trigger = @s triggerPrev run playsound worker4 voice @a[distance=..5] ~ ~ ~ 1 1 1