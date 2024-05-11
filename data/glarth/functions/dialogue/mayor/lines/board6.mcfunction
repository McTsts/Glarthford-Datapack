execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..7] ["",{"text":"[","color":"dark_gray"},{"translate":"mayor","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"mayor.6","color":"gray"}]
execute as @a[distance=..7,tag=!tip43] run function glarth:mechanic/tip/43
stopsound @a[distance=..7] voice
execute unless score @s trigger = @s triggerPrev run playsound mayor8 voice @a[distance=..7] ~ ~ ~ 1 1 1