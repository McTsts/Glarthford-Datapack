execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"mourner","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"mourner.4","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound mourner8 voice @a[distance=..5] ~ ~ ~ 1 1 1
tag @s add mourner_generic2