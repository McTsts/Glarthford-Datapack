stopsound @s * minecraft:sticks1
stopsound @s * minecraft:sticks2
stopsound @s * minecraft:sticks3
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"mctsts","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"mctsts.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound thomas1 voice @a[distance=..5] ~ ~ ~ 1 1 1