execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"fisher","color":"#00A975"},{"text":"] ","color":"dark_gray"},{"translate":"fisher.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound fisher2 voice @a[distance=..5] ~ ~ ~ 1 1 1