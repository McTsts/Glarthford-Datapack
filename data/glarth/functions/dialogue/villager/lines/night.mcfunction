execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"villager","color":"#F4AB72"},{"text":"] ","color":"dark_gray"},{"translate":"villager.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound villager2 voice @a[distance=..5] ~ ~ ~ 1 1 1