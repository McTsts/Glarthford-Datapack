execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.quickfast.generic","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound gibbs26 voice @a[distance=..5] ~ ~ ~ 1 1 1