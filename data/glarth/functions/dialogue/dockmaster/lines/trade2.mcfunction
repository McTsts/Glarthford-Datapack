execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"dockmaster","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"dockmaster.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound dockmaster4 voice @a[distance=..5] ~ ~ ~ 1 1 1