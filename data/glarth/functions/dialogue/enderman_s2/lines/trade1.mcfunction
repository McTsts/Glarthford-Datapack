tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"enderman_s2","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"enderman_s2.1","color":"gray","font":"custom:ender"}]
execute unless score @s trigger = @s triggerPrev run playsound enderman_s2_2 voice @a[distance=..5] ~ ~ ~ 1 1 1