execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"miner_chief","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner_chief.g2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound miner_chief7 voice @a[distance=..5] ~ ~ ~ 1 1 1