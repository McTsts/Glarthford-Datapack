execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"hermit","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"hermit.n.1","color":"gray"}] 
execute unless score @s trigger = @s triggerPrev run playsound hermit2 voice @a[distance=..5] ~ ~ ~ 1 1 1