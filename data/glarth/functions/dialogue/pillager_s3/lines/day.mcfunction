execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"pillager_s3","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"pillager_s3.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound minecraft:pillager_s3_1 voice @a[distance=..5] ~ ~ ~ 1 1 1