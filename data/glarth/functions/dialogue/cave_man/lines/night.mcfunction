execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"cave_man","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"cave_man.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound caveman2 voice @a[distance=..5] ~ ~ ~ 1 1 1