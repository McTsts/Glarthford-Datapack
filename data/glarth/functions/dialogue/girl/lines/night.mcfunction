execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"girl","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"girl.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound girl2 voice @a[distance=..5] ~ ~ ~ 1 1 1