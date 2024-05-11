execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"trader","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"trader.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound trader4 voice @a[distance=..5] ~ ~ ~ 1 1 1
