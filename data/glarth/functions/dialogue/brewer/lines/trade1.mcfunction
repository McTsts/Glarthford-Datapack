execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"brewer","color":"#FF7200"},{"text":"] ","color":"dark_gray"},{"translate":"brewer.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound brewer6 voice @a[distance=..5] ~ ~ ~ 1 1 1