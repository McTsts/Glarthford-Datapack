execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.d2.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound miner7 voice @a[distance=..5] ~ ~ ~ 1 1 1