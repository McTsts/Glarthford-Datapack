execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"pret_zombie","color":"#4C00A9"},{"text":"] ","color":"dark_gray"},{"translate":"pret_zombie.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound pret_zombie1 voice @a[distance=..5] ~ ~ ~ 1 1 1