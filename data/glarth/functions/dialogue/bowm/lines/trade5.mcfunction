execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"bowm","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"bowm.4","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound minecraft:bowm5 voice @a[distance=..5] ~ ~ ~ 1 1