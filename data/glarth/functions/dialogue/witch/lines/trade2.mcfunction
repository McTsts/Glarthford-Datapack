execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"witch","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"witch.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound witch4 voice @a[distance=..5] ~ ~ ~ 1 1 1