execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"gunpowder_warden","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"gunpowder_warden.2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound minecraft:gunpowder_warden4 voice @a[distance=..5] ~ ~ ~ 1 1 1