execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"sprite","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"sprite.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound sprite1 voice @a[distance=..5] ~ ~ ~ 1 1 1