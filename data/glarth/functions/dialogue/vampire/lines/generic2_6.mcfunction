execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"vampire","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"vampire.g2.6","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound vampire7 voice @a[distance=..5] ~ ~ ~ 1 1 1