execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"carrot","color":"#FF7200"},{"text":"] ","color":"dark_gray"},{"translate":"carrot.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound carrot1 voice @a[distance=..5] ~ ~ ~ 1 1 1