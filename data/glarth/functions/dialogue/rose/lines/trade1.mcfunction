execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"rose","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"rose.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound rose3 voice @a[distance=..5] ~ ~ ~ 1 1 1