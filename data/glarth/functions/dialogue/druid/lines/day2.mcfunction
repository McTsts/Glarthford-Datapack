execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"druid","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"druid.d2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound druid5 voice @a[distance=..5] ~ ~ ~ 1 1 1