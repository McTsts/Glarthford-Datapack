execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"demon","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"demon.1","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound demon4 voice @a[distance=..5] ~ ~ ~ 1 1 1
