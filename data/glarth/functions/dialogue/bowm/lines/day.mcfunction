execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"bowm","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"bowm.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound minecraft:bowm8 voice @a[distance=..5] ~ ~ ~ 1 1 1