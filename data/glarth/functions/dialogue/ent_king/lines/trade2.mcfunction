execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"ent_king","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"ent_king.2","color":"gray","font":"custom:ent"}]
execute unless score @s trigger = @s triggerPrev run playsound entking7 voice @a[distance=..5] ~ ~ ~ 1 1 1