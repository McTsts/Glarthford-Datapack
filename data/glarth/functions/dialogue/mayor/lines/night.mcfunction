execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"mayor","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"mayor.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound mayor2 voice @a[distance=..5] ~ ~ ~ 1 1 1