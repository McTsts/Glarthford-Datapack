execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"pufferfish_red","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"pufferfish_red.n","color":"gray","font":"custom:pufferfish"}]
execute unless score @s trigger = @s triggerPrev run playsound pufferfish_red2 voice @a[distance=..5] ~ ~ ~ 1 1 1