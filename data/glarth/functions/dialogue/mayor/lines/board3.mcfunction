execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..7] ["",{"text":"[","color":"dark_gray"},{"translate":"mayor","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"mayor.3","color":"gray"}]
stopsound @a[distance=..7] voice
execute unless score @s trigger = @s triggerPrev run playsound mayor5 voice @a[distance=..7] ~ ~ ~ 1 1 1