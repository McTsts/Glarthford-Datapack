execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"time_traveller","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"time_traveller.n2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound time5 voice @a[distance=..5] ~ ~ ~ 1 1 1