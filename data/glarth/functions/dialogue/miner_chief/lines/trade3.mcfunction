execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"miner_chief","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner_chief.3","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound miner_chief25 voice @a[distance=..5] ~ ~ ~ 1 1 1