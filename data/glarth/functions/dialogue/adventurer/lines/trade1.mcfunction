execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"adventurer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"adventurer.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound adventurer3 voice @a[distance=..5] ~ ~ ~ 1 1 1
