execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"demon","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"demon.g2","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound demon3 voice @a[distance=..5] ~ ~ ~ 1 1 1
