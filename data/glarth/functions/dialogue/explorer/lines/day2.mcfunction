execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"explorer","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"explorer.d2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound explorer9 voice @a[distance=..5] ~ ~ ~ 1 1 1

