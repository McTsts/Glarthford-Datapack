execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"checkminer","color":"#00A975"},{"text":"] ","color":"dark_gray"},{"translate":"checkminer.g2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound lucas4 voice @a[distance=..5] ~ ~ ~ 1 1 1