execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"illusioner_s","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"illusioner_s.n","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound illusioner_s_2 voice @a[distance=..5] ~ ~ ~ 1 1 1