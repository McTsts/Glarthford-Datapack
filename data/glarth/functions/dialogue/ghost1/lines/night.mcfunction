execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ghost1","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"ghost1.n","color":"gray","font":"custom:ghost"}]
execute unless score @s trigger = @s triggerPrev run playsound ghost22 voice @a[distance=..5] ~ ~ ~ 1 1 1