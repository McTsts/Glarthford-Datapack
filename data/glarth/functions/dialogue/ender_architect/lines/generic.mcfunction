execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_architect","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_architect.g","color":"gray","font":"custom:ender"}]
execute unless score @s trigger = @s triggerPrev run playsound ender_architect1 voice @a[distance=..5] ~ ~ ~ 1 1 1