execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"diver","color":"aqua"},{"text":"] ","color":"dark_gray"},{"translate":"diver.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound diver2 voice @a[distance=..5] ~ ~ ~ 1 1 1
