execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"dockmaster","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"dockmaster.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound dockmaster1 voice @a[distance=..5] ~ ~ ~ 1 1 1