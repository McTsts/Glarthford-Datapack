execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound miner2 voice @a[distance=..5] ~ ~ ~ 1 1 1