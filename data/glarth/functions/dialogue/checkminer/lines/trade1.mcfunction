execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"checkminer","color":"#00A975"},{"text":"] ","color":"dark_gray"},{"translate":"checkminer.1","color":"gray"}] 
execute unless score @s trigger = @s triggerPrev run playsound lucas3 voice @a[distance=..5] ~ ~ ~ 1 1 1