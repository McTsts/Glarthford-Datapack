execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"mrk","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"mrk.1","color":"gray"}] 
execute unless score @s trigger = @s triggerPrev run playsound konstantin1 voice @a[distance=..5] ~ ~ ~ 1 1 1