execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"pillager_advisor3","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"pillager_advisor3.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound minecraft:pillager_advisor3_1 voice @a[distance=..5] ~ ~ ~ 1 1