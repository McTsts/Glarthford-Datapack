execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ghost_queen","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"ghost_queen.d2","color":"gray","font":"custom:ghost"}]
execute unless score @s trigger = @s triggerPrev run playsound queen2 voice @a[distance=..5] ~ ~ ~ 1 1 1