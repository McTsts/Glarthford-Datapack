execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"thief","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"thief.d2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound thief4 voice @a[distance=..5] ~ ~ ~ 1 1 1