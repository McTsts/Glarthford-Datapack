execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"adventurer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"adventurer.n.9","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound adventurer7 voice @a[distance=..5] ~ ~ ~ 1 1 1
