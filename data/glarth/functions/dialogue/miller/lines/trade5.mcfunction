execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"miller","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"miller.1.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound miller6 voice @a[distance=..5] ~ ~ ~ 1 1 1