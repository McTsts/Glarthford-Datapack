execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"bucketm","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"bucketm.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound minecraft:bucketm6 voice @a[distance=..5] ~ ~ ~ 1 1 1