execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"monk","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"monk.n.9","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound monk6 voice @a[distance=..5] ~ ~ ~ 1 1 1