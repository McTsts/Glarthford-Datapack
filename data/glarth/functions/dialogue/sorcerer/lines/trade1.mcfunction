 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"sorcerer","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"sorcerer.1","color":"gray"}]
 execute unless score @s trigger = @s triggerPrev run playsound minecraft:sorceress3 voice @a[distance=..5] ~ ~ ~ 1 1