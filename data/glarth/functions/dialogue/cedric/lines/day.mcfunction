execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"cedric","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"cedric.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound cedric1 voice @a[distance=..5] ~ ~ ~ 1 1 1