execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"citizen","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"citizen.d.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound citizen1 voice @a[distance=..5] ~ ~ ~ 1 1 1