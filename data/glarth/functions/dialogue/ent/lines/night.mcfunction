execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ent","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"ent.n","color":"gray","font":"custom:ent"}]
execute unless score @s trigger = @s triggerPrev run playsound ent2 voice @a[distance=..5] ~ ~ ~ 1 1 1