execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..10] ["",{"text":"\n[","color":"dark_gray"},{"translate":"druid","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"druid.r","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound druid6 voice @a[distance=..10] ~ ~ ~ 1 1 1