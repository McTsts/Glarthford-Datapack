execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"evoker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"evoker.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound evoker7 voice @a[distance=..5] ~ ~ ~ 1 1 1