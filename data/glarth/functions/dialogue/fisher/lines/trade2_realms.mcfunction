execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"fisher","color":"#00A975"},{"text":"] ","color":"dark_gray"},{"translate":"fisher.1.2.realms","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound fisher6 voice @a[distance=..5] ~ ~ ~ 1 1 1